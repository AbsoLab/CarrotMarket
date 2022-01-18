package mul.camp.a.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mul.camp.a.dto.ContentDto;
import mul.camp.a.dto.ReplyDto;
import mul.camp.a.dto.UserDto;
import mul.camp.a.service.BoardService;

@Controller
public class sellBoardController {
	
	private static Logger logger = LoggerFactory.getLogger(sellBoardController.class);
	
	@Autowired
	BoardService service;
	
	@RequestMapping(value = "sellBoard.do", method = RequestMethod.GET)
	public String sellBoard(Model model, int bid) {
		logger.info("sellBoardController sellBoard() " + new Date());
		System.out.println(bid);
		
		List<ContentDto> sellBbs = service.contentList(bid);
		
		
		model.addAttribute("sellBoard", sellBbs);
				
		return "sellBoard";
	}
	
	// 게시글 작성페이지로 이동
	@RequestMapping(value = "sellbbswrite.do", method = RequestMethod.GET)
	public String sellbbsWrite() {
		logger.info("sellBoardController sellbbsWrite() " + new Date());
		
		return "sellbbswrite";
	}
	
	// 글쓰기 버튼 누른 후 판매게시판으로 이동
	@RequestMapping(value = "sellbbswriteAf.do", method = RequestMethod.GET)
	public String sellbbswriteAf(ContentDto dto, int bid) {
		logger.info("sellBoardController sellbbswriteAf() " + new Date());
		System.out.println(bid);
		
		boolean b = service.writeContent(dto);
		
		if(b == true) {
			System.out.println("게시글 작성 완료");
			return "redirect:/sellBoard.do?bid=3";
		}
		else {
			return "redirect:/sellbbswrite.do";
		}
		
	}
	// 게시글 상세내용
	@RequestMapping(value = "sellbbsdetail.do", method = RequestMethod.GET)
	public String sellbbsdetail(Model model, int cid) {
		logger.info("sellBoardController sellbbsdetail() " + new Date());
		System.out.println(cid);
		
		ContentDto cdto = service.content(cid);
		
		UserDto dto = new UserDto(1, "admin", "admin", "admin", new Date(), "admin", "admin", "admin");
		
		List<ReplyDto> reply = service.replyList(cid);
		System.out.println(reply.toString());
		
		model.addAttribute("reply", reply);
		model.addAttribute("sellBoard", cdto);
		model.addAttribute("user", dto);
		
		return "sellbbsdetail";
	}
	
	// 댓글작성 페이지로 이동
	@RequestMapping(value = "sellanswer.do", method = RequestMethod.GET)
	public String sellanswer(Model model, int cid) {
		logger.info("sellBoardController sellanswer() " + new Date());
		
		ContentDto cdto = service.content(cid);
		model.addAttribute("sellBoard", cdto);
		
		return "sellanswer";
		
	}
	
	// 댓글등록 후 다시 디테일로
	@RequestMapping(value = "sellanswerAf.do", method = RequestMethod.GET)
	public String sellanswerAf(Model model, ReplyDto dto, int uid, int cid) {
		logger.info("sellBoardController sellanswerAf() " + new Date());
		System.out.println("cid=" + cid + "uid=" + uid);
		System.out.println(dto.toString());
		
		boolean b = service.writeReply(dto);
		
		if(b == true) {
			System.out.println("댓글 작성 완료");
			return "redirect:/sellbbsdetail.do?cid="+cid;
		}
		else {
			return "redirect:/sellanswer.do";
		}
	}
	
	// 게시글 수정하기
	@RequestMapping(value = "sellupdatebbs.do", method = RequestMethod.GET)
	public String sellupdatebbs(int cid, Model model) {
		logger.info("sellBoardController sellupdatebbs() " + new Date());
		
		ContentDto cdto = service.content(cid);
		model.addAttribute("sellBoard", cdto);
		
		return "sellupdatebbs";
	}
	
