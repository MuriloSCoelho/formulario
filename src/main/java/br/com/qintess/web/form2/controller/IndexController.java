package br.com.qintess.web.form2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	@RequestMapping("")
	public String carrega() {
		
		return "index";
	}

}
