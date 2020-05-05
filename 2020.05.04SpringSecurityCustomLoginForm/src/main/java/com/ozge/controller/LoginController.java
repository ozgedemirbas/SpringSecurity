package com.ozge.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

	@GetMapping("/loginForm") //gösterim için kullanacağım bilgi gireceğim.. 
	public String showLoginForm() {
		return "custom-login";
	}
	
	
}
