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
import mul.camp.a.service.BoardService;


@Controller
public class BoardController {
	
	private static Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	BoardService service;
	
	@RequestMapping(value = "noticeBoard.do", method = RequestMethod.GET)
	public String bbslist(Model model) {
		logger.info("BoardController Contentlist() " + new Date());
		
		List<ContentDto> list = service.contentList(1);
		System.out.println(list.toString());
		model.addAttribute("getList", list);
		
		return "noticeBoard";
	}
}
