package com.tedpros.cms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.WebRequest;

@Controller
@RequestMapping("/party/*")
public class PartyController extends TopController{

	@RequestMapping("/getAdd.do")
	public String getAccessDenied(WebRequest request){
		System.out.println(getUsername());
		return "login.home";
	}
}
