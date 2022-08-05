package kr.mr.myapp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.mr.model.ReplyVO;
import kr.mr.service.ReplyService;

@RestController // @Controller + @ResponseBody
@RequestMapping("/replies") // controller 안에 메소드에 uri를 간소하게 처리할 때 사용
public class ReplyController {
	@Autowired
	private ReplyService service;
	
	//consumes : 들어오는 데이터 타입을 정의할 때
	//produces : 반환하는 데이터 타입을 정의 
	//@RequestBody : Http Msg body안에 JSON 객체를 자바 객체로 변환
	//ResponseEntity 클래스는 리턴할 때 HTTP Status 코드를 데이터와 함께
	//전송해주는 클래스 --> 상태코드, 헤더값을 모두 프론트엔드에 넘겨 줌으로써
	//에러코드를 이용해서 섬세하게 제어를 할 수 있다.
	// 
	// 댓글 추가
	@PostMapping(value="/new",
				consumes = "application/json",
				produces = { MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> create(@RequestBody ReplyVO rvo) {
		
		System.out.println(rvo);
		
		int insertCnt = service.register(rvo);
		
		return insertCnt == 1 ? new ResponseEntity<String>("success", HttpStatus.OK)
			: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR); 
	}
	
	// 조회
	@GetMapping(value = "/{rep_num}",
			produces = {MediaType.APPLICATION_XML_VALUE,
						MediaType.APPLICATION_JSON_UTF8_VALUE})
	
	public ResponseEntity<ReplyVO> get(@PathVariable("rep_num") int rep_num){
		return new ResponseEntity<>(service.get(rep_num), HttpStatus.OK);
	}
	// 삭제
	@DeleteMapping(value = "/{rep_num}",
			produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> remove(@PathVariable("rep_num") int rep_num){
		
		return service.remove(rep_num) == 1 ? new ResponseEntity<String>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	// 수정
	@RequestMapping( value = "{rep_num}",
			method = {RequestMethod.PUT, RequestMethod.PATCH},
			produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> modify(@RequestBody ReplyVO rvo, 
			@PathVariable("rep_num") int rep_num){
		
		rvo.setRep_num(rep_num);
		
		return service.modify(rvo) == 1 ? new ResponseEntity<String>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR); 
	}
	
	// 특정 게시글의 댓글 목록 확인하기
	@GetMapping(value="/pages/{brd_num}",
			produces = {
					MediaType.APPLICATION_XML_VALUE,
					MediaType.APPLICATION_JSON_UTF8_VALUE
			})
	public ResponseEntity<List<ReplyVO>> getList(
				@PathVariable("brd_num") Integer brd_num
			){
		
		List<ReplyVO> list = service.getList(brd_num);
		System.out.println("list : "+ list);
		
		return new ResponseEntity<>(list, HttpStatus.OK);
	}
}


