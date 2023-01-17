package mit.c301.nf4.vo;

import java.util.Date;

public class Order_infoVO {

	private Integer order_no;			// 주문정보(order_info) - 주문 번호
	private Date pqd;				// 주문정보(order_info) - 주문 일자
	private Integer sale;				// 주문정보(order_info) - 판매가
	private Integer discount;			// 주문정보(order_info) - 할인
	private String delivery;		// 주문정보(order_info) - 배송정보
	private String message;			// 주문정보(order_info) - 배송메세지
	private String address;			// 주문정보(order_info) - 주소
	private String tel;				// 주문정보(order_info) - 전화 번호
	private String c_name;			// 주문정보(order_info) - 수취인
	private String copygrade;		// 주문정보(order_info) - 등급 카피
	private String signin_id;		// 주문정보(order_info) - 아이디	
	private Integer deliverno;			// 주문정보(order_info) - 송장 번호
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
	public Integer getDiscount() {
		return discount;
	}
	public void setDiscount(Integer discount) {
		this.discount = discount;
	}
	public String getDelivery() {
		return delivery;
	}
	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getCopygrade() {
		return copygrade;
	}
	public void setCopygrade(String copygrade) {
		this.copygrade = copygrade;
	}
	public String getSignin_id() {
		return signin_id;
	}
	public void setSignin_id(String signin_id) {
		this.signin_id = signin_id;
	}
	public Integer getDeliverno() {
		return deliverno;
	}
	public void setDeliverno(Integer deliverno) {
		this.deliverno = deliverno;
	}
	
	
	


}
