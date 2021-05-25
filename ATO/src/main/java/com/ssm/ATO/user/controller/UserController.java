package com.ssm.ATO.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.ATO.board.model.Board;
import com.ssm.ATO.user.model.User;
import com.ssm.ATO.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService service;
	
	//로그인페이지
	@GetMapping("login")
	public String loginForm() {
		return "user/login";
	}
	
	//회원가입페이지
	@GetMapping("sign")
	public String signForm() {
		return "user/sign";
	}
	
	//내정보
	@RequestMapping(value = "/info", method = RequestMethod.GET)
	public String getById(@RequestParam("id") String id, Model model) throws Exception {
		User user = service.getById(id);
		model.addAttribute("info", user);
		return "user/info";
	}
	
	//로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		session.invalidate();
		return "redirect:/";
	}
	
	//로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(String id, String password, HttpServletRequest req) throws Exception {
		HttpSession session = req.getSession();
		User login = service.login(id, password);
		if (login == null) {
			session.setAttribute("errMsg", "아이디 또는 비밀번호를 확인해주세요");
			return "redirect:/user/login";
		} else {
			session.setAttribute("user", login);
			return "redirect:/";
		}
	}
	
	//회원가입
	@PostMapping(value = "sign"
			, params = { "id", "password", "password_check", "name", "birth", "email1", "email2", "phone"}) 
	public String addUser(@RequestParam String id
			, @RequestParam String password
			, @RequestParam String password_check
			, @RequestParam String name
			, @RequestParam String birth
			, @RequestParam String email1
			, @RequestParam String email2
			, @RequestParam String phone
			, HttpServletRequest req) {
		HttpSession session = req.getSession();
		int result = service.idChk(id);
		if (result == 1) {
			session.setAttribute("errMsg_id", "중복된 아이디입니다.");
			return "redirect:/user/sign";
		} else if (!password.equals(password_check)) {
			session.setAttribute("errMsg_pwchk", "비밀번호가 일치하지 않습니다.");
			return "redirect:/user/sign";
		} else {
			service.add(new User(id, password, name, birth, email1+"@"+email2, phone));
			return "redirect:/";
		}
	}
	
	//내정보수정
	@RequestMapping(value = "/info", method = RequestMethod.POST)
	public String userModify(User user, HttpServletRequest req) throws Exception {
		service.update(user);
		HttpSession session = req.getSession();
		User login = service.getById(user.getId());
		session.setAttribute("user", login);
		return "redirect:/user/info?id=" + user.getId();
	}
}
