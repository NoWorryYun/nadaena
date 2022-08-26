package com.nadaena.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nadaena.service.ProductService;
import com.nadaena.vo.OrderVo;
import com.nadaena.vo.UserVo;

@Controller
public class ShopController {
	
	@Autowired
	ProductService productService;
	
	@RequestMapping(value="shop/main")
	public String main() {
		System.out.println(" ShopCtrl > main");
		
		return "shop/main";
	}
	
	@RequestMapping(value="shop/main2")
	public String main2() {
		System.out.println(" ShopCtrl > main");
		
		return "shop/main2";
	}
	
	
	@RequestMapping(value="shop/product")
	public String product() {
		System.out.println(" ShopCtrl > product");
		
		return "shop/product";
	}

	@RequestMapping(value="shop/mypage")
	public String mypage() {
		System.out.println(" ShopCtrl > mypage");
		
		return "shop/mypage";
	}
	
	@RequestMapping(value="shop/mypage2")
	public String mypage2(Model model, HttpSession session) {
		System.out.println(" ShopCtrl > orderList");
		
		
//		UserVo authUser = (UserVo)session.getAttribute("authUser");
//		int userNo = authUser.getUserNo();
//		System.out.println("authUser: " + userNo);
		
		int userNo = 2;
		
		List<OrderVo> orderList = productService.getOrderList(userNo);
		System.out.println(orderList);
		
		model.addAttribute("orderList", orderList);
		
		return "shop/orderList";
	}


	
	@RequestMapping(value="shop/order")
	public String order() {
		System.out.println(" ShopCtrl > order");
		
		return "shop/order";
	}
	
	
	
	
}
