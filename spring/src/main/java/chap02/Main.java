package chap02;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		AnnotationConfigApplicationContext ctx =
				new AnnotationConfigApplicationContext(AppContext.class);
		MemberController con = ctx.getBean("memberController", MemberController.class);
		for (int i=0; i<10; i++) {
			con.insert("홍길동");
		}
	}

}
