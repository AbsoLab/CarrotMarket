package mul.camp.a.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mul.camp.a.dto.UserDto;
import mul.camp.a.service.UserService;

@Controller
public class UserController {
	private static Logger logger = LoggerFactory.getLogger(UserController.class);
	@Autowired
	UserService service;
    
    /*
        유저 정보 불러오기, 정보 수정, 회원 탈퇴
    */
	@RequestMapping(value = "userInfo.do", method = RequestMethod.GET)
	public String userInfo(Model model, HttpServletRequest req) {
		logger.info("UserController userInfo()" + new Date());
		int uid = ((UserDto)req.getSession().getAttribute("login")).getUid();
		UserDto dto = service.userInfo(uid);
		model.addAttribute("user", dto);
		return "userInfo";
	}
	
	@RequestMapping(value= "updateUserInfo.do", method = RequestMethod.POST)
	public String updateUserInfo(UserDto dto) {
		logger.info("UserController userInfo()" + new Date());
		System.out.println(dto.toString());
		boolean b = service.updateUserInfo(dto);
		if(b) {
			System.out.println("업데이트 성공");
		}else {
			System.out.println("실패");
		}
		
		return "start";
		
	}
}
