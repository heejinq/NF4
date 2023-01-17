package mit.c301.nf4.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import mit.c301.nf4.domain.MemberVO;
import mit.c301.nf4.mapper.MemberMapper;
import mit.c301.nf4.security.domain.CustomUser;

@Log4j
public class CustomUserDetailsService implements UserDetailsService {

	@Setter(onMethod_ = { @Autowired })
	private MemberMapper membermapper;
	
	@Override
	public UserDetails loadUserByUsername(String Name) throws UsernameNotFoundException {
		log.warn("load user by username : " + Name);
		
		MemberVO vo =membermapper.read(Name);
		log.warn("queried by member mapper : " + vo);
		return vo == null ? null : new CustomUser(vo);
		
	}

	
}
