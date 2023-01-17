package mit.c301.nf4.service;

import java.util.List;

import mit.c301.nf4.vo.All_questionVO;
import mit.c301.nf4.vo.AnnounceVO;
import mit.c301.nf4.vo.LikeinfoVO;
import mit.c301.nf4.vo.OrderBreakdownVO;
import mit.c301.nf4.vo.Order_infoVO;
import mit.c301.nf4.vo.Order_productVO;
import mit.c301.nf4.vo.OrderdetailsVO;
import mit.c301.nf4.vo.P_questionVO;
import mit.c301.nf4.vo.PagingVO;
import mit.c301.nf4.vo.ProductVO;
import mit.c301.nf4.vo.RecentVO;
import mit.c301.nf4.vo.ReviewVO;
import mit.c301.nf4.vo.ShippingCheckVO;
import mit.c301.nf4.vo.SigninVO;

public interface ShoppingService {
	// 시나몬
	List<ProductVO> product(); 								// 상품리스트
	
	List<ProductVO> productdetails(ProductVO productvo); 	// 상품상세리스트 page8
	
	List<ProductVO> productrank(ProductVO productvo);		// 상품 랭크 리스트(3개) page9
	
	List<ProductVO> productrank2(ProductVO productvo);		// 상품 랭크 리스트(8개) page9
	
	SigninVO signin(String id); 							// 회원정보 리스트
	
	Order_infoVO orderinfo(int order_no);					// 마이페이지 - 주문내역 - 주문상세정보(주문자,배송정보) page11
	
	List<OrderdetailsVO> orderdetails(int order_no);		// 마이페이지 - 주문내역 - 주문상세정보(주문상품정보) page11
	
	List<OrderBreakdownVO> orderhistory(String id);			// 마이페이지 - 주문내역+주문상품 page10
	
	List<ShippingCheckVO> shippingcheck(String id);			// 마이페이지 - 배송조회 page12

	List<All_questionVO> mywritelist(String id);			// 마이페이지 - 내가 쓴 글-전체문의 page13			
	
	List<P_questionVO> mywritelist2(String id);				// 마이페이지 - 내가 쓴 글-제품문의 page13			
	
	List<ReviewVO> mywritelist3(String id);					// 마이페이지 - 내가 쓴 글-리뷰 page13			
	
	List<LikeinfoVO> interproduct(String id);					// 마이페이지 - 관심상품-찜한상품 page14
	
	List<RecentVO> interproduct2(String id);				// 마이페이지 - 관심상품-최근 본 상품 page14
	
	SigninVO mypage_myinfo(String id);						// 마이페이지 - 개인 정보 관리 page15
	
	// 희진쌤
	ProductVO recommendView(int p_type, int gender);
	
	// 이나운
	List<All_questionVO> q_list(String id); //문의게시판 목록
	
	int q_register(All_questionVO all_questinoVO, String id); //문의 글 등록
	
	List<AnnounceVO> a_list(); //공지게시판 목록
	
	int valueNumGT(ProductVO productvo);

	List<ProductVO> pagingProductList(ProductVO productvo, PagingVO pagingVO);
	
}
