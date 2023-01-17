package mit.c301.nf4.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mit.c301.nf4.dao.SigninDAO;
import mit.c301.nf4.vo.SigninVO;


@Service
public class SigninServiceImpl implements SigninService {

	private SigninDAO dao;
	
	@Autowired
	public void setDao(SigninDAO dao) {
		this.dao = dao;
	}


	@Override
	public void SignUser(SigninVO vo) {
		dao.SignUser(vo);
	}


	@Override
	public int idCheck(String id) {
	
		return dao.idCheck(id);
	}

}
