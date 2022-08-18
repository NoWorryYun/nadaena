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

}
