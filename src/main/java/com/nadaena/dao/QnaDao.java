package com.nadaena.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nadaena.vo.QnaVo;

@Repository
public class QnaDao {
	
	@Autowired
	SqlSession sqlSession;
	
	//QNA불러오기
	public List<QnaVo> getQnaList(int productNo) {
		System.out.println(" QnaDao > getQnaList");
		
		return sqlSession.selectList("product.getQnaList", productNo);
	}

	
	//QNA작성하기
	public int qnaAdd(QnaVo qnaVo) {
		System.out.println(" QnaDao > qnaAdd");
	
		return sqlSession.insert("product.qnaInsert", qnaVo);	
	}
	
	
	//QNA답변하기
	public int replyAdd(QnaVo qnaVo) {
		System.out.println(" QnaDao > replyAdd");
		
		return sqlSession.update("product.replyInsert", qnaVo);
	}
}
