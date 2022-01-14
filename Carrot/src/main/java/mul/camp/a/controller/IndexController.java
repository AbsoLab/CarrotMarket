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
	
	@RequestMapping(value = "qnaBoard.do", method = RequestMethod.GET)
	public String qnaBoard(Model model) {
		logger.info("IndexController qnaBoard()" + new Date());
		
		List<BoardDto> qna = bs.qnalist();
		model.addAttribute("qna", qna);
		System.out.println(qna.toString());
		
		List<ContentDto> qnaCont = bs.qnaCont();
		model.addAttribute("qnaCont", qnaCont);
		
		return "qnaBoard";
	}
}
