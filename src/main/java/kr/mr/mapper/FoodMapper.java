package kr.mr.mapper;

import java.util.List;

import kr.mr.model.FoodVO;

//@Mapper
public interface FoodMapper {
	//메뉴리스트 받아오기
	public List<FoodVO> getList();

	public FoodVO menuInfo(int food_num);
	
	//메뉴등록
	public int menuInsert (FoodVO fvo);
	
	//메뉴삭제
	public int menuDelete(int food_num);

	//메뉴수정
	public FoodVO admenuUpdate(FoodVO fvo2);
	


}
