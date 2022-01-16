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

import mul.camp.a.dao.ContentDao;
import mul.camp.a.dto.BoardDto;
import mul.camp.a.dto.ContentDto;
import mul.camp.a.service.BoardService;

@Controller
public class BoardController {
	private static Logger logger = LoggerFactory.getLogger(BoardController.class);
	
    @Autowired
    BoardService service;
    
    @RequestMapping(value = "buyBoard.do", method = RequestMethod.GET)
    public String buyBoard(Model model, int bid) {
    	logger.info("BoardController buyBoard()" + new Date());
    	
    	List<ContentDto> list = service.boardList(bid);
    	model.addAttribute("boardlist", list);
    	model.addAttribute("bid",bid);
    	System.out.println(bid);
    	
    	return "buyBoard";
    	
    }
    @RequestMapping(value = "boardWrite.do", method = RequestMethod.GET)
    public String boardWrite(int bid, Model model) {
    	logger.info("BoardController boardWrite()" + new Date());
    	model.addAttribute("bid",bid);
    	System.out.println(bid);
    	return "boardWrite";
    }
    @RequestMapping(value = "boardWriteAf.do", method = RequestMethod.POST)
    public String boardWriteAf(ContentDto dto) {
    	logger.info("BoardController boardWriteAf()" + new Date());
    	System.out.println(dto.toString());
    	if(service.writeContent(dto)) {
    		System.out.println("성공");
    	}else {
    		System.out.println("실패");
    	}
    	return "redirect:/buyBoard.do?bid=2";
    }
}
