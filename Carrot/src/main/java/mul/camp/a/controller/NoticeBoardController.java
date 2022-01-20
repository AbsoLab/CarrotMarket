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
public class NoticeBoardController {
	
	private static Logger logger = LoggerFactory.getLogger(NoticeBoardController.class);

	@Autowired
	BoardService service;
	
	@RequestMapping(value = "NoticeBoard.do", method = RequestMethod.GET)
	public String NoticeBoard(Model model,int bid){
		
		logger.info("BoardController NoticeBoard() " + new Date());	
		System.out.println("NoticeBoard() bid :"+bid);
		List<ContentDto> boardlist = service.contentList(bid);
		model.addAttribute("boardlist", boardlist);
		model.addAttribute("bid", bid);
		
		return "NoticeBoard";	
	}
	
	@RequestMapping(value = "NoticeBoardWrite.do", method = RequestMethod.GET)
	public String NoticeBoardWrite(){
		
		logger.info("BoardController BoardWrite() " + new Date());
		
		return "NoticeBoardWrite";
	}
	
	
	@RequestMapping(value = "NoticeBoardWriteAf.do", method = RequestMethod.POST)
	public String NoticeBoarWriteAf(ContentDto dto) {
		
		logger.info("NoticeBoardController BoardWriteAf() " + new Date());
		System.out.println(dto.toString());		// 확인
		
		boolean b = service.writeContent(dto);
		if(b == true) {
			System.out.println("성공적으로 추가되었습니다");
		}
		
		return "redirect:/NoticeBoard.do?bid=1";
	}
	
	
    @RequestMapping(value = "NoticeBoardDetail.do", method = RequestMethod.GET)
    public String NoticeBoardDetail(Model model, int cid) {
    	
    	logger.info("NoticeBoardController Detail()" + new Date());
    	ContentDto detail = service.content(cid);
    	model.addAttribute("detail",detail);
    	
    	List<ReplyDto> getreplyList = service.replyList(cid);
    	model.addAttribute("getreplyList",getreplyList);
    	
    	return "NoticeBoardDetail";
    }
    
    @RequestMapping (value = "NoticeBoardUpdate.do", method = RequestMethod.GET)
    public String NoticeBoardUpdate(Model model,int cid) {
    	logger.info("NoticeBoardController update()" + new Date());
    	ContentDto dto = service.content(cid);
    	model.addAttribute("content", dto);
    	
    	return "NoticeBoardUpdate";
    }
    
    @RequestMapping (value = "NoticeBoardUpdateAf.do", method = RequestMethod.POST)
    public String NoticeBoardUpdateAf(ContentDto dto) {
    	logger.info("NoticeBoardControllerUpdateAf()" + new Date());
    	boolean b = service.updateContent(dto);
    	if(b) {
    		System.out.println(dto.toString());
    	}
    	return "redirect:/NoticeBoard.do?bid=1";
    }
    
    @RequestMapping (value = "NoticeBoardDelete.do", method = RequestMethod.GET)
    public String NoticeBoardDelete(int cid) {
    	
    	logger.info("NoticeBoardController update()" + new Date());
    	
    	boolean c = service.deleteContentReply(cid);
    	if(c) {
    		System.out.println("Cid : "+cid+"번 Reply 삭제");
    	}
    	boolean b = service.deleteContent(cid);
    	if(b){
    		System.out.println("Cid : "+cid+"번 Board 삭제");
    	}
    	
    	return "redirect:/NoticeBoard.do?bid=1";
    }
    
    
	@RequestMapping(value = "ReplyWriteAf.do", method = RequestMethod.POST)
	public String ReplyWriteAf(ReplyDto dto) {
		
		logger.info("NoticeBoardController ReplyWriteAf() " + new Date());
		boolean b = service.writeReply(dto);
		if(b == true) {
			System.out.println("성공적으로 추가되었습니다");
		}
		
		return "redirect:/NoticeBoardDetail.do?cid="+dto.getCid();
	}
	
	
	@RequestMapping (value = "ReplyDelete.do", method = RequestMethod.GET)
    public String ReplyDeleteDelete(int cid,int rid) {
    
    	logger.info("NoticeBoardController update()" + new Date());
    	
    	boolean c = service.deleteReply(rid);
    	if(c) {
    		System.out.println("rid : "+rid+"번 Reply 삭제");
    	}
    	    	
    	return "redirect:/NoticeBoardDetail.do?cid="+cid;
    }
}
