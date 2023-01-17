package mit.c301.nf4.vo;

import java.util.Date;

public class ShippingCheckVO {

	private String id;  		// 회원(signin) - 아이디
	
	private Integer order_no;  		// 주문정보(order_info) - 주문 번호
	private Date pqd;			// 주문정보(order_info) - 날짜
	private Integer sale;			// 주문정보(order_info) - 실구매가
	
	private String p_name;		// 상품(product) - 상품명

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

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

	public Integer getSale() {
		return sale;
	}

	public void setSale(Integer sale) {
		this.sale = sale;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	

	
}