package kr.mr.myapp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.mr.model.BoardPaging;
import kr.mr.model.BoardVO;
import kr.mr.service.BoardService;

@Controller
public class BoardController {
	@Autowired // 의존성 주입(DI)
	private BoardService service;
	// Admin Notice 
	
	// 공지사항 리스트
	@RequestMapping("/adnoticelist.do")
	public String admin_notice_list(
			@RequestParam(defaultValue = "1") int viewPage,
			@RequestParam(defaultValue = "10") int cntPerPage,
			@ModelAttribute("bvo") BoardVO vo, Model model) {
		
		// 전체 게시물의 개수
		int totalCnt = service.noticetotalCnt(vo);

		BoardPaging bp = new BoardPaging(totalCnt, viewPage, cntPerPage);
		vo.setStartIndex(bp.getStartIndex());
		vo.setCntPerPage(cntPerPage);
		
		model.addAttribute("bp", bp);
		model.addAttribute("vo", vo);
		
		List<BoardVO> list = service.noticeList(vo);
		
		model.addAttribute("list", list);
		return "main/admin_notice_list"; 
	}
	
	// 공지사항 글 화면 이동
	@RequestMapping(value="/adnoticeregister.do", method=RequestMethod.GET)
	public String notice_registerForm(
			@ModelAttribute("viewPage") int viewPage) {
		
		return "main/admin_notice_register"; // 글쓰기 화면
	}
	
	// 공지사항 글 등록 완료 후 리스트 이동
	@RequestMapping(value="/adnoticeregister.do", method=RequestMethod.POST)
	public String notice_register(BoardVO board) {
		
		service.notice_register(board);
		return "redirect:/adnoticelist.do"; // 글등록 후 리스트로
	}
	
	// Notice 글 상세보기
	@RequestMapping("/adnoticeview.do")
	public String notice_view(@ModelAttribute("bvo") BoardVO bvo, int viewPage, Model model) {
		BoardVO board = service.view(bvo.getBrd_num(), "view");
		model.addAttribute("board", board);
		
		model.addAttribute("viewPage", viewPage);
		
		return "main/admin_notice_view";
	}
	
	// Notice 글 수정하기
	@RequestMapping(value="/adnoticemodify.do", method=RequestMethod.GET)
	public String admin_modifyForm(@ModelAttribute("bvo") BoardVO bvo, @ModelAttribute("viewPage") int viewPage, Model model) {
		BoardVO board = service.view(bvo.getBrd_num(), "modify");
		model.addAttribute("board", board);
		
		return "main/admin_notice_modify"; 
	}
	
	@RequestMapping(value="/adnoticemodify.do", method=RequestMethod.POST)
	public String admin_modify(BoardVO board,
			@ModelAttribute("viewPage") int viewPage, Model model) {
		System.out.println(board);
		service.modify(board);
		
		model.addAttribute("keyWord", board.getKeyWord());
		model.addAttribute("searchType", board.getSearchType());
		
		return "redirect:/adnoticelist.do";
	}
	
	// Notice 글 삭제하기
	@RequestMapping("/adnoticeremove.do")
	public String admin_notice_remove(@ModelAttribute BoardVO bvo,
			int viewPage, RedirectAttributes rttr) {
		
		service.remove(bvo.getBrd_num());
		rttr.addFlashAttribute("bvo", bvo);
		
		return "redirect:/adnoticelist.do";
	}
		
	// client Notice 글 리스트
	@RequestMapping("/clnoticelist.do")
	public String client_notice_list(
			@RequestParam(defaultValue = "1") int viewPage,
			@RequestParam(defaultValue = "10") int cntPerPage,
			@ModelAttribute("bvo") BoardVO vo, Model model) {
		
		// 전체 게시물의 개수
		int totalCnt = service.noticetotalCnt(vo);
		
		BoardPaging bp = new BoardPaging(totalCnt, viewPage, cntPerPage);
		vo.setStartIndex(bp.getStartIndex());
		vo.setCntPerPage(cntPerPage);
		
		model.addAttribute("bp", bp);
		model.addAttribute("vo", vo);
		
		List<BoardVO> list = service.noticeList(vo);
		
		model.addAttribute("list", list);
		return "main/client_notice_list"; 
	}
	
	// client Notice 글 상세보기
	@RequestMapping("/clnoticeview.do")
	public String client_notice_view(@ModelAttribute("bvo") BoardVO bvo, int viewPage, Model model) {
		BoardVO board = service.view(bvo.getBrd_num(), "view");
		model.addAttribute("board", board);
		
		model.addAttribute("viewPage", viewPage);
		
		return "main/client_notice_view";
	}
	
	
	//Admin QnA page
	
