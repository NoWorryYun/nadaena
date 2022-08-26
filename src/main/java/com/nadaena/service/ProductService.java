package com.nadaena.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.ProductDao;
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
	
	
	
	//리뷰리스트 불러오기
	public List<ProductReviewVo> getReveiwList(int productNo){
		System.out.println(" ProductService > getReviewList");
		
		return productDao.getReviewList(productNo);
	}
}
