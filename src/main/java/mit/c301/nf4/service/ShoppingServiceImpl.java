package mit.c301.nf4.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mit.c301.nf4.dao.ShoppingDAO;
import mit.c301.nf4.vo.All_questionVO;
import mit.c301.nf4.vo.AnnounceVO;
import mit.c301.nf4.vo.LikeinfoVO;
import mit.c301.nf4.vo.Limit_ProductlistVO;
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

@Service
public class ShoppingServiceImpl implements ShoppingService {

	private ShoppingDAO dao; // 의존성주입
	
	@Autowired
	public void setDao(ShoppingDAO dao) {
		this.dao = dao;
	}
	// 시나몬
	@Override
	public List<ProductVO> product() {  // 상품리스트
		return dao.product();
	}
	
	@Override
	public List<ProductVO> productdetails(ProductVO productvo) {  // 상품상세리스트 page8
		return dao.productdetails(productvo);
	}
			
	@Override
	public List<ProductVO> productrank(ProductVO productvo) {  // 상품 랭크 리스트(3개) page9
		return dao.productrank(productvo);
	}
	
	@Override
	public List<ProductVO> productrank2(ProductVO productvo) {  // 상품 랭크 리스트(8개) page9
		return dao.productrank2(productvo);
	}
	
	@Override
	public SigninVO signin(String id){ // 회원정보 리스트
		return dao.signin(id);
	}
	
	@Override
	public Order_infoVO orderinfo(int order_no){ 	// 마이페이지 - 주문내역 - 주문상세정보(주문자,배송정보) page11
		return dao.orderinfo(order_no);
	}
	
	@Override
	public List<OrderdetailsVO> orderdetails(int order_no){ // 마이페이지 - 주문내역 - 주문상세정보(주문상품정보) page11
		return dao.orderdetails(order_no);
	}
	
	@Override
	public List<OrderBreakdownVO>  orderhistory(String id){  // 마이페이지 - 주문내역+주문상품 page10
		return dao.orderhistory(id);
	}
	
	@Override
	public List<ShippingCheckVO> shippingcheck(String id){	// 마이페이지 - 배송조회 page12
		return dao.shippingcheck(id);
	}
	
	@Override
	public List<All_questionVO> mywritelist(String id){	// 마이페이지 - 내가 쓴 글-전체문의 page13		
		return dao.mywritelist(id);
	}
	
	@Override
	public List<P_questionVO> mywritelist2(String id){	// 마이페이지 - 내가 쓴 글-제품문의 page13
		return dao.mywritelist2(id);
	}
	
	@Override
	public List<ReviewVO> mywritelist3(String id){	// 마이페이지 - 내가 쓴 글-리뷰 page13	
		return dao.mywritelist3(id);
	}
			
	@Override
	public List<LikeinfoVO> interproduct(String id){	// 마이페이지 - 관심상품-찜한상품 page14
		return dao.interproduct(id);
	}
	
	@Override
	public List<RecentVO> interproduct2(String id){	// 마이페이지 - 관심상품-최근 본 상품 page14
		return dao.interproduct2(id);
	}
		
	@Override
	public SigninVO mypage_myinfo(String id){	// 마이페이지 - 개인 정보 관리 page15
		return dao.mypage_myinfo(id);
	}
	// 희진쌤
	@Override
	public ProductVO recommendView(int p_type,int gender) {		
		return dao.recommendView(p_type,gender);
	}
	
	// 나운쌤
	@Override
	public List<All_questionVO> q_list(String id) {	//문의게시판 목록 보여주기
		return dao.q_list(id);
	}

	@Override
	public List<AnnounceVO> a_list() {		//공지게시판 목록 보여주기
		return dao.a_list();
	}

	@Override
	public int q_register(All_questionVO all_questinoVO, String id) {	//문의 글 등록
		return dao.questionWrite(all_questinoVO, id);
	}
	@Override
	public int valueNumGT(ProductVO productvo) {
		return dao.valueNumGT(productvo);
	}
	
	@Override
	public List<ProductVO> pagingProductList(ProductVO productvo, PagingVO pagingVO) {
		
		Limit_ProductlistVO vo = new Limit_ProductlistVO(pagingVO.getPageNum(),pagingVO.getNowPage());
		vo.setType(productvo.getP_type());
		vo.setGender(productvo.getGender());
		System.out.println(vo.getStartLimit()+" / "+vo.getEndLimit()+" / "+vo.getPageNum());
		
		
		return dao.pagingProductList(vo);
	}
}