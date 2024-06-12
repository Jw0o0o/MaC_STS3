/* 
 * TODO: 반드시, run-as -> JUnit Test로 돌리기 (Not Run on Server)
 * MySQL의 스키마 연결 테스트 코드
*/
package mysql.test;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;


public class TestMySQLConnect_Schema
{
 @Test
 public void TestConnect() throws Exception
 {
  Class.forName("com.mysql.cj.jdbc.Driver");

  // 자신의 환경에 적합하게 DB 이름 및 사용자/비밀번호를 수정하기 - dsdt는 스키마이름임(not table)
<<<<<<< HEAD
  try( Connection con = DriverManager.getConnection( "jdbc:mysql://127.0.0.1:3306/dsdt", "root", "mysql123" ) )
=======
  try( Connection con = DriverManager.getConnection( "jdbc:mysql://127.0.0.1:3306/dsdt", "root", "1234" ) )
>>>>>>> dev
  {
   System.out.println( "Connection success" );
  }
  catch( Exception e )
  {
   e.printStackTrace( );
  }
 }
}