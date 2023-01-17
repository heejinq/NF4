package mit.c301.nf4.vo;

import java.util.Date;

public class ReviewVO {
	private int r_no;
	private String r_content;
	private String reply;
	private String name;
	private Date pqd;
	private float r_star;
	private String id;
	private int product_p_no;
	public int getR_no() {
		return r_no;
	}
	public void setR_no(int r_no) {
		this.r_no = r_no;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getPqd() {
		return pqd;
	}
	public void setPqd(Date pqd) {
		this.pqd = pqd;
	}
	public float getR_star() {
		return r_star;
	}
	public void setR_star(float r_star) {
		this.r_star = r_star;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getProduct_p_no() {
		return product_p_no;
	}
	public void setProduct_p_no(int product_p_no) {
		this.product_p_no = product_p_no;
	}
	
	
	
}
