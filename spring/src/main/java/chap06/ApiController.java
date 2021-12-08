package chap06;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

/*
 * RestAPI 컨트롤러
 */

@RestController
public class ApiController {
	
	@Autowired
	BoardService boardService;
	
	/*
	 * 파라미터를 받는 4번째 방법
	 * @PathVariable
	 * - /api/list/1 -> 1페이지
	 * - /api/list/2 -> 2페이지
	 */
	
	@GetMapping("/api/list/{page}/{searchWord}")
	public List<BoardVo> list(@PathVariable int page, BoardVo vo) {
		System.out.println("page : "+page);
//		System.out.println("searchWord : "+searchWord);		
		List<BoardVo> list = boardService.selectList(vo);
		return list;
	}
}




























