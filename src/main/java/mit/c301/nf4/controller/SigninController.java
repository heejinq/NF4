package mit.c301.nf4.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import mit.c301.nf4.service.SigninService;
import mit.c301.nf4.vo.AddressVO;
import mit.c301.nf4.vo.SigninVO;

@Controller
public class SigninController {
	
	private SigninService ss;
	
	public SigninController(SigninService ss) {
		super();
		this.ss = ss;
	}

//	@RequestMapping("/")
//	public String Signin() {
//		return "signUp";
//	}
	
	@PostMapping("/signProcess")
	public String signProcess(Model model, SigninVO vo, AddressVO address) {
		String sumaddress = address.getSample4_roadAddress()+" "+address.getSample4_detailAddress()+" "+address.getSample4_extraAddress();
		vo.setAddress(sumaddress);
		if(ss.idCheck(vo.getId())==1) {
			model.addAttribute("check", "아이디가 존재합니다 다른 아이디를 선택해주세요.");
			return "/Signup";
		}
		else {
		ss.SignUser(vo);
		return "redirect:/signup?id="+vo.getId()+"&pw="+vo.getPw();}
	}
	
	@PostMapping("/idCheck")
	public String idCheck(Model model, SigninVO vo, AddressVO address) {
		if(ss.idCheck(vo.getId())==1) {
			model.addAttribute("check", "아이디가 존재합니다 다른 아이디를 선택해주세요.");
			model.addAttribute("vo",vo);
		} else {
			model.addAttribute("check", "사용가능한 아이디입니다.");
			model.addAttribute("vo",vo);
		}
			return "/Signup";
	}
	
	
	
	
	@PostMapping("/main")
	public void main() {
		
	}
}
