package com.mac.view.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mac.dsdt.user.UserService;
import com.mac.dsdt.user.UserVO;

@RestController
public class CheckIdController {

    @Autowired
    private UserService userService;

    @RequestMapping("/checkUsername.do")
    public boolean checkUsername(UserVO vo) {
        return userService.isUsernameTaken(vo);
    }
}
