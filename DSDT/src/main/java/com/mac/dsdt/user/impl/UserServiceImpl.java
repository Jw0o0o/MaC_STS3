//package com.mac.dsdt.user.impl;
//
//import java.util.List;
//
//import com.mac.dsdt.user.UserService;
//import com.mac.dsdt.user.UserVO;
//
//public class UserServiceImpl implements UserService {
//	private UserDAO userDAO;
//	
//	public void setUserDAO(UserDAO userDAO) {
//		this.userDAO = userDAO;
//	}
//	
//	public UserVO getUser(UserVO vo) {
//		return userDAO.getUser(vo);
//	}
//	
//	public void insertUser(UserVO vo) {
//		userDAO.insertUser(vo);
//	}
//
//	@Override
//	public List<UserVO> getUserList(UserVO vo) {
//		return userDAO.getUserList(vo);
//	}
//
//	@Override
//	public void updateUser(UserVO vo) {
//		userDAO.updateUser(vo);
//	}
//
//	@Override
//	public void deleteUser(UserVO vo) {
//		userDAO.deleteUser(vo);
//	}
//
//	@Override
//	public UserVO getUserOne(UserVO vo) {
//		return userDAO.getUser(vo);
//	}
//
//}
