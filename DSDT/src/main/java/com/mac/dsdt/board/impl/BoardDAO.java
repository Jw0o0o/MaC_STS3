package com.mac.dsdt.board.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.mac.dsdt.board.BoardVO;
import com.mac.dsdt.common.JDBCUtil;
import com.mac.dsdt.user.UserVO;

//DAO (Data Access Object)
//Repository = 데이터를 보관하는 저장소니까 데이터베이스 연동임

@Repository("boardDAO")
public class BoardDAO {

   // 멤버변수는 8개
   // JDBC 관련 변수
   private Connection conn = null;
   private PreparedStatement stmt = null;
   private ResultSet rs = null;
   private final String BOARD_INSERT = "INSERT INTO project_board(PB_title, PB_CONTENTS, PB_COMMENTS, PB_FILENAME) VALUES (?, ?, ?, ?)";
   private final String BOARD_UPDATE = "update project_board set PB_title=?, PB_contents=? where PB_seq=?";
   private final String BOARD_DELETE = "delete from project_board where PB_seq=?";
   private final String BOARD_GET = "select * from project_board where PB_seq=?";
   private final String BOARD_LIST = "select * from project_board order by PB_seq desc";
   // INSERT INTO project_board (PB_TITLE, PB_CONTENTS, PB_COMMENTS, PB_FILENAME) VALUES (?,?,?,?);
   // CRUD 기능의 메소드 구현
   // 글 등록
   public void insertBoard(BoardVO vo) {
      System.out.println("===> JDBC로 insertBoard() 기능 처리");
      try {
         conn = JDBCUtil.getConnection();
         stmt = conn.prepareStatement(BOARD_INSERT);

         stmt.setString(1, vo.getPB_TITLE());
         stmt.setString(2, vo.getPB_CONTENTS());
         stmt.setString(3, vo.getPB_COMMENTS());
         stmt.setString(4, vo.getPB_FILENAME());
         stmt.executeUpdate();
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         JDBCUtil.close(stmt, conn);

      }
   }

   // 글 수정
   public void updateBoard(BoardVO vo) {
      System.out.println("===> JDBC로 updateBoard() 기능 처리");
      try {
         conn = JDBCUtil.getConnection();
         stmt = conn.prepareStatement(BOARD_UPDATE);
         stmt.setString(1, vo.getPB_TITLE());
         stmt.setString(2, vo.getPB_CONTENTS());
         stmt.setInt(3, vo.getPB_SEQ());
         stmt.executeUpdate();
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         JDBCUtil.close(stmt, conn);
      }
   }

   // 글 삭제
   public void deleteBoard(BoardVO vo) {
      System.out.println("===> JDBC로 deleteBoard() 기능 처리");
      try {
         conn = JDBCUtil.getConnection();
         stmt = conn.prepareStatement(BOARD_DELETE);
         stmt.setInt(1, vo.getPB_SEQ());
         stmt.executeUpdate();
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         JDBCUtil.close(stmt, conn);
      }
   }

   // 글 상세 조회 (내용을 가져와서 보여줌)
   public BoardVO getBoard(BoardVO vo) {
      System.out.println("===> JDBC로 getBoard() 기능 처리");
      BoardVO board = null;
      try {
         conn = JDBCUtil.getConnection();
         stmt = conn.prepareStatement(BOARD_GET);
         stmt.setInt(1, vo.getPB_SEQ());
         rs = stmt.executeQuery();
         if (rs.next()) {
            board = new BoardVO();
            board.setPB_SEQ(rs.getInt("PB_SEQ"));
            board.setPB_TITLE(rs.getString("PB_TITLE"));
            board.setPB_CONTENTS(rs.getString("PB_CONTENTS"));
            board.setPB_REGDATE(rs.getDate("PB_REGDATE"));
            board.setPB_VIEWS(rs.getInt("PB_VIEWS"));
            board.setPB_FILENAME(rs.getString("PB_FILENAME"));
         }
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         JDBCUtil.close(rs, stmt, conn);
      }
      return board;
   }

   // 글 목록 조회
   public List<BoardVO> getBoardList(BoardVO vo) {
      System.out.println("===> JDBC로 getBoardList() 기능 처리");
      List<BoardVO> boardList = new ArrayList<BoardVO>();
      try {
         conn = JDBCUtil.getConnection();
         stmt = conn.prepareStatement(BOARD_LIST);
         rs = stmt.executeQuery();
         while (rs.next()) {
            BoardVO board = new BoardVO();

            board.setPB_SEQ(rs.getInt("PB_SEQ"));
            board.setPB_TITLE(rs.getString("PB_TITLE"));
            board.setPB_CONTENTS(rs.getString("PB_CONTENTS"));
            board.setPB_REGDATE(rs.getDate("PB_REGDATE"));
            board.setPB_VIEWS(rs.getInt("PB_VIEWS"));
            board.setPB_LIKES(rs.getInt("PB_LIKES"));
            board.setPB_FILENAME(rs.getString("PB_FILENAME"));

            boardList.add(board);
         }
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         JDBCUtil.close(rs, stmt, conn);
      }
      return boardList;
   }
}