package mit.c301.nf4.vo;

import java.util.Date;

public class ProductVO {
	private int p_no;
	private int p_type;
	private String img_name;
	private float star;
	private int gender;
	private int length;
	private String p_content;
	private int p_sale;
	private String p_name;
	private Date p_registerdate;
	
	
	public int getP_no() {
		return p_no;
	}
	public void setP_no(int p_no) {
		this.p_no = p_no;
	}
	public int getP_type() {
		return p_type;
	}
	public void setP_type(int p_type) {
		this.p_type = p_type;
	}
	public String getImg_name() {
		return img_name;
	}
	public void setImg_name(String img_name) {
		this.img_name = img_name;
	}
	public float getStar() {
		return star;
	}
	public void setStar(float star) {
		this.star = star;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public int getLength() {
		return length;
	}
	public void setLength(int length) {
		this.length = length;
	}
	public String getP_content() {
		return p_content;
	}
	public void setP_content(String p_content) {
		this.p_content = p_content;
	}
	public int getP_sale() {
		return p_sale;
	}
	public void setP_sale(int p_sale) {
		this.p_sale = p_sale;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public Date getP_registerdate() {
		return p_registerdate;
	}
	public void setP_registerdate(Date p_registerdate) {
		this.p_registerdate = p_registerdate;
	}
	
	
}
