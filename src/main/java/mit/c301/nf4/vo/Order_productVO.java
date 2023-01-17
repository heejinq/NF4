package mit.c301.nf4.vo;

public class Order_productVO {

	Integer p_no;					// 주문정보(order_product) - 상품별 주문번호
	Integer p_count;				// 주문정보(order_product) - 수량
	Integer cost;					// 주문정보(order_product) - 할인전 주문가격
	Integer order_info_order_no;	// 주문정보(order_product) - 주문정보의 주문번호
	Integer product_p_no;			// 주문정보(order_product) - 상품의 상품번호
	public Integer getP_no() {
		return p_no;
	}
	public void setP_no(Integer p_no) {
		this.p_no = p_no;
	}
	public Integer getP_count() {
		return p_count;
	}
	public void setP_count(Integer p_count) {
		this.p_count = p_count;
	}
	public Integer getCost() {
		return cost;
	}
	public void setCost(Integer cost) {
		this.cost = cost;
	}
	public Integer getOrder_info_order_no() {
		return order_info_order_no;
	}
	public void setOrder_info_order_no(Integer order_info_order_no) {
		this.order_info_order_no = order_info_order_no;
	}
	public Integer getProduct_p_no() {
		return product_p_no;
	}
	public void setProduct_p_no(Integer product_p_no) {
		this.product_p_no = product_p_no;
	}
	
		
	
}
