package com.ras.springBootVuejs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping("/login")
	public String getLogin() {
		return "login";
	}
	
	@GetMapping("/404")
	public String get404() {
		return "404";
	}
	
	@GetMapping("/error")
	public String getError() {
		return "404";
	}
}
