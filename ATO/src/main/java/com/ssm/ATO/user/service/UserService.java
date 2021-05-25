package com.ssm.ATO.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.ATO.user.dao.UserDao;
import com.ssm.ATO.user.model.User;

@Service
public class UserService {
	@Autowired
	private UserDao dao;
	
	public int add(User user) {
		return dao.add(user);
	}
	
	public User login(String id, String password) {
		if (dao.existUser(id, password) == 1) {
			return dao.login(id, password);
		} else {
			return null;
		}
	}
	
	public int idChk(String id) {
		return dao.existById(id);
	}
	
	public User getById(String id) {
		return dao.getById(id);
	}
	
	public int update(User user) {
		return dao.update(user);
	}
}
