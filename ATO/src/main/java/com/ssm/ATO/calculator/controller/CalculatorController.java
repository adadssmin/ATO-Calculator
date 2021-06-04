package com.ssm.ATO.calculator.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ssm.ATO.board.model.Board;
import com.ssm.ATO.calculator.model.Date;

@Controller
@RequestMapping("/calculator")
public class CalculatorController {
	
	//계산기
	@RequestMapping(value = "/calculator", method = RequestMethod.GET)
	public String overview(Model model) throws Exception {
		model.addAttribute("calculator", "calculator");
		return "calculator/calculator";
	}
	
	//체크
	@RequestMapping(value = "/check", method = RequestMethod.GET)
	public String getModify(@RequestParam("month") int month, 
							@RequestParam("date") int date, 
							Model model) throws Exception {
		Date d = new Date(month, date);
		model.addAttribute("check", d);
		return "calculator/check";
	}
}
