package mit.c301.nf4.vo;

public class PagingVO {
	
	private int nowPage;	// 현재페이지
	private int endPage;	// 마지막페이지
	private int pageNum=0;	// 한 페이지에 보여줄 값 갯수
	private int valueNum;	// 값의 총 갯수
	private int screenNum;	// 한 화면에 보여줄 총 페이지 수
	private int startScreenPage;	// 현재 페이지의 시작 페이지
	private int endScreenPage;	// 현재 페이지의 마지막 페이지
	private int ifNum;	// 현재페이지 / 한페이지에 보여줄 값 갯수 (나중에 계산을 위해 필요)
	
	public PagingVO() {	// 
		this.setNowPage(1);
	}
	
	public PagingVO(int nowPage, int pageNum){	// 초기 진입시(화면 구현갯수포함)
		this.setNowPage(nowPage);
		this.setPageNum(pageNum);
	}
	
	public PagingVO(int nowPage, int pageNum, int valueNum){	// 재 진입시
		this.setNowPage(nowPage);	
		this.setPageNum(pageNum);
		this.setValueNum(valueNum);
		this.setScreenNum(10); // 왠만하면 항상 10개이기 때문에 10으로 고정
		
		this.ifNum=valueNum%pageNum; // 여러 계산을 위한 나머지값 생성
		
		if(this.ifNum==0) {	// 여기서 ifnum은 나머지를 통해 1페이지를 추가해주게 하는 역할
			this.endPage=this.valueNum/this.pageNum; // 전체 페이지/한페이지에 보여줄 갯수
		} else {
			this.endPage=this.valueNum/this.pageNum+1; // 만약 나머지가 있다면 1개 더
		}
							// -1은 현재 페이지의 마지막 페이지일때 나는 오류 방지
		this.startScreenPage=((this.nowPage-1)/this.screenNum)*this.screenNum+1; // 시작 페이지
		
		this.endScreenPage=((this.nowPage-1)/this.screenNum+1)*this.screenNum;	// 끝 페이지
		
		if(this.endScreenPage>this.endPage) { // 만약 현재 페이지의 마지막 페이지가 마지막 페이지보다 클 때 변환
			this.endScreenPage=this.endPage;  // 현재 페이지가 60인데 마지막페이지가 56일때 등 마지막에 오류가 나지 않게 방지
		}
		
		
	}

	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getValueNum() {
		return valueNum;
	}

	public void setValueNum(int valueNum) {
		this.valueNum = valueNum;
	}

	public int getScreenNum() {
		return screenNum;
	}

	public void setScreenNum(int screenNum) {
		this.screenNum = screenNum;
	}

	public int getStartScreenPage() {
		return startScreenPage;
	}

	public void setStartScreenPage(int startScreenPage) {
		this.startScreenPage = startScreenPage;
	}

	public int getEndScreenPage() {
		return endScreenPage;
	}

	public void setEndScreenPage(int endScreenPage) {
		this.endScreenPage = endScreenPage;
	}

	public int getIfNum() {
		return ifNum;
	}

	public void setIfNum(int ifNum) {
		this.ifNum = ifNum;
	}

	
	
}
