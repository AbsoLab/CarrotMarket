package mul.camp.a.controller;
import java.util.Date;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import mul.camp.a.dto.UserDto;
import mul.camp.a.service.UserService;

@Controller
public class AuthController {
    
	//로그창
	private static Logger logger = LoggerFactory.getLogger(AuthController.class);
	
	@Autowired
	UserService service;
	
	
	// 로그인 페이지로 이동
	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public String login() {
		logger.info("AuthController login() " + new Date());
		
		return "login";
	}
	
	// 회원정보 확인 후 로그인
	@RequestMapping(value = "loginAf.do", method = RequestMethod.POST)
	public String loginAf(Model model, UserDto dto, HttpServletRequest req) {

		logger.info("AuthController loginAf() " + new Date());
		System.out.println("dto=" + dto);
		
		UserDto user = service.login(dto);
		
		// 로그인 성공시
		if(user != null) {

			req.getSession().setAttribute("login", user);
			System.out.println("로그인성공");
			
			return "start";

		} else {	// 조금 더 보완필요

			System.out.println("회원정보없음");
			return "login";
		}
		
	}
	// 로그아웃기능
		@RequestMapping(value = "logout.do", method = RequestMethod.GET)
		public String logout(HttpServletRequest req) {
			
			HttpSession session = req.getSession();
			session.invalidate();
			return "redirect:/start.do";
			
		}

	//회원가입 jsp불러오기 
	@RequestMapping(value = "regi.do", method = RequestMethod.GET)
	public String regi() {
		logger.info("AuthController regi() " + new Date());
		return "regi";
	}
	 
	 //회원가입 완료 
	@RequestMapping(value = "regiAf.do", method = RequestMethod.POST)
	public String regiAf(UserDto dto) {
		logger.info("AuthController regiAf() " + new Date());
		System.out.println(dto.toString());
		boolean b = service.register(dto);
		if(b == true) {
			System.out.println("가입되었음");
		}		
		return "redirect:/start.do";
	}
	
	//regi쪽 ID체크창 입력확인 시 호출
	@ResponseBody
	@RequestMapping(value = "idcheck.do", method = RequestMethod.POST)
	public boolean idcheck(String id) {
		logger.info("AuthController idcheck() " + new Date());		
		System.out.println("id:" + id);
		return service.checkIdDup(id);	
	}
}
