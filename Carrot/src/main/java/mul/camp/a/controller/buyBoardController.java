package mul.camp.a.controller;

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
import mul.camp.a.service.BoardService;

@Controller
public class buyBoardController{
	private static Logger logger = LoggerFactory.getLogger(buyBoardController.class);
	
    @Autowired
    BoardService service;
    
    //bid를 통해 구매게시판의 글 리스트 
    @RequestMapping(value = "buyBoard.do", method = RequestMethod.GET)
    public String buyBoard(Model model, int bid) {
    	logger.info("BoardController buyBoard()" + new Date());
    	
    	List<ContentDto> list = service.contentList(bid);
    	model.addAttribute("boardlist", list);
    	model.addAttribute("bid",bid); //boardWrite.do로 넘어가기위해 필요 (구매게시판작성)
    	System.out.println(bid);
    	
    	return "buyBoard";
    	
    }
    //글작성 페이지 이동
    @RequestMapping(value = "buyBoardWrite.do", method = RequestMethod.GET)
    public String boardWrite(int bid, Model model) {
    	logger.info("BoardController boardWrite()" + new Date());
    	model.addAttribute("bid",bid);
    	System.out.println(bid);
    	return "buyBoardWrite";
    }
    // 글 작성후 
    @RequestMapping(value = "buyBoardWriteAf.do", method = RequestMethod.POST)
    public String boardWriteAf(ContentDto dto) {
    	logger.info("BoardController boardWriteAf()" + new Date());
    	System.out.println(dto.toString());
    	if(service.writeContent(dto)) {
    		System.out.println("성공");
    	}else {
    		System.out.println("실패");
    	}
    	return "redirect:/buyBuyBoard.do?bid=2"; // 구매게시판으로 가기위함
    }
    //상세글
    @RequestMapping(value = "buyBoardDetail.do", method = RequestMethod.GET)
    public String boardDetail(Model model, int cid) {
    	logger.info("BoardController boardDetail()" + new Date());
    	ContentDto detail = service.content(cid);
    	List<ReplyDto> reply = service.replyList(cid);
    	System.out.println(reply.toString());
    	model.addAttribute("reply", reply);
    	model.addAttribute("detail",detail);
    	
    	return "buyBoardDetail";
    }
    // 글 수정 페이지 이동
    @RequestMapping (value = "buyUpdateBoard.do", method = RequestMethod.GET)
    public String updateboard(Model model,int cid) {
    	logger.info("BoardController updateboard()" + new Date());
    	ContentDto dto = service.content(cid);
    	model.addAttribute("content", dto);
    	
    	return "buyBoardUpdate";
    }
    //글 수정
    @RequestMapping (value = "buyUpdateBoardAf.do", method = RequestMethod.POST)
    public String updateAf(ContentDto dto) {
    	logger.info("BoardController updateAf()" + new Date());
    	boolean b = service.updateContent(dto);
    	if(b) {
    		System.out.println("성공");
    	}else {
    		System.out.println("실패");
    	}
    	return "redirect:/buyBoard.do?bid=2";
    }
    // 글삭제
    @RequestMapping(value = "buyDeleteBoard.do", method = RequestMethod.GET)
    public String deleteBoard(int cid) {
    	logger.info("BoardController deleteBoard()" + new Date());
    	System.out.println("cid =" + cid);
    	boolean b = service.deleteContent(cid);
    	if(b) {
    		System.out.println("성공");
    	}else {
    		System.out.println("실패");
    	}
    	return "redirect:/buyBoard.do?bid=2";
    }
    //댓글 추가
    @RequestMapping(value = "buyAddReply.do", method = RequestMethod.POST)
    public String addReply(ReplyDto dto) {
    	logger.info("BoardController deleteBoard()" + new Date());
    	boolean b = service.writeReply(dto);
    	if(b) {
    		System.out.println("성공");
    	}else {
    		System.out.println("실패");
    	}
    	return "redirect:/buyBoardDetail.do?cid=" + dto.getCid();
    }
    //댓글 삭제
    @RequestMapping(value= "buyDeleteReply.do", method = RequestMethod.GET)
    public String deleteReply(int rid, int cid) {
    	logger.info("BoardController deleteBoard()" + new Date());
    	boolean b = service.deleteReply(rid);
    	if(b) {
    		System.out.println("성공");
    	}else {
    		System.out.println("실패");
    	}
    	return "redirect:/buyBoardDetail.do?cid=" +cid;
    }
    //업데이트 댓글
    @RequestMapping(value = "buyUpdateReply.do", method = RequestMethod.GET)
    public String updateReply(Model model, int rid) {
    	logger.info("BoardController updateReply()" + new Date());
    	ReplyDto dto = service.getReply(rid);
    	model.addAttribute("reply", dto);
    	return "buyReplyUpdate";
    }
    //업데이트  댓글
    @RequestMapping(value = "buyUpdateReplyAf.do", method = RequestMethod.POST)
    public String updateReplyAf(ReplyDto dto) {
    	logger.info("BoardController updateReplyAf()" + new Date());
    	System.out.println(dto.toString());
    	boolean b = service.updateReply(dto);
    	if(b) {
    		System.out.println("성공");
    	}else {
    		System.out.println("실패");
    	}
    	return "redirect:/buyBoardDetail.do?cid=" + dto.getCid();
    }
    //댓글을 불러와 답글을 작성함
    @RequestMapping(value = "buyAnswer.do", method = RequestMethod.GET)
    public String answer(Model model, int rid) {
    	logger.info("BoardController answer()" + new Date());
    	 ReplyDto dto = service.getReply(rid);
    	 model.addAttribute("reply", dto);
    	 
    	 return "buyReplyAnswer";
    }
    //답글을 쓴후
    @RequestMapping(value="buyAnswerAf.do", method = RequestMethod.GET)
    public String answerAf(ReplyDto dto) {
    	logger.info("BoardController answer()" + new Date());
    	System.out.println(dto.toString());
    	service.writeReplyAnswer(dto);
    	return "redirect:/buyBoardDetail.do?cid=" + dto.getCid();
    }
  
   
}	