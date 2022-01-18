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
public class AuthController {
    
    /*
        로그인, 로그아웃, 회원가입
    */
	
	@Autowired
	UserService service;
	
	private static Logger logger = LoggerFactory.getLogger(AuthController.class);
	
	// 로그인 페이지로 이동
	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public String login() {
		logger.info("AuthController login() " + new Date());
		
		return "login";
	}
	
	@RequestMapping(value = "loginAf.do", method = RequestMethod.POST)
	public String loginAf(UserDto dto, HttpServletRequest req) { // request == HttpServletRequest
		logger.info("AuthController loginAf() " + new Date());		
		
		UserDto User = service.login(dto);
		System.out.println(User.toString());
		if(User != null) {	// 정상적인 로그인
			
			// login 정보를 저장 -> session 
			req.getSession().setAttribute("login", User);			
			System.out.println("req :"+req.toString());
			return "redirect:/NoticeBoard.do?bid=1";
		}
		else {		// 회원정보에 없음	
			return "redirect:/login.do";
		}
	}
}
