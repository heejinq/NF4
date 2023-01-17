package mit.c301.nf4.security.domain;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import lombok.Getter;
import mit.c301.nf4.domain.MemberVO;

@Getter
public class CustomUser extends User {
	
	private static final long seriaVersionID = 1L;
	private MemberVO member;

	public CustomUser(String name, String pw, Collection<? extends GrantedAuthority> authorities) {
		super(name, pw, authorities);
	}
	public CustomUser(MemberVO vo) {
		super(vo.getId(), vo.getPw(), vo.getAuthList().stream().map(auth -> new SimpleGrantedAuthority(auth.getAuth())).collect(Collectors.toList()));
		
		this.member = vo;
	}

}
