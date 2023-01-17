package mit.c301.nf4.vo;

public class OrderdetailsVO {

	private String img_name;				// 상품(product) - 상품 이미지 이름 
	private String p_name;					// 상품(product) - 상품 이름
	private Integer pr_no;					// 주문정보(order_product) - 상품별 주문번호
	private Integer p_count;				// 주문정보(order_product) - 수량
	private Integer cost;					// 주문정보(order_product) - 할인전 주문가격
	private Integer order_info_order_no;	// 주문정보(order_product) - 주문정보의 주문번호
	private Integer product_p_no;			// 주문정보(order_product) - 상품의 상품번호
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
	public Integer getPr_no() {
		return pr_no;
	}
	public void setPr_no(Integer pr_no) {
		this.pr_no = pr_no;
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
