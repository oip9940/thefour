package kr.mr.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.mr.model.UserVO;

//@Mapper
public interface UserMapper {
	
	public List<UserVO> userList();
	
	public UserVO userInfo(int user_num);
	
	// 회원삭제
	public UserVO userDelete(int user_num);
		
	// 회원수정
	public UserVO userUpdate(UserVO uvo2);
		

	
	public void memberJoin(UserVO member);
	
	public int idCheck(String memberId);
	
	/* 로그인 */
    public UserVO memberLogin(UserVO login);
}
