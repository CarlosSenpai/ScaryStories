package com.carlos.scarystories.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.carlos.scarystories.models.Story;
import com.carlos.scarystories.models.User;
import com.carlos.scarystories.services.StoryService;
import com.carlos.scarystories.services.UserService;

@Controller
public class ProfileController {

	@Autowired
	private UserService userServ;
	
	@Autowired 
	private StoryService storyServ;
	
	@GetMapping("/user/{id}")
	public String getUser(@PathVariable("id") Long id, Model model, HttpSession session, Story story) {
		
		if(session.getAttribute("loggedInUser") == null) {
			return "redirect: /logout";
		} else if(session.getAttribute("loggedInUser")==id) {
			User userInfo = userServ.findById(id);
			model.addAttribute("userInfo", userInfo);
			model.addAttribute("stories", storyServ.getAllStories());
			return "userPage.jsp";
		} else {
			return "redirect:/logout";
		}
	}
}
