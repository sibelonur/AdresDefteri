package com.websystique.springboot.service;


import com.websystique.springboot.model.User;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface UserService {
	
	User findById(Long id);

	User findByName(String name);

	void saveUser(User user);

	void updateUser(User user);

	void deleteUserById(Long id);

	void deleteAllUsers();

	List<User> findAllUsers();

	Page<User> findAllUsers(Pageable page);
	
	boolean isUserExist(User user);
	
}