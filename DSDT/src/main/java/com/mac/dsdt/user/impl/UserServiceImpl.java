package com.mac.dsdt.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mac.dsdt.user.UserService;
import com.mac.dsdt.user.UserVO;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDAO;
	
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
	@Override
	public UserVO getUser(UserVO vo) {
		return userDAO.getUser(vo);
	}
	
	@Override
	public void insertUser(UserVO vo) {
		userDAO.insertUser(vo);
	}
	
	@Override
	public UserVO getUserDetail(UserVO vo) {
		return userDAO.getUserDetail(vo);
	}

	@Override
	public void updateUser(UserVO vo) {
		userDAO.updateUser(vo);
	}

	@Override
	public void deleteUser(UserVO vo) {
		userDAO.deleteUser(vo);
	}
	
	@Override
	public boolean isUsernameTaken(UserVO vo) {
        return userDAO.existsByUsername(vo);
    }

}
