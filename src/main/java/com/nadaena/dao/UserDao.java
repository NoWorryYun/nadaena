package com.nadaena.dao;

import java.util.List;

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
			
			if( sqlSession.insert("users.insertUser", userVo) ==1 ) {
				UserVo temp = sqlSession.selectOne("users.selectUser", userVo);
				return temp.getUserNo();
			}
			return 0;
		}
		//로그인
		public UserVo loginUser(UserVo userVo) {
			System.out.println("userDao user");

			UserVo authUser = sqlSession.selectOne("users.selectUser", userVo);

			System.out.println("유저다오 " + authUser);

			return authUser;
		}
		//수정 번호 가져옴
		public UserVo selectmodify(int userNo) {

			System.out.println("dao modify select");

			return sqlSession.selectOne("users.selectUserByNo", userNo);

		}
		
		//수정
		public int updateUser(UserVo userVo) {
			System.out.println("doa update");

			return sqlSession.update("users.updateUser", userVo);
		}
		
		
		// max 유저넘버 x
		public  int maxNo() {
			int max=0;
			max=  sqlSession.selectOne("users.selectUserByNo", 0);
			return max;
		}
		
		public UserVo findId(UserVo userVo) {
			System.out.println("아이디 찾기");
			return sqlSession.selectOne("users.findId", userVo);
		}
		
		public int findIdCheck(String email)throws Exception{
			return sqlSession.selectOne("users.findIdCheck", email);
		}
		public UserVo findPw(UserVo userVo) {
			System.out.println("비번 찾기");
			return sqlSession.selectOne("users.findPw", userVo);
		}
}