package mul.camp.a.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import mul.camp.a.dao.ContentDao;
import mul.camp.a.dto.BoardDto;
import mul.camp.a.dto.ContentDto;
import mul.camp.a.dto.ReplyDto;
import mul.camp.a.service.BoardService;

@Controller
public class BoardController{
	private static Logger logger = LoggerFactory.getLogger(BoardController.class);
	
    @Autowired
    BoardService service;
    
    //bid를 통해 구매게시판의 글 리스트 
    @RequestMapping(value = "buyBoard.do", method = RequestMethod.GET)
    public String buyBoard(Model model, int bid) {
    	logger.info("BoardController buyBoard()" + new Date());
    	
    	List<ContentDto> list = service.boardList(bid);
    	model.addAttribute("boardlist", list);
    	model.addAttribute("bid",bid); //boardWrite.do로 넘어가기위해 필요 (구매게시판작성)
    	System.out.println(bid);
    	
    	return "buyBoard";
    	
    }
    //글작성 페이지 이동
    @RequestMapping(value = "boardWrite.do", method = RequestMethod.GET)
    public String boardWrite(int bid, Model model) {
    	logger.info("BoardController boardWrite()" + new Date());
    	model.addAttribute("bid",bid);
    	System.out.println(bid);
    	return "boardWrite";
    }
    // 글 작성후 
    @RequestMapping(value = "boardWriteAf.do", method = RequestMethod.POST)
    public String boardWriteAf(ContentDto dto) {
    	logger.info("BoardController boardWriteAf()" + new Date());
    	System.out.println(dto.toString());
    	if(service.writeContent(dto)) {
    		System.out.println("성공");
    	}else {
    		System.out.println("실패");
    	}
    	return "redirect:/buyBoard.do?bid=2"; // 구매게시판으로 가기위함
    }
    //상세글
    @RequestMapping(value = "boardDetail.do", method = RequestMethod.GET)
    public String boardDetail(Model model, int cid) {
    	logger.info("BoardController boardDetail()" + new Date());
    	ContentDto detail = service.content(cid);
    	List<ReplyDto> reply = service.replyList(cid);
    	System.out.println(reply.toString());
    	model.addAttribute("reply", reply);
    	model.addAttribute("detail",detail);
    	
    	return "boardDetail";
    }
    // 글 수정 페이지 이동
    @RequestMapping (value = "updateBoard.do", method = RequestMethod.GET)
    public String updateboard(Model model,int cid) {
    	logger.info("BoardController updateboard()" + new Date());
    	ContentDto dto = service.content(cid);
    	model.addAttribute("content", dto);
    	
    	return "boardUpdate";
    }
    //글 수정
    @RequestMapping (value = "updateboardAf.do", method = RequestMethod.POST)
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
    @RequestMapping(value = "deleteBoard.do", method = RequestMethod.GET)
    public String deleteBoard(int cid) {
    	logger.info("BoardController deleteBoard()" + new Date());
    	boolean b = service.deleteContent(cid);
    	if(b) {
    		System.out.println("성공");
    	}else {
    		System.out.println("실패");
    	}
    	return "redirect:/buyBoard.do?bid=2";
    }
    //댓글 추가
    @RequestMapping(value = "addReply.do", method = RequestMethod.POST)
    public String addReply(ReplyDto dto) {
    	logger.info("BoardController deleteBoard()" + new Date());
    	boolean b = service.writeReply(dto);
    	if(b) {
    		System.out.println("성공");
    	}else {
    		System.out.println("실패");
    	}
    	return "redirect:/boardDetail.do?cid=" + dto.getCid();
    }
    //댓글 삭제
    @RequestMapping(value= "deleteReply.do", method = RequestMethod.GET)
    public String deleteReply(int rid, int cid) {
    	logger.info("BoardController deleteBoard()" + new Date());
    	boolean b = service.deleteReply(rid);
    	if(b) {
    		System.out.println("성공");
    	}else {
    		System.out.println("실패");
    	}
    	return "redirect:/boardDetail.do?cid=" +cid;
    }
    //업데이트 댓글
    @RequestMapping(value = "updateReply.do", method = RequestMethod.GET)
    public String updateReply(Model model, int rid) {
    	logger.info("BoardController updateReply()" + new Date());
    	ReplyDto dto = service.getReply(rid);
    	model.addAttribute("reply", dto);
    	return "replyUpdate";
    }
    //업데이트  댓글
    @RequestMapping(value = "updateReplyAf.do", method = RequestMethod.POST)
    public String updateReplyAf(ReplyDto dto) {
    	logger.info("BoardController updateReplyAf()" + new Date());
    	System.out.println(dto.toString());
    	boolean b = service.updateReply(dto);
    	if(b) {
    		System.out.println("성공");
    	}else {
    		System.out.println("실패");
    	}
    	return "redirect:/boardDetail.do?cid=" + dto.getCid();
    }
    //댓글을 불러와 답글을 작성함
    @RequestMapping(value = "answer.do", method = RequestMethod.GET)
    public String answer(Model model, int rid) {
    	logger.info("BoardController answer()" + new Date());
    	 ReplyDto dto = service.getReply(rid);
    	 model.addAttribute("reply", dto);
    	 
    	 return "replyAnswer";
    }
    //답글을 쓴후
    @RequestMapping(value="answerAf.do", method = RequestMethod.GET)
    public String answerAf(ReplyDto dto) {
    	logger.info("BoardController answer()" + new Date());
    	System.out.println(dto.toString());
    	service.reply(dto);
    	return "redirect:/boardDetail.do?cid=" + dto.getCid();
    }
  
   
}	
