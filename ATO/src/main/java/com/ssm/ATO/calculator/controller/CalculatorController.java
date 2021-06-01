package com.ssm.ATO.calculator.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/calculator")
public class CalculatorController {
	
	//계산기
	@RequestMapping(value = "/calculator", method = RequestMethod.GET)
	public String overview(Model model) throws Exception {
		model.addAttribute("calculator", null);
		return "calculator/calculator";
	}
}