	// QnA 리스트 확인
	@RequestMapping("/adqnalist.do")
	public String list(
			@RequestParam(defaultValue = "1") int viewPage,
			@RequestParam(defaultValue = "10") int cntPerPage,
			@ModelAttribute("bvo") BoardVO vo, Model model) {
		
		// 전체 게시물의 개수
		int totalCnt = service.totalCnt(vo);

		BoardPaging bp = new BoardPaging(totalCnt, viewPage, cntPerPage);
		vo.setStartIndex(bp.getStartIndex());
		vo.setCntPerPage(cntPerPage);
		
		model.addAttribute("bp", bp);
		model.addAttribute("vo", vo);
		
		List<BoardVO> list = service.getList(vo);
		
		model.addAttribute("list", list);
		return "main/admin_qna_list"; 
		
	}
	
	// QnA 글 상세보기
	@RequestMapping("/adqnaview.do")
	public String view(@ModelAttribute("bvo") BoardVO bvo, int viewPage, Model model) {
		BoardVO board = service.view(bvo.getBrd_num(), "view");
		model.addAttribute("board", board);
		
		model.addAttribute("viewPage", viewPage);
		
		return "main/admin_qna_view";
	}
	
	// QnA 글 삭제하기
	@RequestMapping("/adqnaremove.do")
	public String remove(@ModelAttribute BoardVO bvo,
			int viewPage, RedirectAttributes rttr) {
		
		service.remove(bvo.getBrd_num());
		rttr.addFlashAttribute("bvo", bvo);
		
		return "redirect:/adqnalist.do";
	}
	
	//client QnA page
	@RequestMapping("/clqnalist.do")
	public String client_qna_list(
			@RequestParam(defaultValue = "1") int viewPage,
			@RequestParam(defaultValue = "10") int cntPerPage,
			@ModelAttribute("bvo") BoardVO vo, Model model) {
		
		// 전체 게시물의 개수
		int totalCnt = service.totalCnt(vo);

		BoardPaging bp = new BoardPaging(totalCnt, viewPage, cntPerPage);
		vo.setStartIndex(bp.getStartIndex());
		vo.setCntPerPage(cntPerPage);
		
		model.addAttribute("bp", bp);
		model.addAttribute("vo", vo);
		
		List<BoardVO> list = service.getList(vo);
		
		model.addAttribute("list", list);
		return "main/client_qna_list"; 
	}
	
	@RequestMapping(value="/clqnaregister.do", method=RequestMethod.GET)
	public String registerForm(
			@ModelAttribute("viewPage") int viewPage) {
		
		return "main/client_qna_register"; // 글쓰기 화면
	}
	
	@RequestMapping(value="/clqnaregister.do", method=RequestMethod.POST)
	public String register(BoardVO board) {
		
		service.register(board);
		return "redirect:/clqnalist.do"; // 글등록 후 리스트로
	}
	
	
	@RequestMapping("/clqnaview.do")
	public String client_qna_view(@ModelAttribute("bvo") BoardVO bvo, int viewPage, Model model) {
		BoardVO board = service.view(bvo.getBrd_num(), "view");
		model.addAttribute("board", board);
		
		model.addAttribute("viewPage", viewPage);
		
		return "main/client_qna_view";
	}
	
	@RequestMapping(value="/clqnamodify.do", method=RequestMethod.GET)
	public String modifyForm(@ModelAttribute("bvo") BoardVO bvo, @ModelAttribute("viewPage") int viewPage, Model model) {
		BoardVO board = service.view(bvo.getBrd_num(), "modify");
		model.addAttribute("board", board);
		
		return "main/client_qna_modify"; 
	}
	
	@RequestMapping(value="/clqnamodify.do", method=RequestMethod.POST)
	public String modify(BoardVO board,
			@ModelAttribute("viewPage") int viewPage, Model model) {
		System.out.println(board);
		service.modify(board);
		
		model.addAttribute("keyWord", board.getKeyWord());
		model.addAttribute("searchType", board.getSearchType());
		
		return "redirect:/clqnalist.do";
	}
	
	@RequestMapping("/clqnaremove.do")
	public String client_qna_remove(@ModelAttribute BoardVO bvo,
			int viewPage, RedirectAttributes rttr) {
		
		service.remove(bvo.getBrd_num());
		rttr.addFlashAttribute("bvo", bvo);
		
		return "redirect:/clqnalist.do";
	}
}
