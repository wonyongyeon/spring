package chap04;

import org.springframework.stereotype.Component;

/*
 * ~~Dao는 데이터 처리를 위한 클래스
 * DAO (Date Access Object)
 * 예) insert, select, update, delete....
 */

@Component // scan 해서 빈등록 대상 (memberDao라는 이름으로)
public class MemberDao {

	// db에 회원 등록하는 메서드
	public int insert(String name) {
		// db에 저장
		System.out.println(name + " 저장!!!");
		return 1; // 성공시 1리턴
	}
}
