package com.nadaena.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	
	
}
