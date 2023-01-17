package mit.c301.nf4.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import mit.c301.nf4.service.ShoppingService;
import mit.c301.nf4.vo.All_questionVO;
import mit.c301.nf4.vo.Order_productVO;
import mit.c301.nf4.vo.PagingVO;
import mit.c301.nf4.vo.ProductVO;

@Controller
public class ShoppingController {
	
	private ShoppingService shoppingService; // 의존성주입
	private String id="b";
	
	public String getId() {
		return id;
	}

	@Autowired
	public void setService(ShoppingService shoppingService) {
		this.shoppingService = shoppingService;
	}
	// 시나몬
	@GetMapping("/")																			
	String main(Model model) {																			// 첫 화면
		model.addAttribute("productlist",shoppingService.product());
		return "/index";
	}
	
	@GetMapping("/index")																			
	String index(Model model) {																			// 첫 화면
		model.addAttribute("productlist",shoppingService.product());
		return "/index";
	}
		
	@GetMapping("/productlist")  																	// 상품상세리스트 page8
	String productlist(Model model,ProductVO productvo, PagingVO pagingVO){ // type과 gender를 갖고옴
		if (pagingVO.getPageNum()==0) {
			pagingVO.setPageNum(20);
		}
		pagingVO = new PagingVO(pagingVO.getNowPage(),pagingVO.getPageNum(),shoppingService.valueNumGT(productvo));
		model.addAttribute("gender", productvo.getGender());
		model.addAttribute("p_type", productvo.getP_type());
		model.addAttribute("productdetailslist", shoppingService.pagingProductList(productvo,pagingVO));
		model.addAttribute("pagingVO",pagingVO);
		
		return "/productlist";
	}
	
	@GetMapping("/rank")  																			
	String productrank(Model model,ProductVO productvo){												// 랭킹 page9
		model.addAttribute("rank_productlist", shoppingService.productrank(productvo));
		model.addAttribute("product_productlist", shoppingService.productrank2(productvo));
		return "/rank";
	}
	
	@GetMapping("/mypage_main")
	String Mypage_main_orderhistory(Model model) {	
		model.addAttribute("orderBreakdown_orderlist",shoppingService.orderhistory(this.getId()));		// 마이페이지 - 주문내역(주문정보) page10
		return "/mypage_main";
	}
	
	@GetMapping("/mypage_orderdetails")																	// 마이페이지 - 주문상세정보 page11
	String Mypage_orderdetails(Model model, int order_no) {		
		model.addAttribute("signin",shoppingService.signin(this.getId()));					// 회원정보 보내기
		model.addAttribute("order_info",shoppingService.orderinfo(order_no));				// 마이페이지 - 주문내역 - 주문상세정보(주문자,배송정보) page11
		model.addAttribute("orderdetailslist",shoppingService.orderdetails(order_no));		// 마이페이지 - 주문내역 - 주문상세정보(주문상품정보) page11	

		return "/mypage_orderdetails";	
	}
	
	@GetMapping("/mypage_deliverlist")
	String Mypage_deliverlist(Model model) {	

		shoppingService.shippingcheck(this.getId());
		model.addAttribute("ShippingCheck_ShippingChecklist",shoppingService.shippingcheck(this.getId()));	// 마이페이지 - 배송조회 page12			
		return "/mypage_deliverlist";
	}
	
	@GetMapping("/mypage_mywritelist")
	String Mypage_mywritelist(Model model) {	
		model.addAttribute("mywrite_All_Questionlist",shoppingService.mywritelist(this.getId()));			// 마이페이지 - 내가 쓴 글-전체문의 page13		
		model.addAttribute("mywrite_P_questionlist",shoppingService.mywritelist2(this.getId()));			// 마이페이지 - 내가 쓴 글-제품문의 page13	
		model.addAttribute("mywrite_Reviewlist",shoppingService.mywritelist3(this.getId()));				// 마이페이지 - 내가 쓴 글-리뷰       page13	
		return "/mypage_mywritelist";
	}

	
	@GetMapping("/mypage_interProduct")
	String Mypage_interproduct(Model model) {	
		model.addAttribute("pick_productlist",shoppingService.interproduct(this.getId()));					// 마이페이지 - 관심상품 - 찜한상품      page14	
		model.addAttribute("latest_productlist",shoppingService.interproduct2(this.getId()));				// 마이페이지 - 관심상품 - 최근 본 상품 page14	
		return "/mypage_interProduct";
	}

	@GetMapping("/mypage_myinfo")
	String Mypage_myinfo(Model model) {		
		model.addAttribute("signinlist",shoppingService.mypage_myinfo(this.getId()));						// 마이페이지 - 개인 정보 관리 page15

		return "/mypage_myinfo";
	}
	
	@GetMapping("/recommend") //랜덤으로 추천상품을 가져오기 위한 jsp부분 ?
	public String random_input(String id) {
			
		return "random_input";
	}
	
	// 희진쌤
	@PostMapping("/random_info")  //성별에 따라 추천상품을 가져오는 부분
	public String random_result(Model model, int gender, String id) {
//		shoppingService.pre_recommendView(id);
		int[] p_type= {1,2,3};
		
		List<ProductVO> volist = new ArrayList<ProductVO>();
		
		for(int temp:p_type) {
			ProductVO vo = shoppingService.recommendView(temp, gender);
			volist.add(vo);
		}
		model.addAttribute("random_info", volist);
		return "random_result";	
	}
	
	@GetMapping("/d_recommend") //랜덤으로 추천상품을 가져오기 위한 jsp부분 ?
	public String d_random_input(String id) {
			
		return "designer_random_input";
	}
	
	// 희진쌤
	@PostMapping("/designer_random_info")  //성별에 따라 추천상품을 가져오는 부분
	public String designer_random_result(Model model, int gender, String id) {
//		shoppingService.pre_recommendView(id);
		int[] p_type= {1,2,3};
		
		List<ProductVO> volist = new ArrayList<ProductVO>();
		
		for(int temp:p_type) {
			ProductVO vo = shoppingService.recommendView(temp, gender);
			volist.add(vo);
		}
		model.addAttribute("random_info", volist);
		return "designer_random_result";	
	}
	
	// 이나운
	@GetMapping("/customerService_inquiry")		//고객센터 - 문의게시판 목록
	void customerService_inquiry(Model model){
		model.addAttribute("q_list", shoppingService.q_list(this.getId()));
	}
	
	@GetMapping("/customerService_notice") 		//고객센터 - 공지게시판 목록
	void customerService_notice(Model model){
		model.addAttribute("a_list", shoppingService.a_list());
	}
	
	@GetMapping("/inputtext")		//글 쓰기
	void inputtext(Model model) {
		model.addAttribute("text","내용을 입력해주세요.");
	}
	
	@GetMapping("/inputsubmit")		//글 등록
	String inputsubmit(Model model, All_questionVO all_questionVO) {
		if(shoppingService.q_register(all_questionVO,getId())==1) {
			model.addAttribute("text", "입력이 완료되었습니다.");
		} else {
				model.addAttribute("text", "입력에 실패하였습니다.");
		}
		return "/successOrFail";
	}
	
//	@GetMapping("/mypage_mywritelist")		//문의게시판 글 제목 클릭 시 마이페이지-내가쓴글로 이동
//	void mypage_mywritelist(String id) {
//	}
	
	@GetMapping("/nologin_main")
	void nologin_main() {
		
	}
	
	
	
	
	
}
