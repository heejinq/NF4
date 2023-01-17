package mit.c301.nf4.vo;

public class Limit_ProductlistVO {

	private int type;
	private int gender;
	private int startLimit;
	private int endLimit;
	private int pageNum;
	private int nowPage;
	private String id;
	
	public Limit_ProductlistVO(int pageNum,int nowPage) {
		this.setNowPage(nowPage);
		this.setPageNum(pageNum);
		
		this.endLimit=pageNum*nowPage;	// oracle, startLimit를 위해 남겨둠(현재는 안씀)
		this.startLimit=this.endLimit-pageNum;	// 원래 +1해야 맞지만 mysql은 0부터 시작하므로 -1
		
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public int getStartLimit() {
		return startLimit;
	}

	public void setStartLimit(int startLimit) {
		this.startLimit = startLimit;
	}

	public int getEndLimit() {
		return endLimit;
	}

	public void setEndLimit(int endLimit) {
		this.endLimit = endLimit;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	
	
	
	
}
