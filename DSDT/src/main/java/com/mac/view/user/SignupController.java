//package com.mac.view.user;
//
//import java.io.File;
//import java.io.IOException;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.multipart.MultipartFile;
//
//import com.mac.dsdt.user.UserVO;
//import com.mac.dsdt.user.impl.UserDAO;
//
//@Controller
//public class SignupController {
//	
//	@RequestMapping("/signup.do")
//	public String insertUser(UserVO vo, UserDAO userDAO) throws IOException {
//		MultipartFile uploadFile = vo.getU_pic();
//
//		if (!uploadFile.isEmpty()) {ㅉ
//			String fileName = uploadFile.getOriginalFilename();
//			String filePath = "C:/Users/A/1-eclipse-workspace/sts/work_space3/BoardWeb_SpringMVC3_Layered/src/main/webapp/resources/upload/userUploadFile/" + fileName;
//			uploadFile.transferTo(new File(filePath)); 
//		}
//		
//		userDAO.insertUser(vo);
//		return "login.jsp";
//	}
//
//}