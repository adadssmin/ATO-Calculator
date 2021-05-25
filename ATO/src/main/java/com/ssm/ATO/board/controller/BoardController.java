package com.ssm.ATO.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ssm.ATO.board.model.Board;
import com.ssm.ATO.board.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired
	private BoardService service;
	
	//글쓰기 화면
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String getWrite(Model model) throws Exception {
		model.addAttribute("write", "write");
		return "board/board";
	}
	
	//글쓰기
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(Board board) throws Exception {
		service.add(board);
		return "redirect:/board/board";
	}
	
	//조회(작성자)
	@RequestMapping(value = "/view_W", method = RequestMethod.GET)
	public String getView_W(@RequestParam("id") int id, Model model) throws Exception {
		Board board = service.view(id);
		model.addAttribute("view", board);
		return "board/board";
	}
	
	//조회
	@RequestMapping(value = "/view_U", method = RequestMethod.GET)
	public String getView_U(@RequestParam("id") int id, Model model) throws Exception {
		service.updateCnt(id);
		
		Board board = service.view(id);
		model.addAttribute("view", board);
		return "board/board";
	}
	
	//수정
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String getModify(@RequestParam("id") int id, Model model) throws Exception {
		Board board = service.view(id);
		model.addAttribute("modify", board);
		return "board/board";
	}
	
	//수정
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String postModify(Board board) throws Exception {
		service.modify(board);
		return "redirect:/board/board";
	}
	
	//삭제
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String getDelete(@RequestParam("id") int id, Model model) throws Exception {
		service.delete(id);
		return "redirect:/board/board";
	}
	
	//게시판 + 페이징
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String getListPage(Model model, @RequestParam(defaultValue = "1") int num) throws Exception{
		//총 갯수
		int count = service.totalCnt();
		
		//한 페이지에 게시물 갯수
		int postNum = 10;
		
		//페이징 번호 {(게시물 총 갯수 / 한 페이지에 출력할 갯수)} 올림
		int pageNum = (int)Math.ceil((double)count/postNum);
		
		//출력할 게시물 수
		int displayPost = (num - 1) * postNum;
		
		//한번에 표시할 마지막 페이징 번호
		int pageNum_cnt = 10;
		
		//표시되는 페이지 번호 중 마지막 번호 올림
		//마지막 페이지 번호 = ((올림)(현재 페이지 번호 / 한번에 표시할 페이지 번호의 갯수)) * 한번에 표시할 페이지번호의 갯수)
		int endPageNum = (int)(Math.ceil((double)num / (double)pageNum_cnt) * pageNum_cnt);
		
		//표시되는 페이지 번호 중 첫번째 번호
		//시작 페이지 = 마지막 페이지 번호 - 한번에 표시할 페이지 번호의 갯수 + 1
		int startPageNum = endPageNum - (pageNum_cnt - 1);
		
		//게시물 마지막 번호
		int endPageNum_tmp = (int)(Math.ceil((double)count / (double)pageNum_cnt));
		if (endPageNum > endPageNum_tmp) {
			endPageNum = endPageNum_tmp;
		}
		
		boolean prev = startPageNum == 1 ? false : true;
		boolean next = endPageNum * pageNum_cnt >= count ? false : true;
		
		//시작, 끝 번호
		model.addAttribute("startPageNum", startPageNum);
		model.addAttribute("endPageNum", endPageNum);
		
		//이전, 다음 
		model.addAttribute("prev", prev);
		model.addAttribute("next", next);
		
		//현재 페이지
		model.addAttribute("select", num);
		
		List<Board> list = null;
		list = service.listPage(displayPost, postNum);
		model.addAttribute("boardList", list);
		model.addAttribute("pageNum", pageNum);

		return "board/board";
	}
	
}
