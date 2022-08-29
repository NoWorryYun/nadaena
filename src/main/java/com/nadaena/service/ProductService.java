package com.nadaena.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.ProductDao;
import com.nadaena.vo.OrderVo;
import com.nadaena.vo.ProductReviewVo;
import com.nadaena.vo.ProductVo;

@Service
public class ProductService {
	
	@Autowired
	ProductDao productDao;
	
	public List<ProductVo> getProductList(int cate) {
		System.out.println("Service입장");
		
		return productDao.getProductList(cate);
	}
	
	
	//상품정보 가져오기
	public ProductVo getProduct(int productNo) {
		System.out.println(" ProductService > getProduct");
		
		
		return productDao.getProduct(productNo);
	}
	
	//옵션정보 불러오기
	public List<ProductVo> getOption(int productNo) {
		System.out.println(" ProductService > getOption");
		
		return productDao.getOption(productNo);
	}
	

	//selected 옵션가격 가져오기
	public int getOptionPrice(int optionNo) {
		System.out.println(" ProductService > getOptionPrice");
		
		return productDao.getOptionPrice(optionNo);
	}
	
	
	//리뷰리스트 불러오기
	public List<ProductReviewVo> getReveiwList(int productNo){
		System.out.println(" ProductService > getReviewList");
		
		return productDao.getReviewList(productNo);
	}
	
	
	//구매내역리스트 불러오기
	public List<OrderVo> getOrderList(int userNo){
		System.out.println(" ProductService > getOrderList");
		
		return productDao.getOrderList(userNo);
	}

	//주문페이지
	public ProductVo orderForm(int productNo) {
		System.out.println(" ProductService > orderForm");
		
		return productDao.orderForm(productNo);
	}
	
	//주문페이지 옵션
	public ProductVo orderFormOption(int optionNo) {
		System.out.println(" ProductService > orderFormOption");
		
		return productDao.orderFormOption(optionNo);
	}
	
}
