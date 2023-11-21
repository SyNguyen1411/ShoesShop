package edu.poly.testadmin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testadmin {
	@RequestMapping("/homee")
	public String index1() {
		return "admin/home";
	}

	@RequestMapping("lgoxn1")
	public String log() {
		return "user/login";
	}
}
