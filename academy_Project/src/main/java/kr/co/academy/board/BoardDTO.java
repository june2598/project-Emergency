package kr.co.academy.board;

public class BoardDTO {
	//이름은 원하는 단어로 교체 가능! 필요 시 추가 가능!
	//다른 사람 파트 변경 필요 시 카톡방 연락!
	
	//postNum 게시글 고유번호(기본키) 
	private int bno;
	//id 작성자
	private String btitle;
	//글제목
	private String id;
	//content 글 내용
	private String bcontent;
	//regdate 작성 일
	private String regdate;
	//boardNum 게시판 고유번호(0=공지사항/1=학원소식/2=고객상담 등...)
	private int bselect;
	//del 삭제 시 0(존재), 1(삭제)
	private int bdel;
	//카운트
	private int breadcnt;
	//파일이름
	private String bfilename;
	
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getBselect() {
		return bselect;
	}
	public void setBselect(int bselect) {
		this.bselect = bselect;
	}
	public int getBdel() {
		return bdel;
	}
	public void setBdel(int bdel) {
		this.bdel = bdel;
	}
	public int getBreadcnt() {
		return breadcnt;
	}
	public void setBreadcnt(int breadcnt) {
		this.breadcnt = breadcnt;
	}
	public String getBfilename() {
		return bfilename;
	}
	
	public void setBfilename(String bfilename) {
		this.bfilename = bfilename;
	}
	@Override
	public String toString() {
		return "BoardDTO [bno=" + bno + ", btitle=" + btitle + ", id=" + id + ", bcontent=" + bcontent + ", regdate="
				+ regdate + ", bselect=" + bselect + ", bdel=" + bdel + ", breadcnt=" + breadcnt + ", bfilename="
				+ bfilename + "]";
	}
	
	
}
