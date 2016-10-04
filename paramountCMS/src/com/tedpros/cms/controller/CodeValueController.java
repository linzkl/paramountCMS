package com.tedpros.cms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.WebRequest;

import com.tedpros.cms.entity.CodeValueT;
import com.tedpros.cms.service.CodeValueService;

@Controller
@RequestMapping("/codeValue/*")
public class CodeValueController extends TopController{
	
	@Autowired
	private CodeValueService codeValueService;

	@RequestMapping(value = "/getAdd.do", method=RequestMethod.GET)
	public String getAdd(WebRequest request){
		return "codeValue.add";
	}
	
	@RequestMapping(value = "/postAdd.do", method=RequestMethod.POST)
	public String postAdd(WebRequest request){
		CodeValueT codeValue = new CodeValueT();
		getDataBinder(request, codeValue);
		codeValueService.addCodeValue(codeValue);
		return "redirect:/codeValue/getAdd.do";
	}
	
}
