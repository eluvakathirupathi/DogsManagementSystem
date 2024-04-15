package com.system.DMS.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.system.DMS.models.Dog;

public interface DogRepository extends CrudRepository<Dog, Integer> {
	List<Dog> findByName(String name);
	

}
