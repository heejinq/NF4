package mit.c301.nf4.service;

import java.util.List;
import java.util.Objects;

import org.springframework.stereotype.Service;

import mit.c301.nf4.dao.UJShoppingDAO;
import mit.c301.nf4.vo.CartVO;
import mit.c301.nf4.vo.CartmainVO;
import mit.c301.nf4.vo.P_questionVO;
import mit.c301.nf4.vo.ProductSizeVO;
import mit.c301.nf4.vo.ProductVO;
import mit.c301.nf4.vo.ReviewVO;
import mit.c301.nf4.vo.SigninVO;

@Service
public class UJShoppingServiceImpl implements UJShoppingService {

	private UJShoppingDAO dao;
	
	public UJShoppingServiceImpl(UJShoppingDAO dao) {
		super();
		this.dao = dao;
	}
	
	@Override
	public List<ProductVO> recommendView(int gender) {		
		return dao.recommendView(gender);
	}
	
	@Override
	public List<ProductVO> product() {
		return dao.product();
	}

	@Override
	public ProductVO productselect(int p_no) {
		return dao.productselect(p_no);
	}

	@Override
	public List<ProductSizeVO> productSizelist(int p_type) {
		return dao.productSizelist(p_type);
	}

	@Override
	public List<ReviewVO> reviewlist(int p_no) {
		return dao.reviewlist(p_no);
	}

	@Override
	public List<P_questionVO> p_questionlist(int p_no) {
		return dao.p_questionlist(p_no);
	}

	@Override
	public void p_questionset(P_questionVO questionvo) {
		dao.p_questionset(questionvo);
	}

	@Override
	public CartmainVO selectCart(int temp) {
		return dao.selectCart(temp);
	}

	@Override
	public List<CartmainVO> cartList(String id) {
		return dao.cartList(id);
	}

	@Override
	public void cartPlusCount(int p_no) {
		dao.cartPlusCount(p_no);
		
	}

	@Override
	public void cartDelete(int p_no) {
		dao.cartDelete(p_no);
		
	}

	@Override
	public SigninVO signinList(String id) {

		return dao.signinList(id);
	}

	@Override
	public int cartadd(int p_no, String id) {
		
		if(Objects.isNull(dao.cartone(p_no,id))) {
			dao.cartadd(p_no,id);
			return 0;
		}
		
		
		return 1;
		
	}

	@Override
	public int p_likeadd(int p_no, String id) {
		
		if(Objects.isNull(dao.p_likeone(p_no,id))) {
			dao.cartadd(p_no,id);
			return 0;
		}
		dao.p_likeadd(p_no,id);
		return 1;
	}

	@Override
	public void writereview(String r_content,String id, int p_no) {
		dao.writereview(r_content,id,p_no);
		
	}

}
