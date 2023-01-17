package mit.c301.nf4.vo;

import java.util.Date;

public class P_questionVO {

	private int p_no;
	private String p_content;
	private Date pqd;
	private String reply;
	private String name;
	private String p_title;
	private String signin_id;
	private int product_p_no;
	
	public int getP_no() {
		return p_no;
	}
	public void setP_no(int p_no) {
		this.p_no = p_no;
	}
	public String getP_content() {
		return p_content;
	}
	public void setP_content(String p_content) {
		this.p_content = p_content;
	}
	public Date getPqd() {
		return pqd;
	}
	public void setPqd(Date pqd) {
		this.pqd = pqd;
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
	public String getP_title() {
		return p_title;
	}
	public void setP_title(String p_title) {
		this.p_title = p_title;
	}
	public String getSignin_id() {
		return signin_id;
	}
	public void setSignin_id(String signin_id) {
		this.signin_id = signin_id;
	}
	public int getProduct_p_no() {
		return product_p_no;
	}
	public void setProduct_p_no(int product_p_no) {
		this.product_p_no = product_p_no;
	}
	
	
}
