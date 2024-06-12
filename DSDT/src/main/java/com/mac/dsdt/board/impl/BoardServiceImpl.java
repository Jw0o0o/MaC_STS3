package com.mac.dsdt.board.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mac.dsdt.board.BoardService;
import com.mac.dsdt.board.BoardVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardDAO boardDAO;

	
	public void insertBoard(BoardVO vo) {
		boardDAO.insertBoard(vo);
		//vo를 받아서 vo가 가진 값들을 넣어줌
	}

	public void updateBoard(BoardVO vo) {
		boardDAO.updateBoard(vo);
	}
	
	public void deleteBoard(BoardVO vo) {
		boardDAO.deleteBoard(vo);
	}
	
	public BoardVO getBoard(BoardVO vo) {
		return boardDAO.getBoard(vo);
	}
	
	public List<BoardVO> getBoardList(BoardVO vo) {
		return boardDAO.getBoardList(vo); //목록형태로 가져오고 list 실행
	}
}