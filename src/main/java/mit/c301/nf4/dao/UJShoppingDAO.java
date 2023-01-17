package mit.c301.nf4.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import mit.c301.nf4.vo.CartVO;
import mit.c301.nf4.vo.CartmainVO;
import mit.c301.nf4.vo.P_likeVO;
import mit.c301.nf4.vo.P_questionVO;
import mit.c301.nf4.vo.ProductSizeVO;
import mit.c301.nf4.vo.ProductVO;
import mit.c301.nf4.vo.ReviewVO;
import mit.c301.nf4.vo.SigninVO;


public interface UJShoppingDAO {
	
	List<ProductVO> recommendView(int gender);
	
	List<ProductVO> product(); // 신상품,인기상품 등록

	ProductVO productselect(int p_no);

	List<ProductSizeVO> productSizelist(int p_type);

	List<ReviewVO> reviewlist(int p_no);

	List<P_questionVO> p_questionlist(int p_no);

	int p_questionset(P_questionVO questionvo);

	CartmainVO selectCart(int temp);

	List<CartmainVO> cartList(String id);

	int cartPlusCount(int p_no);

	int cartDelete(int p_no);

	SigninVO signinList(String id);

	int cartadd(@Param("p_no") int p_no,@Param("id") String id);

	CartVO cartone(@Param("p_no") int p_no,@Param("id") String id);

	int p_likeadd(int p_no, String id);

	P_likeVO p_likeone(int p_no, String id);

	int writereview(@Param("r_content") String r_content,@Param("id") String id,@Param("p_no")  int p_no);
	
}
