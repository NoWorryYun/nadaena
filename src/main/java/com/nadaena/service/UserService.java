package com.nadaena.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.UserDao;
import com.nadaena.vo.UserVo;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	//가입
	public int join(UserVo userVo) {
		System.out.println("user join ser");

		int count = userDao.insert(userVo);

		return count;
	}
	//로그인번호
	public UserVo getUser(UserVo userVo) {
		System.out.println("user get ser");

		UserVo authUser = userDao.loginUser(userVo);

		return authUser;
	}
	//수정번호
	public UserVo getUserInfo(int userNo) {

		System.out.println("info");

		UserVo userVo = userDao.selectmodify(userNo);

		return userVo;

	}
	//수정
	public int modifyUser(UserVo userVo) {
		System.out.println("modify user");

		int count = userDao.updateUser(userVo);
		return count;
	}
}