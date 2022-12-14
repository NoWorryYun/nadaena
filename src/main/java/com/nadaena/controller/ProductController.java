
package com.nadaena.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.nadaena.service.ProductService;
import com.nadaena.service.QnaService;
import com.nadaena.vo.ProductReviewVo;
import com.nadaena.vo.ProductVo;
import com.nadaena.vo.QnaVo;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	@Autowired
	QnaService qnaService;
	
	/* 전체상품리스트, 상품몰메인 */
	@RequestMapping(value="shop")
	public String List(@RequestParam(value = "cate", required = false, defaultValue = "1")int cate, Model model) {
		System.out.println("shop페이지");
		
		//리스트 가져오기
		List<ProductVo> productList = productService.getProductList(cate);
		System.out.println("productList: " + productList);
		
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
	public String product(@PathVariable("productNo")int productNo, Model model) {
		System.out.println("shop/product/"+productNo);
		
		//상품정보 가져오기
		ProductVo productDetail = productService.getProduct(productNo);
		model.addAttribute("productDetail", productDetail);
		System.out.println("productDetail: " + productDetail);
		
		//옵션정보 가져오기
		List<ProductVo> optionList = productService.getOption(productNo);
		model.addAttribute("optionList", optionList);
		
		
		//QNA리스트 가져오기
		List<QnaVo> qnaList = qnaService.getQnaList(productNo);
		model.addAttribute("qnaList", qnaList);
		
		//리뷰리스트 가져오기
		List<ProductReviewVo> reviewList = productService.getReveiwList(productNo);
		System.out.println(reviewList);
		model.addAttribute("reviewList", reviewList);
		
		return "shop/productJSP";
	}
	
	/* selected 옵션가격 가져오기 */
	@ResponseBody
	@RequestMapping(value="shop/product/getOptionPrice")
	public int getOptionPrice(@RequestBody int optionNo) {
		System.out.println(" productCtrl > getOptionPrice");
		
		int optionPrice = productService.getOptionPrice(optionNo);
		System.out.println("getOptionPrice = " + optionPrice);
		
		return optionPrice;
	}
	
	
	
	/* QNA 등록하기 */
	@RequestMapping(value="shop/product/qnaAdd")
	public String qnaAdd(@ModelAttribute QnaVo qnaVo) {
		System.out.println(" shop>qnaAdd");
		
		qnaService.qnaAdd(qnaVo);
		
		return "";
	}
	
	/* QNA 답변등록하기 */
	@RequestMapping(value="shop/product/replyAdd")
	public String replyAdd(@ModelAttribute QnaVo qnaVo) {
		System.out.println(" shop > replyAdd");
		
		qnaService.replyAdd(qnaVo);
		
		return "";
	}
	

	
	/* 리뷰 불러오기 */
	
	public String reviewList() {
		System.out.println(" shop >reviewList");
		
		return "";
	}
	
	
	
	
}
