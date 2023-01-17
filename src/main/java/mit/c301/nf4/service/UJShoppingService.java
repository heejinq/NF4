package mit.c301.nf4.service;

import java.util.List;

import mit.c301.nf4.vo.CartmainVO;
import mit.c301.nf4.vo.P_questionVO;
import mit.c301.nf4.vo.ProductSizeVO;
import mit.c301.nf4.vo.ProductVO;
import mit.c301.nf4.vo.ReviewVO;
import mit.c301.nf4.vo.SigninVO;

public interface UJShoppingService {
	List<ProductVO> recommendView(int gender);
	
	List<ProductVO> product();

	ProductVO productselect(int p_no);

	List<ProductSizeVO> productSizelist(int p_type);

	List<ReviewVO> reviewlist(int p_no);

	List<P_questionVO> p_questionlist(int p_no);

	void p_questionset(P_questionVO questionvo);

	CartmainVO selectCart(int temp);

	List<CartmainVO> cartList(String id);

	void cartPlusCount(int p_no);

	void cartDelete(int p_no);

	SigninVO signinList(String id);

	int cartadd(int p_no, String id);

	int p_likeadd(int p_no, String id);

	void writereview(String r_content,String id, int p_no); 
	
}
