package com.mac.dsdt.user;

public interface UserService {
	
	// CRUD 기능의 추상메서드
	
	// 유저 조회
	public UserVO getUser(UserVO vo);

	// 회원가입
	public void insertUser(UserVO vo);
	
	public UserVO getUserDetail(UserVO vo);
	
	public void updateUser(UserVO vo);
	
	public void deleteUser(UserVO vo);
	
	public boolean isUsernameTaken(UserVO vo);
}


//public List<UserVO> getUserList(UserVO vo);
