package com.mac.dsdt.board;

import java.sql.Date;

import com.mac.dsdt.user.UserVO;

public class BoardVO {
   private int PB_SEQ;
   private String PB_TITLE;
   private String PB_CONTENTS;
   private int PB_VIEWS;
   private Date PB_REGDATE;
   private int PB_LIKES;
   private String PB_COMMENTS;
   private String PB_FILENAME;
   
   public int getPB_SEQ() {
      return PB_SEQ;
   }
   public void setPB_SEQ(int pB_SEQ) {
      PB_SEQ = pB_SEQ;
   }
   public String getPB_TITLE() {
      return PB_TITLE;
   }
   public void setPB_TITLE(String pB_TITLE) {
      PB_TITLE = pB_TITLE;
   }
   public String getPB_CONTENTS() {
      return PB_CONTENTS;
   }
   public void setPB_CONTENTS(String pB_CONTENTS) {
      PB_CONTENTS = pB_CONTENTS;
   }
   public int getPB_VIEWS() {
      return PB_VIEWS;
   }
   public void setPB_VIEWS(int pB_VIEWS) {
      PB_VIEWS = pB_VIEWS;
   }
   public Date getPB_REGDATE() {
      return PB_REGDATE;
   }
   public void setPB_REGDATE(Date pB_REGDATE) {
      PB_REGDATE = pB_REGDATE;
   }
   public int getPB_LIKES() {
      return PB_LIKES;
   }
   public void setPB_LIKES(int pB_LIKES) {
      PB_LIKES = pB_LIKES;
   }
   public String getPB_COMMENTS() {
      return PB_COMMENTS;
   }
   public void setPB_COMMENTS(String pB_COMMENTS) {
      PB_COMMENTS = pB_COMMENTS;
   }
   public String getPB_FILENAME() {
      return PB_FILENAME;
   }
   public void setPB_FILENAME(String pB_FILENAME) {
      PB_FILENAME = pB_FILENAME;
   }
   @Override
   public String toString() {
      return "BoardVO [PB_SEQ=" + PB_SEQ + ", PB_TITLE=" + PB_TITLE + ", PB_CONTENTS=" + PB_CONTENTS + ", PB_VIEWS="
            + PB_VIEWS + ", PB_REGDATE=" + PB_REGDATE + ", PB_LIKES=" + PB_LIKES + ", PB_COMMENTS=" + PB_COMMENTS
            + ", PB_FILENAME=" + PB_FILENAME +  "]";
   }

   
}
