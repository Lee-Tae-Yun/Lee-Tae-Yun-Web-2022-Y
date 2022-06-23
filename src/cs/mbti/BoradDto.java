package cs.mbti;

public class BoradDto {
	private String bid; //게시판 번호
	private String uid; //게시판 작성자 id
	private String boradtype; //성격 유형
	private String btitle; //게시판 제목
	private String borad; //게시판 내용
	private String bname; //글쓴이
	private String bdate; //작성날짜
	private int boradview; //게시판 조회수
	
	
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getBoradtype() {
		return boradtype;
	}
	public void setBoradtype(String boradtype) {
		this.boradtype = boradtype;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBorad() {
		return borad;
	}
	public void setBorad(String borad) {
		this.borad = borad;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	public int getBoradview() {
		return boradview;
	}
	public void setBoradview(int boradview) {
		this.boradview = boradview;
	}
	
	public BoradDto(String bid,String uid,String boradtype,String btitle,String borad,String bname,String bdate,int boradview) {
		this.setBid(bid);
		this.setUid(uid);
		this.setBoradtype(boradtype);
		this.setBtitle(btitle);
		this.setBorad(borad);
		this.setBname(bname);
		this.setBdate(bdate);
		this.setBoradview(boradview);
	}
	public BoradDto() { }
	}
	
