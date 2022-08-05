package kr.mr.myapp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.mr.mapper.FoodMapper;
import kr.mr.model.FoodVO;
import kr.mr.model.UserVO;



@Controller
public class FoodController {
	@Autowired
	private FoodMapper FoodMapper;
	
	//메뉴리스트 출력
	@RequestMapping("/admenulist.do")
	public String foodList(Model model) {
		List<FoodVO> list = FoodMapper.getList();
		model.addAttribute("list", list);
		return "main/admin_menu_list";
	}
	
	@RequestMapping("/admenuInfo.do")
	   public String memberInfo(int food_num, Model model) {
		   FoodVO fvo = FoodMapper.menuInfo(food_num);
		   model.addAttribute("fvo",fvo);
		   return "main/admin_menu_info";
	   }
	
	//메뉴 등록
	@RequestMapping("/menuInsert.do")
	public String menuInsert(FoodVO fvo) {

		int cnt = FoodMapper.menuInsert(fvo);
		
		return "redirect:admenulist.do";
	}
	
	//메뉴삭제
	@RequestMapping("/menuDelete.do")
	public String menuDelete(int food_num) {
		FoodMapper.menuDelete(food_num);
		
		return "redirect:/admenulist.do";
	}
	
	//메뉴수정
	@RequestMapping("/admenuUpdate.do")
	public String admenuUpdate(FoodVO fvo2, Model model) {
		FoodVO fvo = FoodMapper.admenuUpdate(fvo2);
		model.addAttribute("fvo",fvo);
		
		return "redirect:/admenulist.do";
	}
	

}
