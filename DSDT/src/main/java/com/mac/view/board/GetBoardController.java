//package com.mac.view.board;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.SessionAttributes;
//import org.springframework.web.servlet.ModelAndView;
//
//import com.mac.dsdt.board.BoardService;
//import com.mac.dsdt.board.BoardVO;
//import com.mac.dsdt.board.impl.BoardDAO;
//
//@Controller
//@SessionAttributes("board") // 여기도 이거 있어야 writer등이 null로 업데이트되지 않는다(p.394~)
//public class GetBoardController {
//	@Autowired
//	private BoardService boardService;
//	
//	@RequestMapping("/getBoard.do")
//	public ModelAndView getBoard(BoardVO vo, ModelAndView mav) {
//		mav.addObject("board", boardService.getBoard(vo)); // Model정보 저장
//		mav.setViewName("getBoard.jsp"); // View정보 저장
//		
//		return mav;
//	}
//}
//
