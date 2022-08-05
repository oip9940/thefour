package kr.mr.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.mr.mapper.BoardMapper;
import kr.mr.model.BoardVO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardMapper mapper;
	
	// QnA 게시판 리스트
	@Override
	public List<BoardVO> getList(BoardVO bvo) {
		return mapper.getList(bvo);
	}
	
	// QnA 게시판 등록
	@Override
	public void register(BoardVO board) {
		mapper.insert(board);
	}
	
	// QnA 게시판 상세보기
	@Override
	public BoardVO view(int brd_num, String mode) {
		return mapper.view(brd_num);
	}
	
	// QnA 게시판 삭제
	@Override
	public int remove(int brd_num) {
		return mapper.delete(brd_num);
	}
	
	// QnA 게시판 수정
	@Override
	public int modify(BoardVO board) {
		
		return mapper.update(board);
	}

	// QnA 게시판 Paging
	@Override
	public int totalCnt(BoardVO bvo) {
		
		return mapper.totalCnt(bvo);
	}
	
	// Notice 게시판 리스트
	@Override
	public List<BoardVO> noticeList(BoardVO bvo) {
		return mapper.noticeList(bvo);
	}
	// Notice 게시판 등록
	@Override
	public void notice_register(BoardVO board) {
		mapper.notice_insert(board);
	}
	
	// Notice 게시판 Paging
	@Override
	public int noticetotalCnt(BoardVO bvo) {
		
		return mapper.noticetotalCnt(bvo);
	}

}
