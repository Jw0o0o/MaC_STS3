package mysql.test;
// Schema가 아니라, 스키마 안에 있는 board테이블 get요청 확인
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import org.junit.Test;

public class TestMySQLConnect_Table {
    @Test
    public void TestConnect() throws Exception {
        // MySQL JDBC 드라이버 클래스 로드
        Class.forName("com.mysql.cj.jdbc.Driver");

        // 데이터베이스 연결
<<<<<<< HEAD
        try (Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dsdt", "root", "mysql123")) {
=======
        try (Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dsdt", "root", "1234")) {
>>>>>>> dev
            System.out.println("Connection success");

            // Statement 생성
            try (Statement stmt = con.createStatement()) {
                // board 테이블에서 데이터 조회
                ResultSet rs = stmt.executeQuery("SELECT * FROM board");

                // 결과 출력
                while (rs.next()) {
                    System.out.println("ID: " + rs.getInt("id"));
                    System.out.println("Title: " + rs.getString("title"));
                    System.out.println("Content: " + rs.getString("content"));
                    System.out.println("Author: " + rs.getString("author"));
                    System.out.println("Created At: " + rs.getTimestamp("created_at"));
                    System.out.println("---------------------------");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}