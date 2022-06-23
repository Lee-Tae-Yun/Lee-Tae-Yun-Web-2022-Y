package cs.mbti;

/**
 * 패키지명 : cs.dit}
 * 파일명 : LoginDto.java
 * 작성자 : LG
 * 프로그램 설명:login DB테이블의 데이터를 담는 클래스
 * 변경이력 : 2022 -04-28
 */
public class LoginDto {
	private String id; //아이디
	private String pwd; //비밀번호
	private String name; //이름
	private String chacter; //성격 유형
	private String udate; //생년월일
	private String pNumber; //전화번호
	private String email; //이메일
	private String gender; //성별
	
	

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

	public String getChacter() {
		return chacter;
	}

	public void setChacter(String chacter) {
		this.chacter = chacter;
	}

	public String getUdate() {
		return udate;
	}

	public void setUdate(String udate) {
		this.udate = udate;
	}

	public String getpNumber() {
		return pNumber;
	}

	public void setpNumber(String pNumber) {
		this.pNumber = pNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public LoginDto(String id,String pwd,String name,String chacter,String udate,String pNumber,String email,String gender) {
		this.setId(id);
		this.setPwd(pwd);
		this.setName(name);
		this.setChacter(chacter);
		this.setUdate(udate);
		this.setpNumber(pNumber);
		this.setEmail(email);
		this.setGender(gender);
		
	}
	public LoginDto() { }
	
	}
