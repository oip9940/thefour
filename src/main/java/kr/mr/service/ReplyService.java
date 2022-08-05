package kr.mr.service;

import java.util.List;

import kr.mr.model.ReplyVO;

public interface ReplyService {
	public int register(ReplyVO rvo);
	
	public ReplyVO get(int rep_num);
	
	public int modify(ReplyVO rvo);
	
	public int remove(int rep_num);
	
	public List<ReplyVO> getList(Integer brd_num);
}
