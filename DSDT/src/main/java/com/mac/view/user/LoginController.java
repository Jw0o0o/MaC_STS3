package com.mac.view.user;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mac.dsdt.user.UserVO;
import com.mac.dsdt.user.impl.UserDAO;

@Controller
public class LoginController {
	
	@RequestMapping("/login.do")
	public String login(UserVO vo, UserDAO userDAO, HttpSession session) {
		System.out.println("로그인!");
		
		UserVO user = userDAO.getUser(vo);
		if (user != null) {
			// session.setAttribute("userName", user.getU_name()); // SetAttribute은 서블릿API중 하나
			return "main.jsp";
		} else {
			return "login.jsp"; // 로그인 실패
		} 
	}

}

/* 관리자 권한 관련 */
//if (user != null) {
//	session.setAttribute("userName", user.getU_name()); // SetAttribute: servlet API중 하나
//	if (user.getU_id().equals("admin") && user.getU_pw().equals("admin123")) { // ==쓰면 false뜸
//		return "getUserList.do";
//	}
//	return "getBoardList.do";
//} 
//else return "login.jsp"; // 로그인 실패
