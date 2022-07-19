package com.carlos.scarystories.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.carlos.scarystories.models.Story;
import com.carlos.scarystories.models.User;
import com.carlos.scarystories.services.StoryService;
import com.carlos.scarystories.services.UserService;

@Controller
public class StoryController {

	@Autowired 
	private UserService userServ;
	
	@Autowired
	private StoryService storyServ;
	
	@GetMapping("/home")
	public String home(Model model, HttpSession session) {
		if(session.getAttribute("loggedInUser") == null) {
			return "redirect:logout";
		} else {
			Long userId = (Long) session.getAttribute("loggedInUser");
			model.addAttribute("user", userServ.findById(userId));
			return "home.jsp";
		}
	}
	
	//Get all stories
	@GetMapping("/stories")
	public String stories(HttpSession session, Model model) {
		if(session.getAttribute("loggedInUser") == null) {
			return "redirect:/logout";
		} else {
			Long userId = (Long) session.getAttribute("loggedInUser");
			model.addAttribute("user", userServ.findById(userId));
			model.addAttribute("stories", storyServ.getAllStories());
			return "allStories.jsp";
		}
	}
	
	//Get one story
			@GetMapping("/story/{id}")
			public String story(@PathVariable Long id, Model model, HttpSession session) {
				if(session.getAttribute("loggedInUser") == null) {
					return "redirect:/logout";
				} else {
					Story viewStory = storyServ.findStoryById(id);
					model.addAttribute("story", viewStory);
					return "story.jsp";
				}
			}
	
	//create new stories
		@GetMapping("/stories/new")
		public String newStory(@ModelAttribute("story") Story story, Model model, String url, HttpSession session) {
		    
			if(session.getAttribute("loggedInUser") == null) {
				return "redirect:/logout";
			}
			
		    User user = userServ.findById((Long)session.getAttribute("loggedInUser"));
		    
			model.addAttribute("user", user);
		    
		    return "newStory.jsp";
		}
		
		@PostMapping("/stories/new")
		public String index(@Valid @ModelAttribute("story") Story story, BindingResult result, HttpSession session) {
			
			if(result.hasErrors()) {
				return "newStory.jsp";
			}
			
			else {
				User user = userServ.findById((Long)session.getAttribute("loggedInUser"));
				story.setUser(user);

				storyServ.createStory(story);
				userServ.updateUser(user);
				return "redirect:/home";
			}
		}
		
		
		//Edit Story
		@GetMapping("/stories/edit/{id}")
		public String editStory(@PathVariable("id") Long id, Model model, HttpSession session) {
			if(session.getAttribute("loggedInUser") == null) {
				return "redirect:/logout";
			} else {
				Story story = storyServ.findStoryById(id);
				model.addAttribute("story", story);
				return "editStory.jsp";
			}
			
		}
		
		@PutMapping("/stories/edit/{id}")
		public String update(@Valid @ModelAttribute("story") Story story, BindingResult result, HttpSession session) {
			if(session.getAttribute("loggedInUser") == null) {
				return "redirect:/logout";
			}
			if (result.hasErrors()) {
				return "editStory.jsp";
			} else {
				User user = userServ.findById((Long)session.getAttribute("loggedInUser"));
				story.setUser(user);
		        storyServ.updateStory(story);
		        return "redirect:/home";
			}
		}
		
		
	
		//Delete Story
		@RequestMapping("/stories/delete/{id}")
		public String deleteStory(@PathVariable("id") Long id, HttpSession session) {
			if(session.getAttribute("loggedInUser") == null) {
				return "redirect:/logout";
			} else {
				storyServ.deleteStory(storyServ.findStoryById(id));
				return "redirect: /user/" + session.getAttribute("loggedInUser");
			}
			
		}
}
