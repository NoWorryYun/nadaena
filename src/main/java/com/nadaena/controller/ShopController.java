package com.nadaena.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShopController {
	
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

	
	
	@RequestMapping(value="shop/order")
	public String order() {
		System.out.println(" ShopCtrl > order");
		
		return "shop/order";
	}
}
