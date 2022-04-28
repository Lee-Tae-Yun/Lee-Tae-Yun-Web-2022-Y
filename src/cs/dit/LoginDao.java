package cs.dit;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/**
 * 패키지명 : cs.dit}
 * 파일명 : LoginDao.java
 * 작성자 : LG
 * 프로그램 설명: dbcp로 데이터베이스 연동
 * 변경이력 : 
 * 	-getConnection : dbcp에서 Connection 얻어오기
 *  -list() : login테이블에서 가져온 레코드를 Dto로 만들어 전달
 */

public class LoginDao {
	   private Connection getConnection() throws Exception{
			// Context 객체얻기
			Context initCtx = new InitialContext();
			// "java:comp/env" 에 해당하는 객체를 찾아서 envCtx에 삽입
			Context envCtx = (Context)initCtx.lookup ("java:comp/env");
			// "jdbc/taeyun" 에 해당하는 객체를 찾아서 ds에 삽입
			DataSource ds = (DataSource)envCtx.lookup("jdbc/taeyun");
			// 커넥션 풀로 부터 커넥션 객체를 얻어냄
			Connection con = ds.getConnection();
	      return con;
	      
	   }
	   public void insert(LoginDto dto) {
		    String sql = "insert into login(id, name, pwd) values(?, ?, ?)";
		   
		   try(Connection con = getConnection();
				   PreparedStatement pstmt = con.prepareStatement(sql);
				  
				   )
				   {
			   
		   pstmt.setString(1, dto.getId());
		   pstmt.setString(2, dto.getName());
		   pstmt.setString(3, dto.getPwd());
		   
		   int i = pstmt.executeUpdate();
		   
				   }catch(Exception e) {
					   e.printStackTrace();
				   }
		  
	   }

}
