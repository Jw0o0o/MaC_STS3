package com.mac.dsdt.user;

import java.sql.Date;

public class UserVO {
	
	private String u_seq;
	private String u_id;
	private String u_pw;
	private String u_pwc;
	private String u_role;
	private String u_grade;
	private String u_nickname;
	private String u_gender;
	private String u_addr;
	private String u_phone;
	private Date u_createdat;

	public String getU_seq() {
		return u_seq;
	}
	public void setU_seq(String u_seq) {
		this.u_seq = u_seq;
	}
	
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	
	public String getU_pw() {
		return u_pw;
	}
	public void setU_pw(String u_pw) {
		this.u_pw = u_pw;
	}
	
	public String getU_pwc() {
		return u_pwc;
	}
	public void setU_pwc(String u_pwc) {
		this.u_pwc = u_pwc;
	}
	
	public String getU_role() {
		return u_role;
	}
	public void setU_role(String u_role) {
		this.u_role = u_role;
	}
	
	public String getU_grade() {
		return u_grade;
	}
	public void setU_grade(String u_grade) {
		this.u_grade = u_grade;
	}
	
	public String getU_nickname() {
		return u_nickname;
	}
	public void setU_nickname(String u_nickname) {
		this.u_nickname = u_nickname;
	}
	
	public String getU_gender() {
		return u_gender;
	}
	public void setU_gender(String u_gender) {
		this.u_gender = u_gender;
	}
	
	public String getU_addr() {
		return u_addr;
	}
	public void setU_addr(String u_addr) {
		this.u_addr = u_addr;
	}
	
	public String getU_phone() {
		return u_phone;
	}
	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}
	
	public Date getU_createdat() {
		return u_createdat;
	}
	// setU_createdat은 x
	
	@Override
	public String toString() {
		return "UserVO [u_id=" + u_id + ", u_pw=" + u_pw + ", u_pwc=" + u_pwc + ", u_role=" + u_role + ", u_grade="
				+ u_grade + ", u_nickname=" + u_nickname + ", u_gender=" + u_gender + ", u_addr=" + u_addr
				+ ", u_phone=" + u_phone + ", u_createdat=" + u_createdat + "]";
	}
	
}


/* 파일 업로드 관련 */	
//import org.springframework.web.multipart.MultipartFile;

//	private MultipartFile u_pic;
//	private String u_filename;

	
//	public MultipartFile getU_pic() {
//		return u_pic;
//	}
//
//	public void setU_pic(MultipartFile u_pic) {
//		this.u_pic = u_pic;
//	}
//
//	public String getU_filename() {
//		return u_filename;
//	}
//
//	public void setU_filename(String u_filename) {
//		this.u_filename = u_filename;
//	}
