package kr.co.academy.manage;

public class Pagination {
	// 초기값 목록개수 10으로 셋팅
	private int listSize = 20;
	// 초기값 페이지범위를 10으로 셋팅
	private int rangeSize = 5;
	// 현재 페이지
	private int page;
	// 현제 페이지 범위
	private int range;
	// 총 게시물의 개수
	private int listCnt;
	// 총 페이지의 범위의 개수
	private int pageCnt;
	// 각 페이지 범위 시작 번호
	private int startPage;
	private int startList;

	// 각 페이지 범위 끝 번호
	private int endPage;
	// 이전 페이지
	private boolean prev;
	// 다음 페이지
	private boolean next;

	
	
	public int getRangeSize() {

		return rangeSize;

	}

	public int getPage() {

		return page;

	}

	public void setPage(int page) {

		this.page = page;

	}

	public int getRange() {

		return range;

	}

	public void setRange(int range) {

		this.range = range;

	}

	public int getStartPage() {

		return startPage;

	}

	public void setStartPage(int startPage) {

		this.startPage = startPage;

	}

	public int getEndPage() {

		return endPage;

	}

	public void setEndPage(int endPage) {

		this.endPage = endPage;

	}

	public boolean isPrev() {

		return prev;

	}

	public void setPrev(boolean prev) {

		this.prev = prev;

	}

	public boolean isNext() {

		return next;

	}

	public void setNext(boolean next) {

		this.next = next;

	}

	public int getListSize() {

		return listSize;

	}

	public void setListSize(int listSize) {

		this.listSize = listSize;

	}

	public int getListCnt() {

		return listCnt;

	}

	public void setListCnt(int listCnt) {

		this.listCnt = listCnt;

	}

	public int getStartList() {

		return startList;

	}
	//페이지 정보
	public void pageInfo(int page, int range, int listCnt) {

		this.page = page;

		this.range = range;

		this.listCnt = listCnt;

		// 전체 페이지수 
		// 전달 받은 전체 게시물 개수(listCnt)와 기본값으로 설정한 한 페이지당 목록 개수(listSize)를 이용해 전체 페이지 개수(pageCnt)
	
		this.pageCnt = (int) Math.ceil((double)listCnt / listSize);

		// 시작 페이지
		// 각 페이지 범위의 시작 번호 구함
		this.startPage = (range - 1) * rangeSize + 1;

		// 끝 페이지
	
		this.endPage = range * rangeSize;

		// 게시판 시작번호

		this.startList = (page - 1) * listSize;

		// 이전 버튼 상태

		this.prev = range == 1 ? false : true;

		// 다음 버튼 상태

		this.next = endPage > pageCnt ? false : true;

		if (this.endPage > this.pageCnt) {

			this.endPage = this.pageCnt;

			this.next = false;

		}

	}
}
