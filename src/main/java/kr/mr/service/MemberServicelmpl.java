package kr.mr.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import kr.mr.mapper.UserMapper;
import kr.mr.model.UserVO;

@Service
public class MemberServicelmpl implements MemberService {
	
	@Autowired
	UserMapper membermapper;
	
	@Override
	public void memberJoin(UserVO member) throws Exception {
		// TODO Auto-generated method stub
		membermapper.memberJoin(member);
		
	}
	
	/* 로그인 */
    @Override
    public UserVO memberLogin(UserVO login) throws Exception {
        
        return membermapper.memberLogin(login);
    }
    
    @Override
	public int idCheck(String memberId) throws Exception {
		
		return membermapper.idCheck(memberId);
	}
	

}
