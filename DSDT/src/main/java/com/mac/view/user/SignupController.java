package com.mac.view.user;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mac.dsdt.user.UserService;
import com.mac.dsdt.user.UserVO;
import com.mac.dsdt.user.impl.UserDAO;

@Controller
public class SignupController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/signup.do")
	public String insertUser(UserVO vo) throws IOException {
		userService.insertUser(vo);
		return "login.jsp";
	}

}

/* 유저 이미지 추가할 때 */
//import java.io.File;
//import org.springframework.web.multipart.MultipartFile;
//
//MultipartFile uploadFile = vo.getU_pic();
//
//if (!uploadFile.isEmpty()) {ㅉ
//	String fileName = uploadFile.getOriginalFilename();
//	String filePath = "C:/Users/A/1-eclipse-workspace/sts/work_space3/BoardWeb_SpringMVC3_Layered/src/main/webapp/resources/upload/userUploadFile/" + fileName;
//	uploadFile.transferTo(new File(filePath)); 
//}

