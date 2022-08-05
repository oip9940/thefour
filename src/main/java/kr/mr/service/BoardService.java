package kr.mr.service;

import java.util.List;

import kr.mr.model.BoardVO;

public interface BoardService {
	public List<BoardVO> getList(BoardVO bvo); // QnA 게시글 리스트
	public void register(BoardVO board); // QnA 게시글 등록
	public BoardVO view(int brd_num, String mode); // QnA 게시글 상세보기
	public int remove(int brd_num); // QnA 게시글 삭제
	public int modify(BoardVO board); // QnA 게시글 수정
	public int totalCnt(BoardVO bvo); // QnA 게시글 paging
	
	public List<BoardVO> noticeList(BoardVO bvo); // Notice 게시글 리스트
	public void notice_register(BoardVO board); // Notice 게시글 등록
	public int noticetotalCnt(BoardVO bvo); // Notice 게시글 paging
	
	
}
