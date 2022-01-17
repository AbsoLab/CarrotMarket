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

import mul.camp.a.dto.BoardDto;
import mul.camp.a.dto.ContentDto;
import mul.camp.a.service.BoardService;

@Controller
public class IndexController {
	private static Logger logger = LoggerFactory.getLogger(IndexController.class);
    
	@Autowired
	BoardService bs;
	
	@RequestMapping(value = "start.do", method = RequestMethod.GET)
	public String login() {
		logger.info("IndexController login()" + new Date());
		
		return "start";
	}
	
	// QnA(FAQ) 컨트롤러
	@RequestMapping(value = "qnaBoard.do", method = RequestMethod.GET)
	public String qnaBoard(Model model, int bid, String search) {
		logger.info("IndexController qnaBoard()" + new Date());
		System.out.println("bid: "+bid+" search: "+search);
		
		//처음 들어갔을 때 FAQ목록
		List<BoardDto> qna = bs.qnalist();
		model.addAttribute("qna", qna);
		System.out.println(qna.toString());
		
		// 처음 들어갔을 때 FAQ 내용, 목록 클릭했을 때, 검색했을때
		List<ContentDto> qnaCont = bs.qnaCont(bid, search);
		model.addAttribute("qnaCont", qnaCont);
		System.out.println(qnaCont.toString());
		
		return "qnaBoard";
	}

	
	
}
