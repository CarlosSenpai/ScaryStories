package com.carlos.scarystories.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.carlos.scarystories.models.Story;
import com.carlos.scarystories.repositories.StoryRepository;

@Service
public class StoryService {
	
	@Autowired
	private StoryRepository storyRepo;
	
	public List<Story> getAllStories() {
		return storyRepo.findAll();
	}
	
	public Story findStoryById(Long id) {
		Story story = storyRepo.findById(id).orElse(null);
		return story;
	}
	
	//New story
	public Story createStory(Story story) {
		return storyRepo.save(story);
	}

	public Story updateStory(Story story) {
		return storyRepo.save(story);
	}
	
	public void deleteStory(Story story) {
		storyRepo.delete(story);
	}

}
