package cs.dit;

/**
 * 패키지명 : cs.dit}
 * 파일명 : LoginDto.java
 * 작성자 : LG
 * 프로그램 설명:login DB테이블의 데이터를 담는 클래스
 * 변경이력 : 2022 -04-28
 */
public class LoginDto {
	private String id;
	private String pwd;
	private String name;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public LoginDto(String id,String name,String pwd) {
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		
	}
	
	public LoginDto() { }
	}
