package chap02;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration // spring 설정파일
public class AppContext {	
	
	// MemberController를 빈으로 등록
	@Bean
	public MemberController memberController() {
		MemberController con = new MemberController();
		// MemberService 객체를 주입
		con.setService(memberService());
		return con;
	}
	
	// MemberDao를 빈으로 등록
	@Bean
	public MemberDao memberDao() {
		return new MemberDao();
	}
	
	// MemberService를 빈으로 등록
	@Bean
	public MemberService memberService() {
//		MemberService service = new MemberService();
//		// MemberDao객체를 주입
//		service.setDao(memberDao());
//		return service;
		return new MemberService().setDao(memberDao());
	}	
}
