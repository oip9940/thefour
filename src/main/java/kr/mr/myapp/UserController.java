package kr.mr.myapp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.mr.mapper.UserMapper;
import kr.mr.model.UserVO;

@Controller
public class UserController {
   @Autowired
   private UserMapper userMapper;

   @RequestMapping("/admemberlist.do")
   public String userList(Model model) {
      List<UserVO> list = userMapper.userList();
      model.addAttribute("list", list);
      return "main/admin_memberlist";
   }
   
   @RequestMapping("/admemberinfo.do")
      public String userInfo(int user_num, Model model) {
         UserVO uvo = userMapper.userInfo(user_num);
         model.addAttribute("uvo",uvo);
         return "main/admin_memberinfo";
      }
   
   @RequestMapping("/admemberdelete.do")
      public String userDelete(int user_num, Model model) {
         UserVO uvo = userMapper.userDelete(user_num);
        
         return "redirect:/admemberlist.do";
      }
   
   
   @RequestMapping("/admemberupdate.do")
      public String userUpdate(UserVO uvo2, Model model) {
         UserVO uvo = userMapper.userUpdate(uvo2);
         model.addAttribute("uvo", uvo);      
         
         
         return "redirect:/admemberlist.do";
      }
   
}