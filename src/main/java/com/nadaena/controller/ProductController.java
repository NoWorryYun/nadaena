
package com.nadaena.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nadaena.service.ProductService;
import com.nadaena.vo.ProductVo;

@Controller
public class ProductController {
	
	
	@Autowired
	ProductService productService;
	
	/* 전체상품리스트, 상품몰메인 */
	@RequestMapping(value="shop")
	public String List(@RequestParam(value = "cate", required = false, defaultValue = "1")int cate, Model model) {
		System.out.println("shop페이지");
		
		//리스트 가져오기
		List<ProductVo> productList = productService.getProductList(cate);
		
		//리스트 jsp로 보내기
		model.addAttribute("productList", productList);
		
		return "shop/mainJSP";
	}
	
	
	/* 상품등록폼 */
	@RequestMapping(value="shop/uploadForm")
	public String uploadForm() {
		System.out.println("uploadForm");
		
		return "shop/uploadForm";
	}
	
	
	/* 상품페이지 */
	@RequestMapping(value="shop/product/{productNo}")
	public String product(@PathVariable("productNo")String productNo, Model model) {
		System.out.println("shop/product/"+productNo);
		
		
		
		return "shop/productJSP";
	}
	

}
