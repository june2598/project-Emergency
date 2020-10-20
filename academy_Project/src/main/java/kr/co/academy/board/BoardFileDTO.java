package kr.co.academy.board;

public class BoardFileDTO {
	private int bfselect; //게시판 명
	private int bfilefrom; // 몇번 게시물인지
	private String bfilerealpath; // 실제 주소
	private String bfileviewpath; // 상대 주소
	
	
	public BoardFileDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BoardFileDTO(int bfselect, int bfilefrom, String bfilerealpath, String bfileviewpath) {
		super();
		this.bfselect = bfselect;
		this.bfilefrom = bfilefrom;
		this.bfilerealpath = bfilerealpath;
		this.bfileviewpath = bfileviewpath;
	}

	public int getBfselect() {
		return bfselect;
	}
	public void setBfselect(int bfselect) {
		this.bfselect = bfselect;
	}
	public int getBfilefrom() {
		return bfilefrom;
	}
	public void setBfilefrom(int bfilefrom) {
		this.bfilefrom = bfilefrom;
	}
	public String getBfilerealpath() {
		return bfilerealpath;
	}
	public void setBfilerealpath(String bfilerealpath) {
		this.bfilerealpath = bfilerealpath;
	}
	public String getBfileviewpath() {
		return bfileviewpath;
	}
	public void setBfileviewpath(String bfileviewpath) {
		this.bfileviewpath = bfileviewpath;
	}
	@Override
	public String toString() {
		return "BoardFileDTO [bfselect=" + bfselect + ", bfilefrom=" + bfilefrom + ", bfilerealpath=" + bfilerealpath
				+ ", bfileviewpath=" + bfileviewpath + "]";
	}
	
	
	
	
	
	
}
