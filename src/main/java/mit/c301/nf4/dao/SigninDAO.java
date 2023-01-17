package mit.c301.nf4.dao;

import mit.c301.nf4.vo.SigninVO;


public interface SigninDAO {
	int SignUser(SigninVO vo);

	int idCheck(String id);
}
