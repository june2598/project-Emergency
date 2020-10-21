package kr.co.academy.board;

public class BoardReplyDTO {
	private int reno;
	private String rememo;
	private String redate;
	private String rewriter;
	private int bno;
	public int getReno() {
		return reno;
	}
	public void setReno(int reno) {
		this.reno = reno;
	}
	public String getRememo() {
		return rememo;
	}
	public void setRememo(String rememo) {
		this.rememo = rememo;
	}
	public String getRedate() {
		return redate;
	}
	public void setRedate(String redate) {
		this.redate = redate;
	}
	public String getRewriter() {
		return rewriter;
	}
	public void setRewriter(String rewriter) {
		this.rewriter = rewriter;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	@Override
	public String toString() {
		return "BoardReply [reno=" + reno + ", rememo=" + rememo + ", redate=" + redate + ", rewriter=" + rewriter
				+ ", bno=" + bno + "]";
	}
	
	
}
