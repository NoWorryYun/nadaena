package com.nadaena.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.nadaena.dao.UserDao;
import com.nadaena.vo.UserVo;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	//가입
	public int join(UserVo userVo) {
		System.out.println("user join ser");

		int userNo = userDao.insert(userVo);

		return userNo;
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
	
	public UserVo findId(UserVo userVo) {
		return userDao.findId(userVo);
	}
	public int findIdCheck(String email)throws Exception{
		return userDao.findIdCheck(email);
	}
	public UserVo findPw(UserVo userVo) {
		return userDao.findPw(userVo);
	}
	
	//
	public int emailCheck(String email) {
		
		int echk = userDao.emailCheck(email);
		
		return echk;
	}
}