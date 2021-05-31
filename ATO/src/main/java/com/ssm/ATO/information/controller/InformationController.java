package com.ssm.ATO.information.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/information")
public class InformationController {
	
	//개요
	@RequestMapping(value = "/information", method = RequestMethod.GET)
	public String overview(Model model) throws Exception {
		model.addAttribute("information", null);
		return "information/information";
	}
	
	//원인
	@RequestMapping(value = "/cause", method = RequestMethod.GET)
	public String cause(Model model) throws Exception {
		model.addAttribute("information", "cause");
		return "information/information";
	}
	
	//증상
	@RequestMapping(value = "/symptom", method = RequestMethod.GET)
	public String symptom(Model model) throws Exception {
		model.addAttribute("information", "symptom");
		return "information/information";
	}
	
	//관리및치료
	@RequestMapping(value = "/care", method = RequestMethod.GET)
	public String care(Model model) throws Exception {
		model.addAttribute("information", "care");
		return "information/information";
	}
}
