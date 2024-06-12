package com.mac.dsdt.user;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class UserVO {
    private int U_SEQ; // 유저 시퀀스
    private String U_ID; // 유저 아이디
    private String U_PW; // 유저 비밀번호
    private String U_PWC; // 비밀번호 확인
    private int U_GRADE; // 고객 등급 구분
    private String U_NAME; // 유저 닉네임
    private String U_EMAIL; // 이메일
    private String U_ADDR; // 유저 주소
    private String U_PHONE; // 유저 전화번호
    private String U_GENDER; // 유저 성별

    // 기본 생성자
    public UserVO() {
    }

    // 모든 필드를 매개변수로 받는 생성자
    public UserVO(int U_SEQ, String U_ID, String U_PW, String U_PWC, int U_GRADE, String U_NAME, String U_EMAIL, String U_ADDR, String U_PHONE, String U_GENDER) {
        this.U_SEQ = U_SEQ;
        this.U_ID = U_ID;
        this.U_PW = U_PW;
        this.U_PWC = U_PWC;
        this.U_GRADE = U_GRADE;
        this.U_NAME = U_NAME;
        this.U_EMAIL = U_EMAIL;
        this.U_ADDR = U_ADDR;
        this.U_PHONE = U_PHONE;
        this.U_GENDER = U_GENDER;
    }

    // Getter 및 Setter 메서드
    public int getU_SEQ() {
        return U_SEQ;
    }

    public void setU_SEQ(int U_SEQ) {
        this.U_SEQ = U_SEQ;
    }

    public String getU_ID() {
        return U_ID;
    }

    public void setU_ID(String U_ID) {
        this.U_ID = U_ID;
    }

    public String getU_PW() {
        return U_PW;
    }

    public void setU_PW(String U_PW) {
        this.U_PW = U_PW;
    }

    public String getU_PWC() {
        return U_PWC;
    }

    public void setU_PWC(String U_PWC) {
        this.U_PWC = U_PWC;
    }

    public int getU_GRADE() {
        return U_GRADE;
    }

    public void setU_GRADE(int U_GRADE) {
        this.U_GRADE = U_GRADE;
    }

    public String getU_NAME() {
        return U_NAME;
    }

    public void setU_NAME(String U_NAME) {
        this.U_NAME = U_NAME;
    }

    public String getU_EMAIL() {
        return U_EMAIL;
    }

    public void setU_EMAIL(String U_EMAIL) {
        this.U_EMAIL = U_EMAIL;
    }

    public String getU_ADDR() {
        return U_ADDR;
    }

    public void setU_ADDR(String U_ADDR) {
        this.U_ADDR = U_ADDR;
    }

    public String getU_PHONE() {
        return U_PHONE;
    }

    public void setU_PHONE(String U_PHONE) {
        this.U_PHONE = U_PHONE;
    }

    public String getU_GENDER() {
        return U_GENDER;
    }

    public void setU_GENDER(String U_GENDER) {
        this.U_GENDER = U_GENDER;
    }

    @Override
    public String toString() {
        return "UserVO{" +
                "U_SEQ=" + U_SEQ +
                ", U_ID='" + U_ID + '\'' +
                ", U_PW='" + U_PW + '\'' +
                ", U_PWC='" + U_PWC + '\'' +
                ", U_GRADE=" + U_GRADE +
                ", U_NAME='" + U_NAME + '\'' +
                ", U_EMAIL='" + U_EMAIL + '\'' +
                ", U_ADDR='" + U_ADDR + '\'' +
                ", U_PHONE='" + U_PHONE + '\'' +
                ", U_GENDER='" + U_GENDER + '\'' +
                '}';
    }
}