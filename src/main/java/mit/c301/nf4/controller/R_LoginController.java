package mit.c301.nf4.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import mit.c301.nf4.domain.MemberVO;

@Controller
@Log4j

public class R_LoginController {
	

	
	@Setter(onMethod_ = @Autowired)
	private PasswordEncoder pwencoder;
	@Setter(onMethod_ = @Autowired)
	private DataSource ds;
	
	
	
	@GetMapping("/accessError")
	public void accessError(Authentication auth,Model model) {
		model.addAttribute("msg","Access Denied");
		
	}
	
	@GetMapping("/customLogin")
	public void customLogin(String error,String logout, Model model) {
		if(error != null) {
			model.addAttribute("error","Login Error Check Your Account");
		}
		if(logout != null) {
			model.addAttribute("logout","Logout!");
		}
	}
	
	@GetMapping("/customLogout")
	public void customLogout() {
		
	}
	
	@GetMapping("/Signup") //이건 대문자
	public void Signup(){
		
	}
	
	@GetMapping("/signup") //이건 소문자
	public String insertsignup(MemberVO vo) {
		System.out.println("진입하니");
		String sql = "update signin set pw=? where id=?";

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, pwencoder.encode(vo.getPw()));

			pstmt.setString(2, vo.getId());
//			pstmt.setString(2, vo.getName());
//			pstmt.setString(3, vo.getPw());
//			pstmt.setString(4, vo.getEmail());
//			pstmt.setDate(5, vo.getBirth());
//			pstmt.setInt(6, vo.getGender());
//			pstmt.setString(7, vo.getTel());
//			pstmt.setString(8, vo.getAddress());
//			pstmt.setString(9, vo.getH_answer());


			pstmt.executeUpdate();
			System.out.println("성공인가..");
		} catch (Exception e) {
			System.out.println("왜지..");
			e.printStackTrace();
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (Exception e) {
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
				}
			}
				System.out.println("fin");
		}
		return "redirect:/getauth?id="+vo.getId();
	}
	
	@GetMapping("/getauth")
	public String isnertauth(String id) { //여기는 권한탭
		String sql = "insert into auth(id,auth) values(?,?)";
		
			Connection con = null;
			PreparedStatement pstmt = null;

			try {
				con = ds.getConnection();
				pstmt = con.prepareStatement(sql);
						
//				pstmt.setString(2, pwencoder.encode("pw" + i));
				
					pstmt.setString(1, id);
					pstmt.setString(2, "ROLE_MEMBER");
				
				pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if (pstmt != null) {
					try {
						pstmt.close();
					} catch (Exception e) {
					}
				}
				if (con != null) {
					try {
						con.close();
					} catch (Exception e) {
					}
				}
			
		} // end for
			return "/customLogin";
	}
	
	
	
	

}
