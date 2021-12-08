package chap04;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration // spring 설정파일
@ComponentScan(basePackages = {"chap04"}) // basePackges의 배열값(패키지)를 스캔해서 빈 등록시킴
public class AppContext {	
/*	
	// MemberController를 빈으로 등록
	@Bean
	public MemberController memberController() {
		MemberController con = new MemberController();
		// MemberService 객체를 주입
//		con.setService(memberService());
		return con;
	}
	
	// MemberDao를 빈으로 등록
	@Bean
	public MemberDao memberDao() {
		return new MemberDao();
	}
	
	// MemberService를 빈으로 등록
	@Bean
	public MemberService memberService() { // MemberController를 빈으로 등록과 달리 한줄로
//		MemberService service = new MemberService();
//		// MemberDao객체를 주입
//		service.setDao(memberDao());
//		return service;
//		return new MemberService().setDao(memberDao());
		return new MemberService();
		
	}
*/	
}
