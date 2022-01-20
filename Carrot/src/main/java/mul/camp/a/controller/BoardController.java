package mul.camp.a.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import mul.camp.a.dto.BoardDto;
import mul.camp.a.dto.ContentDto;
import mul.camp.a.dto.UserDto;
import mul.camp.a.service.BoardService;
import mul.camp.a.service.UserService;


@Controller
public class BoardController {
	
	private static Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	BoardService service;
	
	@Autowired
	UserService us;
	
	
	// QnA(FAQ) 컨트롤러
		@RequestMapping(value = "qnaBoard.do", method = RequestMethod.GET)
		public String qnaBoard(Model model, int bid, String search) {
			logger.info("BoardController qnaBoard()" + new Date());
			System.out.println("bid: "+bid+" search: "+search);
			
			//처음 들어갔을 때 FAQ목록
			List<BoardDto> qna = service.qnalist();
			model.addAttribute("qna", qna);
			System.out.println(qna.toString());
			
			// 처음 들어갔을 때 FAQ 내용, 목록 클릭했을 때, 검색했을때
			List<ContentDto> qnaCont = service.qnaCont(bid, search);
			model.addAttribute("qnaCont", qnaCont);
			System.out.println(qnaCont.toString());
			
			return "qnaBoard";
		}
	
		@RequestMapping(value = "otoBbsWrite.do", method = RequestMethod.GET)
		public String otoBbsWrite(Model model, int uid) {
			logger.info("BoardController otoBbsWrite()" + new Date());
			
			UserDto user = us.userInfo(uid);
			model.addAttribute("userInfo", user);
			
			return "otoBbsWrite";
		}
	
		// 파일 업로드
		@RequestMapping(value = "otoBbsWriteAf.do", method = RequestMethod.POST)
		public String otoBbsWriteAf(ContentDto dto) throws IllegalStateException, IOException {
			logger.info("BoardController otoBbsWriteAf()" + new Date());
			System.out.println(dto.toString());
			String fileName=null;
			MultipartFile uploadFile = dto.getUploadFile();
			System.out.println(uploadFile);
			if(!uploadFile.isEmpty()) {
				String originalFileName = uploadFile.getOriginalFilename();	// 업로드되는 파일 이름
				String ext = FilenameUtils.getExtension(originalFileName);	// 확장자명
				
				UUID uuid = UUID.randomUUID();	// UUID 구하기(업로드된 파일명의 중복을 방지하기 위해 파일명을 변경할때)
				fileName=uuid+"."+ext;
				uploadFile.transferTo(new File("C:\\Users\\gal\\Documents\\file\\" + fileName));
				
			}
			dto.setFileName(fileName);
			boolean b = service.fileContent(dto);
			if(b==true) {
				System.out.println("저장완료");
				return "redirect:/qnaBoard.do?bid=0";
			} else {
				return "redirect:/otoBbsWrite.do";
			}
			
		}
}
