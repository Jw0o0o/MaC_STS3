//package com.mac.view.user;
//
//import javax.servlet.http.HttpSession;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import com.mac.dsdt.user.UserVO;
//import com.mac.dsdt.user.impl.UserDAO;
//
//@Controller
//public class LoginController {
//	
//	// (Servlet API - p.384~ )
//	@RequestMapping("/login.do")
//	public String login(UserVO vo, UserDAO userDAO, HttpSession session) {
//		System.out.println("로그인!");
//		
//		UserVO user = userDAO.getUser(vo);
//		if (user != null) {
//			session.setAttribute("userName", user.getU_name()); // SetAttribute: servlet API중 하나
//			if (user.getU_id().equals("admin") && user.getU_pw().equals("admin123")) { // ==쓰면 false뜸
//				return "getUserList.do";
//			}
//			return "getBoardList.do";
//		} 
//		else return "login.jsp"; // 로그인 실패
//	}
//}
//	