package cs.mbti;

public class CommentDto {
	private String cnum;			// 댓글의 고유번호
	private String uid;				// 댓글작성자 id
	private String cbid;		    // 댓글 단 게시글 테이블의 글 번호
	private String cname;         	// 댓글 작성자
	private String cmt;	   			//댓글 내용
	private String cdate;			// 댓글 작성일
	private String chacter; 		//성격 유형
	
	
	public String getCnum() {
		return cnum;
	}
	public void setCnum(String cnum) {
		this.cnum = cnum;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getCbid() {
		return cbid;
	}
	public void setCbid(String cbid) {
		this.cbid = cbid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCmt() {
		return cmt;
	}
	public void setCmt(String cmt) {
		this.cmt = cmt;
	}
	public String getCdate() {
		return cdate;
	}
	public String getChacter() {
		return chacter;
	}
	public void setChacter(String chacter) {
		this.chacter = chacter;
	}
	public void setCdate(String cdate) {
		this.cdate = cdate;
	}
	public CommentDto(String cnum,String uid,String cbid,String cname,String cmt,String chacter,String cdate) {
		this.setCnum(cnum);
		this.setUid(uid);
		this.setCbid(cbid);
		this.setCname(cname);
		this.setCmt(cmt);
		this.setChacter(chacter);
		this.setCdate(cdate);
	}
	public CommentDto() { }
	
	}
	
