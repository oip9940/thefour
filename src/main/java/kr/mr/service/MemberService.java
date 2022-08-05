package kr.mr.service;


import kr.mr.model.UserVO;

public interface MemberService {
	
	public void memberJoin(UserVO member) throws Exception;
	
	public int idCheck(String memberId) throws Exception;
	
	 /* 로그인 */
    public UserVO memberLogin(UserVO login) throws Exception;
    
}
