package com.ssm.ATO.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.ATO.board.dao.BoardDao;
import com.ssm.ATO.board.model.Board;

@Service
public class BoardService {
	@Autowired
	private BoardDao dao;
	
	public int add(Board board) {
		return dao.add(board);
	}
	
	public List<Board> list() throws Exception {
		return dao.getList();
	}
	
	public Board view(int id) throws Exception {
		return dao.getById(id);
	}
	
	public int modify(Board board) throws Exception {
		return dao.update(board);
	}
	
	public int delete(int id) throws Exception {
		return dao.delete(id);
	}
	
	public int totalCnt() throws Exception{
		return dao.totalCnt();
	}
	
	public List<Board> listPage(int diplayPost, int postNum) throws Exception {
		return dao.getListPage(diplayPost, postNum);
	}
	
	public int updateCnt(int id) {
		return dao.updateCnt(id);
	}
}
