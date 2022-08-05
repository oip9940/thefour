package kr.mr.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.mr.mapper.ReplyMapper;
import kr.mr.model.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService{
	
	@Autowired
	private ReplyMapper mapper;
	
	@Override
	public int register(ReplyVO rvo) {
		return mapper.insert(rvo);
	}	
	@Override
	public ReplyVO get(int rep_num) {
		return mapper.read(rep_num);
	}	
	@Override
	public int modify(ReplyVO rvo) {
		return mapper.update(rvo);
	}	
	@Override
	public int remove(int rep_num) {		
		return mapper.delete(rep_num);
	}
	
	@Override
	public List<ReplyVO> getList(Integer brd_num) {
		
		return mapper.getListBybrd_num(brd_num);
	}
}
