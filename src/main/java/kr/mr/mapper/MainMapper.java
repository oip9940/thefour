package kr.mr.mapper;

import java.util.List;

import kr.mr.model.FoodVO;

public interface MainMapper {	
	//메뉴리스트 받아오기
	public List<FoodVO> menuList();
}
