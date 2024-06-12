//package com.mac.view.board;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import com.mac.dsdt.board.BoardService;
//import com.mac.dsdt.board.BoardVO;
//
//@Controller
//public class GetBoardListController {
//	@Autowired
//	private BoardService boardService;
//	
//	@RequestMapping("/getBoardList.do")
//	public String getBoardList(BoardVO vo, Model model) {
//		
//		// Model 정보 저장
//		model.addAttribute("boardList", boardService.getBoardList(vo));
//		return "getBoardList.jsp"; // View이름 리턴	
//	}
//}