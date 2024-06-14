package com.mac.dsdt.user.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import com.mac.dsdt.common.JDBCUtil;
import com.mac.dsdt.user.UserVO;

@Repository("userDAO")
public class UserDAO {
	// JDBC 관련 변수
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;

	// SQL 명령어들 -> 나중에 JPA로 바꿀 예정(Hibernate or MyBatis)
	private final String USER_GET = "select * from users where u_id=? and u_pw=?";
	private final String USER_INSERT = "insert into users(u_role, u_id, u_pw, u_pwc, u_nickname, u_phone) values(?,?,?,?,?,?)";
	private final String USER_UPDATE = "update users set u_pw=?, u_pwc=?, u_role=?, u_grade=?, u_nickname=?, u_gender=?, u_addr=?, u_phone where u_id=?";
	private final String USER_UPDATE_CHECK = "select u_pw from users where u_id=?";
	private final String USER_DELETE = "delete users where u_id=?, u_pw=?"; 
	private final String USER_DETAIL = "select * from users where u_id=?";
	

	// CRUD 기능의 메소드 구현

	// 1. 회원 상세 조회 - 로그인시에만 활용
	public UserVO getUser(UserVO vo) {
		UserVO user = null;
		try {
			System.out.println("===> JDBC로 getUser() 기능 처리");
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(USER_GET);
			stmt.setString(1, vo.getU_id());
			stmt.setString(2, vo.getU_pw());
			rs = stmt.executeQuery();
			if (rs.next()) {
				user = new UserVO();
				user.setU_role(rs.getString("U_ROLE"));
				user.setU_id(rs.getString("U_ID"));
				user.setU_nickname(rs.getString("U_NICKNAME"));
				user.setU_phone(rs.getString("U_PHONE"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return user;
	}
	
	// 2. 회원가입
	public void insertUser(UserVO vo) { 
		System.out.println("===> JDBC로 insertUser() 기능 처리");
		System.out.println("role -> " + vo.getU_role());
		System.out.println("id -> " + vo.getU_id());
		System.out.println("pw -> " + vo.getU_pw());
		System.out.println("nickname -> " + vo.getU_nickname());
		System.out.println("phone -> " + vo.getU_phone());
		
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(USER_INSERT);
			stmt.setString(1, vo.getU_role()); //1번 ?
			stmt.setString(2, vo.getU_id()); 
			stmt.setString(3, vo.getU_pw());
			stmt.setString(4, vo.getU_pwc());
			stmt.setString(5, vo.getU_nickname());
			stmt.setString(6, vo.getU_phone());
			// stmt.setString(xx, vo.getU_pic().getOriginalFilename());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);
		}
	}
	
	// 3.
	public UserVO getUserDetail(UserVO vo) {

		System.out.println("사용자 상세 정보 확인중...");
		UserVO user = null;

		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(USER_DETAIL);
			stmt.setString(1, vo.getU_id());
			rs = stmt.executeQuery();

			if (rs.next()) {
				user = new UserVO();
				user.setU_id(rs.getString("U_ID"));
				user.setU_pw(rs.getString("U_PW"));
				user.setU_pwc(rs.getString("U_PWC"));
				user.setU_role(rs.getString("U_ROLE"));
				user.setU_grade(rs.getString("U_GRADE"));
				user.setU_nickname(rs.getString("U_NICKNAME"));
				user.setU_gender(rs.getString("U_GENDER"));
				user.setU_addr(rs.getString("U_ADDR"));
				user.setU_phone(rs.getString("U_PHONE"));
			}

		} catch (Exception e) {

			e.printStackTrace();

		} finally {

			JDBCUtil.close(rs, stmt, conn);

		}
		return user;
	}
	
	// 4.
	public ModelAndView updateUserCheck(UserVO vo) {

		System.out.println("사용자 정보 수정을 위한 본인확인중");
		ModelAndView mav = null;
		UserVO user = null;

		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(USER_UPDATE_CHECK);
			stmt.setString(1, vo.getU_id());
			rs = stmt.executeQuery();

			if (rs.next()) {
				user = new UserVO();
				user.setU_pw(rs.getString("U_PW"));
			}
			if (vo.getU_pw().equals(user.getU_pw())) {
				mav = new ModelAndView();
				mav.setViewName("userModify.jsp");
			} else {
				System.out.println("비밀번호가 잘못되었습니다.");
				mav = new ModelAndView();
				mav.setViewName("userModifyCheck.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return mav;

	}

	// 5.
	public void updateUser(UserVO vo) {

		System.out.println("사용자 정보 업데이트중...");

		try {
			conn = JDBCUtil.getConnection();

			stmt = conn.prepareStatement(USER_UPDATE);
			stmt.setString(1, vo.getU_pw());
			stmt.setString(2, vo.getU_pwc());
			stmt.setString(3, vo.getU_role());
			stmt.setString(4, vo.getU_grade());
			stmt.setString(5, vo.getU_nickname());
			stmt.setString(6, vo.getU_gender());
			stmt.setString(7, vo.getU_addr());
			stmt.setString(8, vo.getU_phone());
			stmt.setString(9, vo.getU_id());

			stmt.executeUpdate();

		} catch (Exception e) {

			e.printStackTrace();

		} finally {

			JDBCUtil.close(stmt, conn);

		}

		System.out.println("사용자 정보가 업데이트 되었습니다.");

	}

	// 6.
	public void deleteUser(UserVO vo) {

		System.out.println("사용자 탈퇴 처리를 진행합니다.");

		try {
			conn = JDBCUtil.getConnection();

			stmt = conn.prepareStatement(USER_DELETE);
			stmt.setString(1, vo.getU_id());
			stmt.setString(2, vo.getU_pw());

			stmt.executeUpdate();

		} catch (Exception e) {

			e.printStackTrace();

		} finally {

			JDBCUtil.close(rs, stmt, conn);
		}
		
		System.out.println("사용자 정보가 삭제되었습니다. 탈퇴 처리가 완료되었습니다.");

	}
	
}
