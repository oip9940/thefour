package kr.mr.mapper;

import java.util.List;

import kr.mr.model.BoardVO;

// Persistenct Layer
// @Mapper
public interface BoardMapper {
	// QnA 게시판 리스트
	public List<BoardVO> getList(BoardVO bvo);

	// QnA 게시판 등록
	public void insert(BoardVO board);
	
	// QnA 게시판 상세보기
	public BoardVO view(int brd_num);
	
	// QnA 게시판 삭제
	public int delete(int brd_num);
	
	// QnA 게시판 수정
	public int update(BoardVO board);
	
	// QnA 게시글 개수
	public int totalCnt(BoardVO bvo);
	
	// Notice 게시판 리스트
	public List<BoardVO> noticeList(BoardVO bvo);
	
	// Notice 게시판 등록
	public void notice_insert(BoardVO board);
	
	// Notice 전체 게시글 개수
	public int noticetotalCnt(BoardVO bvo);
	
}
