package mit.c301.nf4.service;

import mit.c301.nf4.vo.SigninVO;

public interface SigninService {

	int idCheck(String id);
	void SignUser(SigninVO vo);
}

