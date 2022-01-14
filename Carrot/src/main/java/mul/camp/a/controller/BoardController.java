package mul.camp.a.controller;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mul.camp.a.service.BoardService;

@Controller
public class BoardController {
	
	private static Logger logger = LoggerFactory.getLogger(BoardController.class);
//	
//	@Autowired
//	BoardService service;
//	
	@RequestMapping(value = "sellBoard.do", method = RequestMethod.GET)
	public String sellBoard() {
		logger.info("BoardController sellBoard() " + new Date());
		
		return "sellBoard";
	}
    
}
