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
		//로그인
		public UserVo loginUser(UserVo userVo) {
			System.out.println("userDao user");

			UserVo authUser = sqlSession.selectOne("users.selectUser", userVo);

			System.out.println("유저다오 " + authUser);

			return authUser;
		}
		//수정 번호 가져옴
		public UserVo selectmodify(int no) {

			System.out.println("dao modify select");

			return sqlSession.selectOne("user.selectUserByNo", no);

		}
		
		//수정
		public int updateUser(UserVo userVo) {
			System.out.println("doa update");

			return sqlSession.update("user.updateUser", userVo);
		}
}