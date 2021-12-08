package junit5;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assumptions.assumeTrue;

import org.junit.jupiter.api.Test;

class Test2 {
	/*
	 * Assertions : 성공/실패 검증
	 * assertEquals(a,b) : a와 b가 같은지 검증
	 * assertTrue(a) : a가 true인지
	 * assertFalse(a) : a가 false인지
	 * assertNull(a) : a가 null인지
	 * assertNotNull(a) : a가 null이 아닌지
	 * assertArrayEquals(a,b) : a와b 배열이 같은지
	 */
	@Test
	void test() {
		String a = "홍길동";
		String b = "홍길동1";
		assertEquals(a, b);		
	}
	
	/*
	 * Assumptions : 성공한 경우에만 테스트 실행
	 * assumeEquals(a,b) : a와 b가 같은지 검증
	 * assumeTrue() : true인지
	 */
	
	@Test
	void test2() {
		assumeTrue(1 == 2);
		assertEquals("a", "a");	
	}
}
