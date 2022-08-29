package com.nadaena.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nadaena.service.ProductService;
import com.nadaena.vo.OrderVo;
import com.nadaena.vo.ProductVo;
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

	@RequestMapping(value="shop/mypage2")
	public String mypage2() {
		System.out.println(" ShopCtrl > mypage");
		
		return "shop/mypage";
	}
	
	@RequestMapping(value="shop/mypage")
	public String mypage(Model model, HttpSession session) {
		System.out.println(" ShopCtrl > orderList");

		UserVo authUser = (UserVo)session.getAttribute("authUser");
		
		if(authUser == null) {
			//로그인 안되어있을 때

			
		}else if(authUser != null) {
			//로그인 되어있을 때
			
			int userNo = authUser.getUserNo();

			List<OrderVo> orderList = productService.getOrderList(userNo);
			model.addAttribute("orderList", orderList);

		}

		return "shop/orderList";
	}


	
	@RequestMapping(value="shop/orderForm")
	public String order(@RequestParam("productNo")int productNo
			,@RequestParam("options")int optionNo
			, Model model) {
		System.out.println(" ShopCtrl > order");
		
		ProductVo orderProduct = productService.orderForm(productNo);
		model.addAttribute("product", orderProduct);
		
		ProductVo orderOption = productService.orderFormOption(optionNo);
		System.out.println(orderOption);
		
		
		return "shop/order";
	}
	
	
	
	
}
