package com.nadaena.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.UserDao;
import com.nadaena.vo.UserVo;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;

	public int join(UserVo userVo) {
		System.out.println("user join ser");

		int count = userDao.insert(userVo);

		return count;
	}
	
	public UserVo getUser(UserVo userVo) {
		System.out.println("user get ser");

		UserVo authUser = userDao.selectUser(userVo);

		return authUser;
	}
}