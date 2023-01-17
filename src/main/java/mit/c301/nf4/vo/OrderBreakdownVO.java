package mit.c301.nf4.vo;

import java.util.Date;

public class OrderBreakdownVO {

	private Integer order_no;  		// 주문정보(order_info) - 주문 번호
	private Date pqd;			// 주문정보(order_info) - 날짜
	
	private Integer p_count;		// 주문상품(order_product) - 수량
	
	private String img_name; 	// 상품(product) - 이미지 파일 이름
	private String p_name;		// 상품(product) - 상품명
	private String p_sale;		// 상품(product) - 가격
	public Integer getOrder_no() {
		return order_no;
	}
	public void setOrder_no(Integer order_no) {
		this.order_no = order_no;
	}
	public Date getPqd() {
		return pqd;
	}
	public void setPqd(Date pqd) {
		this.pqd = pqd;
	}
	public Integer getP_count() {
		return p_count;
	}
	public void setP_count(Integer p_count) {
		this.p_count = p_count;
	}
	public String getImg_name() {
		return img_name;
	}
	public void setImg_name(String img_name) {
		this.img_name = img_name;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_sale() {
		return p_sale;
	}
	public void setP_sale(String p_sale) {
		this.p_sale = p_sale;
	}
	
	

}