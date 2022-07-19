package com.carlos.scarystories.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.carlos.scarystories.models.Story;

@Repository
public interface StoryRepository extends CrudRepository<Story, Long> {
	
	List<Story> findAll();	
}
