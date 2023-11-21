package edu.poly.test_jsp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testjsp {
	
	@RequestMapping("/indexn")
	public String index1() {
		return "user/index";
	}
	@RequestMapping("lgoxn")
	public String log() {
		return "user/login";
	}
	@RequestMapping("dk")
	public String dk() {
		return "404";
	}
	
	@RequestMapping("carttt")
	public String cartq() {
		return "user/my_cart";
	}
	
	
	@RequestMapping("checkoutthantoan")
	public String thanhtoan() {
		return "user/checkout_thanhtoan";
	}
	@RequestMapping("myac")
	public String myac() {
		return "user/my_account";
	}
	
	@RequestMapping("cont")
	public String cont() {
		return "user/contact";
	}
	@RequestMapping("shop1")
	public String sho() {
		return "user/sanpham";
	}
	@RequestMapping("ct")
	public String ct() {
		return "admin/adminSp";
	}
	
	@RequestMapping("spyt")
	public String spyt() {
		return "user/sp_yeuthich";
	}
}
