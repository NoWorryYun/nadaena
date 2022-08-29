package com.nadaena.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nadaena.vo.OrderVo;
import com.nadaena.vo.ProductReviewVo;
import com.nadaena.vo.ProductVo;

@Repository
public class ProductDao {
	
	
	@Autowired
	SqlSession sqlSession;
	
	
	public List<ProductVo> getProductList(int cate) {
		System.out.println("Dao입장");
		
		List<ProductVo> productList = sqlSession.selectList("product.getProductList", cate);
		return productList;
	}

	//상품정보 불러오기
	public ProductVo getProduct(int productNo) {
		System.out.println(" ProductDao > getProduct");
		
		return sqlSession.selectOne("product.getProduct", productNo);
	}
	
	//옵션정보 불러오기
	public List<ProductVo> getOption(int productNo) {
		System.out.println(" ProductDao > getOption");
		
		return sqlSession.selectList("product.getOption", productNo);
	}
	
	//selected 옵션가격 가져오기
	public int getOptionPrice(int optionNo) {
		System.out.println(" ProductDao > getOptionPrice");
		
		return sqlSession.selectOne("product.getOptionPrice", optionNo);
	}
	
	//리뷰리스트 불러오기
	public List<ProductReviewVo> getReviewList(int productNo){
		System.out.println(" ProductDao > getReviewList");
		
		return sqlSession.selectList("product.getReviewList", productNo);
	}
	
	
	
	//구매내역리스트 불러오기
	public List<OrderVo> getOrderList(int userNo){
		System.out.println(" ProductDao > getOrderList");
		
		return sqlSession.selectList("product.getOrderList", userNo);
	}
	
	//주문페이지 상품정보
	public ProductVo orderForm(int productNo) {
		System.out.println(" ProductDao > orderForm");
		
		return sqlSession.selectOne("product.orderForm", productNo);
	}
	//주문페이지 옵션정보
	public ProductVo orderFormOption(int optionNo) {
		System.out.println(" ProductDao > orderFormOption");
		
		return sqlSession.selectOne("product.orderFormOption", optionNo);
	}
	
}
