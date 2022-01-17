package mul.camp.a.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mul.camp.a.dto.ContentDto;
import mul.camp.a.dto.UserDto;

@Controller
public class sellBoardController {
	
	private static Logger logger = LoggerFactory.getLogger(sellBoardController.class);

	
	@RequestMapping(value = "sellBoard.do", method = RequestMethod.GET)
	public String sellBoard(Model model) {
		logger.info("sellBoardController sellBoard() " + new Date());
		
		// jsp작성을 위한임시 리스트
		List<ContentDto> sellBbs = new ArrayList<ContentDto>(); //service.sellBbsList();
		
		model.addAttribute("sellBoard", sellBbs);
				
		return "sellBoard";
	}
	
	// 게시글 작성페이지로 이동
	@RequestMapping(value = "bbswrite.do", method = RequestMethod.GET)
	public String bbsWrite() {
		logger.info("sellBoardController bbsWrite() " + new Date());
		
		return "bbswrite";
	}
	
	@RequestMapping(value = "bbswriteAf.do", method = RequestMethod.POST)
	public String bbswriteAf() {
		logger.info("sellBoardController bbswriteAf() " + new Date());
		
		return "redirect:/sellBoard.do";
		
	}

}
