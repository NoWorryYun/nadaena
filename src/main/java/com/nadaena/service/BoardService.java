package com.nadaena.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.BoardDao;
import com.nadaena.vo.BoardVo;

@Service
public class BoardService {

	@Autowired
	BoardDao boardDao;	
	
	public int write(BoardVo boardVo) {
		
		return boardDao.write(boardVo);
		
	}
}
