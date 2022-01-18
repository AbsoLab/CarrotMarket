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
public class BoardController {
	private static Logger logger = LoggerFactory.getLogger(IndexController.class);
	
	@Autowired
	BoardService bs;
	
	
	// QnA(FAQ) 컨트롤러
		@RequestMapping(value = "qnaBoard.do", method = RequestMethod.GET)
		public String qnaBoard(Model model, int bid, String search) {
			logger.info("BoardController qnaBoard()" + new Date());
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
	
	@RequestMapping(value = "otoBbsWrite.do", method = RequestMethod.GET)
	public String otoBbsWrite() {
		logger.info("BoardController otoBbsWrite()" + new Date());
		
		return "otoBbsWrite";
	}
	
	@RequestMapping(value = "otoBbsWriteAf.do", method = RequestMethod.POST)
	public String otoBbsWriteAf(ContentDto dto) {
		logger.info("BoardController otoBbsWriteAf()" + new Date());
		System.out.println(dto.toString());
		
		boolean b = bs.writeContent(dto);
		if(b==true) {
			System.out.println("게시글이 작성되었습니다.");
			return "qnaBoard";
		}
		else {
			return "otoBbsWrite.do.do";
		}
		
	}
}
