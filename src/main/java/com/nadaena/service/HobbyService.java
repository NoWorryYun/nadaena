package com.nadaena.service;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.HobbyDao;
import com.nadaena.dao.UserDao;
import com.nadaena.vo.HobbyVo;
import com.nadaena.vo.InterestVo;

@Service
public class HobbyService {
	@Autowired
	private HobbyDao hobbyDao;
	@Autowired
	private UserDao userDao; 
	//관심분야 저장
	public int insert(String hobbyTemp, int userNo){
		System.out.println("hobby insert dao");
		int count=0;
		List<InterestVo> hobby_list = hobbyDao.hobbyList();
		Iterator<InterestVo> it = hobby_list.iterator();
		while(it.hasNext()) {
			InterestVo Temp = it.next();
			if(hobbyTemp.contains( Temp.getInterestName() )) {
				HobbyVo hTemp  = new HobbyVo();
				hTemp.setUserNo(userNo);
				hTemp.setInterestNo(  Temp.getInterestNo()  );
				count = hobbyDao.insert(hTemp) ;
			}
		}
		return count;
	}
	 
	//관심분야 수정
	public int update(InterestVo interestVo ,int userNo){
		System.out.println("hobby update dao");
		int count=0;
		
		hobbyDao.delete(userNo);
			String hobbyTemp = interestVo.getInterestName();

			List<InterestVo> hobby_list = hobbyDao.hobbyList();
			Iterator<InterestVo> it = hobby_list.iterator();
			while(it.hasNext()) {
				InterestVo Temp = it.next();
				if(hobbyTemp.contains( Temp.getInterestName() )) {
					HobbyVo hTemp  = new HobbyVo();
					hTemp.setUserNo(userNo);
					hTemp.setInterestNo(  Temp.getInterestNo()  );
					count = hobbyDao.insert(hTemp) ;
				}
			}
		return count;
	}
	
	
	//관심문야  불러오기
	public String selectinterest(int userNo) {
		
		System.out.println("ser" + userNo);
	
	   List<HobbyVo> myhobby = hobbyDao.myhobby(userNo);
		List<InterestVo> hobby_list = hobbyDao.hobbyList();
		Map<Integer, String> hTemp = new HashMap<>();
		Iterator<InterestVo> it = hobby_list.iterator();
		while(it.hasNext()) {
			InterestVo Temp = it.next();
			hTemp.put(   Temp.getInterestNo()   ,   Temp.getInterestName()    );
		}
		
		Iterator<HobbyVo>	ith = myhobby.iterator();
		String interestName="";
		while(ith.hasNext()) {
			int no =ith.next().getInterestNo();
			interestName += " "+hTemp.get(no);
		}    
		return interestName;
	}
}
