package com.nadaena.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nadaena.vo.UserVo;

@Repository
public class UserDao {

	@Autowired
	private SqlSession sqlSession;
	
	//회원가입
		public int insert(UserVo userVo) {
			System.out.println("userDao insert");

			int count = sqlSession.insert("users.insertUser", userVo);
			return count;
		}
}