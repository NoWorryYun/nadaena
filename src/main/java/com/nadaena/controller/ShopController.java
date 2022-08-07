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
	
	@RequestMapping(value="shop/product")
	public String product() {
		System.out.println(" ShopCtrl > product");
		
		return "shop/product";
	}

}
