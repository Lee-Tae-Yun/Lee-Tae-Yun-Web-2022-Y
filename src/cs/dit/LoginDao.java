package cs.dit;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

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
 *  -checkUesr() : 유효한 사용자인지 아닌지 판별하는 메소드
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
	   //list() : 데이터 조회
	   //메소드 작성 시 고려사항
	   //1. public / private
	   //2. 반환 데이터 (output)
	   //3. 입력 데이터 (input)
	   
	   public ArrayList<LoginDto> list(){
		   
		   ArrayList<LoginDto> dtos = new ArrayList<LoginDto>();
		   
		   String sql = "select id,name,pwd from login";
		   
		   try(
				   
				   Connection con = getConnection(); //커넥션 얻기
				   Statement stmt = con.createStatement(); //
				   
			  )
		   {
			   
			  ResultSet rs = stmt.executeQuery(sql);
			  while(rs.next()) {
				  //1. 레코드셋에서 데이터를 가져온다.
		
				  String id = rs.getString("id");
				  String name = rs.getString("name");
				  String pwd = rs.getString("pwd");
				  
				  //2. 그 데이터들을 LoginDto로 만든다.
				  
				  LoginDto dto = new LoginDto(id,name,pwd);
				  
				  //3. 그 LoginDto를 배열(ArrayList)에 추가한다.
				  dtos.add(dto);
			  }
				  
				  
		} catch (Exception e) {
			e.printStackTrace();
		}
		   
		   
		   return dtos;
	   }
	   
	   //메소드 작성 시 고려사항
	   //1. public / private
	   //2. 반환 데이터 (output)
	   //3. 입력 데이터 (input)
	   public int checkUser(String id, String pwd) {
		   	String sql = "select pwd from login where id=? and pwd=?";
		   	int check = 0;
		   
		   try(
				   
				   Connection con = getConnection(); //커넥션 얻기
				   PreparedStatement pstmt = con.prepareStatement(sql); //실행 준비

			  )
				   
		   {
			   pstmt.setNString(1, id);
			   pstmt.setNString(2, pwd);
			  try (ResultSet rs = pstmt.executeQuery();){
				  if (rs.next()) {
					  check = 1;
				  }
				  else {
					  check = 0;
				  }
			  }
			  catch (Exception e) {
					e.printStackTrace();
				}
				  
				  
		   	}catch (Exception e) {
					e.printStackTrace();
				}
				   		   
		   return check;
	   }

}
