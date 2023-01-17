package mit.c301.nf4.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import mit.c301.nf4.service.UJShoppingService;
import mit.c301.nf4.vo.CartmainVO;
import mit.c301.nf4.vo.P_questionVO;
import mit.c301.nf4.vo.ProductVO;

@Controller
public class UJShoppingController {
	

	private UJShoppingService shoppingService; //쇼핑 서비스
	private String id="user0";
	private int p_no=560;
	
	
	
	public String getId() {
		return id;
	}


	public int getP_no() {
		return p_no;
	}


	public UJShoppingController(UJShoppingService shoppingService) {
		super();
		this.shoppingService = shoppingService;
	}

	
	@GetMapping("/product_info")
	public String product_info(Model model, int p_no) {
		ProductVO vo = shoppingService.productselect(p_no);
		model.addAttribute("id",this.getId());	// 제품정보가져오기
		model.addAttribute("productone_productinfo",vo);	// 제품정보가져오기
		model.addAttribute("size_sizelist", shoppingService.productSizelist(vo.getP_type()));	// 사이즈가져오기
		model.addAttribute("review_writelist",shoppingService.reviewlist(p_no));	// 리뷰 목록
		model.addAttribute("pqestion_writelist",shoppingService.p_questionlist(p_no));	// 문의 목록
		return "/product_info";
	}
	
	@GetMapping("/setreply")
	public String setreply(Model model, P_questionVO questionvo) {
		shoppingService.p_questionset(questionvo);// set 답변내용
		ProductVO vo = shoppingService.productselect(questionvo.getProduct_p_no());
		model.addAttribute("productone_productinfo",vo);	// 제품정보가져오기
		model.addAttribute("size_sizelist", shoppingService.productSizelist(vo.getP_type()));	// 사이즈가져오기
		model.addAttribute("review_writelist",shoppingService.reviewlist(questionvo.getProduct_p_no()));	// 리뷰 목록
		model.addAttribute("pqestion_writelist",shoppingService.p_questionlist(questionvo.getProduct_p_no()));	// 문의 목록
		return "/product_info";
	}
	
	@GetMapping("/cart_main")  
	public void cart_main(Model model) {
		List<CartmainVO> cartlistvo=shoppingService.cartList(this.getId());
//		int cartcount=0;
		int allsum=0;
		for (CartmainVO temp : cartlistvo) {
			allsum=allsum+temp.getAllsale();
//			cartcount+=2000;
		}
		
		int discount = (int)(allsum*0.05);
		int price=allsum-discount;	//+cartcount;
		model.addAttribute("price",price);
//		model.addAttribute("cartcount",cartcount);
		model.addAttribute("discount",discount);
		model.addAttribute("allsum",allsum);
		model.addAttribute("cartlist_productlist", cartlistvo);
	}
	
	@GetMapping("/cartPlusCount") // 왜 만들었을까.
	public String cartPlusCount(Model model, int p_no) {
		shoppingService.cartPlusCount(p_no);
		return "redirect:/cart_main";
	}
	
	@GetMapping("/cartDelete")  // 선택삭제
	public String cartDelete(Model model, Integer[] p_no) {
		
		System.out.println("하이하이");
		
		for(int temp:p_no) {
			System.out.println(temp);
			shoppingService.cartDelete(temp);
			
		}
		
		return "redirect:/cart_main";
	}
	
	@GetMapping("/cart_buy") // (선택)구매하기
	public void cart_main(Model model, Integer[] p_no) {
		
		// 주문, 카트, 상품 정보
		List<CartmainVO> volist = new ArrayList<CartmainVO>();
		int allsum=0;
		for(int temp:p_no) {
			System.out.println(temp);
			CartmainVO vo = shoppingService.selectCart(temp);
			allsum=allsum+vo.getAllsale();
			volist.add(vo);
		}
		int discount = (int)(allsum*0.05);
		int price=allsum-discount;
		model.addAttribute("allsum", allsum);
		model.addAttribute("price", price);
		model.addAttribute("discount", discount);
		model.addAttribute("selectCart_productlist", volist);
		
		// 회원 정보
		model.addAttribute("userinfo_userlist",shoppingService.signinList(this.getId()));
		
	}
	
	@GetMapping("/cart_add") // 제품정보에서 장바구니에 담기
	public String cart_add(Model model, int p_no) {
		shoppingService.cartadd(p_no,this.getId());
		
		
		return "redirect:/cart_main";
		
	}
	
	@GetMapping("/p_likeadd") // 제품정보에서 장바구니에 담기
	public String p_likeadd(Model model, int p_no) {
		shoppingService.p_likeadd(p_no,this.getId());
		
		
		return "redirect:/product_info?p_no"+p_no;
		
	}
	
	@GetMapping("/writereview")
	public String writereview(String r_content,int p_no) {
		shoppingService.writereview(r_content,this.getId(),p_no);
		return "redirect:/product_info?p_no="+p_no;
	}
	
	@GetMapping("/membership")
	public void membership(int p_no) {
	}
	
	
	
}
