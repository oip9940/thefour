package kr.mr.mapper;


import kr.mr.model.UserVO;

public interface MemberMapper {
	
	public void memberJoin(UserVO member);
	
	public int idCheck(String memberId);
	
	/* 로그인 */
    public UserVO memberLogin(UserVO login);
	
}
