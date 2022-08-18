package com.nadaena.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nadaena.dao.ProductDao;
import com.nadaena.vo.ProductVo;

@Service
public class ProductService {
	
	@Autowired
	ProductDao productDao;
	
	public List<ProductVo> getProductList(int cate) {
		System.out.println("Service입장");
		
		return productDao.getProductList(cate);
	}
}