	// 게시글 수정 후 디테일로
	@RequestMapping(value = "sellupdatebbsAF.do", method = RequestMethod.GET)
	public String sellupdatebbsAF(ContentDto dto) {
		logger.info("sellBoardController sellupdatebbsAF() " + new Date());
		System.out.println("bid=" + dto.getBid() + "/ cid=" + dto.getCid());
		
		int bid = dto.getBid();
		int cid = dto.getCid();
		
		boolean b = service.updateContent(dto);		

		if(b == true) {
			System.out.println("게시글 수정 완료");
			return "redirect:/sellbbsdetail.do?bid=" + bid + "&cid=" + cid;
		}
		else {
			return "redirect:/sellupdatebbs.do";
		}
	}
	
	// 게시글 삭제
	@RequestMapping(value = "selldeletebbs.do", method = RequestMethod.GET)
	public String selldeletebbs(int cid) {
		logger.info("sellBoardController selldeletebbs() " + new Date());
		
		boolean b = service.deleteContent(cid);
		
		if(b == true) {
			System.out.println("게시글 삭제 완료");
			return "redirect:/sellBoard.do?bid=3";
		}
		else {
			return "redirect:/sellupdatebbs.do";
		}		
	}
	
	// 댓글 수정 
	@RequestMapping(value = "sellupdatereply.do", method = RequestMethod.GET)
	public String sellupdatereply(int cid, int rid, Model model) {
		logger.info("sellBoardController sellupdatereply() " + new Date());
		
		ReplyDto rdto = service.getReply(rid);
		model.addAttribute("replydto", rdto);
		
		ContentDto cdto = service.content(cid);
		model.addAttribute("sellBoard", cdto);
		
		return "sellupdatereply";
		
	}
	
	// 댓글 수정 후 디테일로
	@RequestMapping(value = "sellupdatereplyAF.do", method = RequestMethod.GET)
	public String sellupdatereplyAF(ReplyDto dto, int cid, int bid) {
		logger.info("sellBoardController sellupdatereplyAF() " + new Date());
		System.out.println("dto=" + dto);
		
		
		boolean b = service.updateReply(dto);
		
		if(b == true) {
			System.out.println("댓글 수정 완료");
			return "redirect:/sellbbsdetail.do?bid=3&cid=" + cid;
		}
		else {
			return "redirect:/sellupdatereply.do";
		}
	}
	
	// 댓글 삭제
	@RequestMapping(value = "selldeletereply.do", method = RequestMethod.GET)
	public String selldeletereply(int rid, int cid) {
		logger.info("sellBoardController selldeletereply() " + new Date());
		
		boolean b = service.deleteReply(rid);
		
		if(b == true) {
			System.out.println("댓글 삭제 완료");
			return "redirect:/sellbbsdetail.do?bid=3&cid=" + cid;
		}
		else {
			return "redirect:/selldeletereply.do";
		}
		
	}
	
	// 해당 댓글의 답글 작성페이지로 이동
	@RequestMapping(value = "sellreplyanswer.do", method = RequestMethod.GET)
	public String replyanswer(int rid, int cid, Model model) {
		logger.info("sellBoardController replyanswer() " + new Date());
		System.out.println(cid);
		
		ReplyDto rdto = service.getReply(rid);
		model.addAttribute("replydto", rdto);
		
		ContentDto cdto = service.content(cid);
		model.addAttribute("sellBoard", cdto);
		
		return "sellreplyanswer";
	}
	
	// 답글 작성완료 후 디테일로 이동
	@RequestMapping(value = "sellreplyanswerAf.do", method = RequestMethod.POST)
	public String replyanswerAf(int cid, ReplyDto dto) {
		logger.info("sellBoardController replyanswerAf() " + new Date());
		System.out.println("dto=" + dto);
		
		boolean b = service.writeReplyAnswer(dto);
		
		if(b == true) {
			System.out.println("답글작성 완료");
			return "redirect:/sellbbsdetail.do?bid=3&cid=" + cid;
		}
		else {
			return "redirect:/replyanswer.do";
		}
	}
	
	

}
