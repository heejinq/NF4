package mit.c301.nf4.domain;

import java.sql.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class MemberVO {
	private String id;
	private String name;
	private String pw;
	private String email;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date birth;
	private int gender;
	private String tel;
	private String address;
	private String h_answer;
	private int ran_count;
	private String hint_h_no;
	private String auth;
	private String enabled;
	
	private List<AuthVO> authList;
	
	
	
	
	
	
}
