package kr.mr.myapp;

import java.util.List;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.mr.mapper.MainMapper;
import kr.mr.model.FoodVO;
import kr.mr.model.UserVO;
import kr.mr.service.MemberService;

@Controller
public class MainController {
	
private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	private MainMapper MainMapper;

    @Autowired
    private JavaMailSender mailSender;
	
	
	@Autowired
	private MemberService memberservice;
	
	@RequestMapping(value="/home.do", method=RequestMethod.POST)
	public String homePOST(UserVO member) throws Exception {
		
		memberservice.memberJoin(member);
 
	   return "home";
		
	}
	@RequestMapping(value="/home.do", method=RequestMethod.GET)
	public String loginPOST(HttpServletRequest request, UserVO login, RedirectAttributes rttr) throws Exception {
	
		
		HttpSession session = request.getSession();
		UserVO lvo = memberservice.memberLogin(login);
	        
		 if(lvo == null) {                                // 일치하지 않는 아이디, 비밀번호 입력 경우
	            
	            int result = 0;
	            rttr.addFlashAttribute("result", result);
	            return "redirect:/#loginh";
	            
	        }
	        
	        session.setAttribute("member", lvo);             // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
	        
	        return "home";
	
	}
	@RequestMapping("/reservation.do")
	public String reservaiton() {
		return "main/reservation";
	}
	@RequestMapping("/adhome.do")
	public String admin_home() {
		return "admin_Home";
	}

	@RequestMapping("/admembermodify.do")
	public String admin_membermodify() {
		return "main/admin_membermodify";
	}
	@RequestMapping("/adreservation.do")
	public String admin_reservation() {
		return "main/admin_reservation";
	}
	@RequestMapping("/adreservationlist.do")
	public String admin_reservation_list() {
		return "main/admin_reservation_list";
	}
	@RequestMapping("/admenuupload.do")
	public String admin_menuupload() {
		return "main/admin_menu_upload";
	}

	@RequestMapping("/clientmenu.do")
	public String clientmenu(Model model) {
		List<FoodVO> list = MainMapper.menuList();
		model.addAttribute("list", list);
		return "main/client_menu";
	}
	
	// 아이디 중복 검사
			@RequestMapping(value = "/memberIdChk", method = RequestMethod.POST)
			@ResponseBody
			public String memberIdChkPOST(String memberId) throws Exception{
				
				
				
				int result = memberservice.idCheck(memberId);
			
				
				if(result != 0) {
					
					return "fail";	// 중복 아이디가 존재
					
				} else {
					
					return "success";	// 중복 아이디 x
					
				}	
				
			} // memberIdChkPOST() 종료
			
			 /* 이메일 인증 */
		    @RequestMapping(value="/mailCheck", method=RequestMethod.GET)
		    @ResponseBody
		    public String mailCheckGET(String email) throws Exception{
		        
		        /* 뷰(View)로부터 넘어온 데이터 확인 */
		    
		    	logger.info("이메일 데이터 전송 확인");
		        logger.info("인증번호 : " + email);
		    
		        
		    	/* 인증번호(난수) 생성 */
		        Random random = new Random();
		        int checkNum = random.nextInt(888888) + 111111;
		       
		        /* 이메일 보내기 */
		        String setFrom = "oip9940@naver.com";
		        String toMail = email;
		        String title = "회원가입 인증 이메일 입니다.";
		        String content = 
		                "홈페이지를 방문해주셔서 감사합니다." +
		                "<br><br>" + 
		                "인증 번호는 " + checkNum + "입니다." + 
		                "<br>" + 
		                "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
		                
		        try {
		            
		            MimeMessage message = mailSender.createMimeMessage();
		            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
		            helper.setFrom(setFrom);
		            helper.setTo(toMail);
		            helper.setSubject(title);
		            helper.setText(content,true);
		            mailSender.send(message);
		            
		        }catch(Exception e) {
		            e.printStackTrace();
		        }
		        
		        String num = Integer.toString(checkNum);
		        
		        return num;
		    }
		   
		    /* 메인페이지 로그아웃 */
		    @RequestMapping(value="/logout.do", method=RequestMethod.GET)
		    public String logoutMainGET(HttpServletRequest request) throws Exception{
		    	
		    	logger.info("logoutMainGET메서드 진입");
		        
		        HttpSession session = request.getSession();
		        
		        session.invalidate();
		        
		        return "home"; 
		    }
		
}
