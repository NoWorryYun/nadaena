package com.nadaena.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.QnaDao;
import com.nadaena.vo.QnaVo;

@Service
public class QnaService {
	
	@Autowired
	QnaDao qnaDao;
	
	public List<QnaVo> getQnaList(int productNo) {
		System.out.println(" QnaService > getQnaList");
		
		return qnaDao.getQnaList(productNo);
	}

	
	
	//QNA작성하기
	public int qnaAdd(QnaVo qnaVo) {
		System.out.println(" QnaService > qnaAdd");
	
		return qnaDao.qnaAdd(qnaVo);	
	}
	
	//QNA답변하기
	public int replyAdd(QnaVo qnaVo) {
		System.out.println(" QnaService > replyAdd");
		
		return qnaDao.replyAdd(qnaVo);
	}
		
		
		
	
}
