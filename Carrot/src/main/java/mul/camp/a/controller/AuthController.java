package mul.camp.a.controller;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	
    /*
        로그인, 로그아웃, 회원가입
    */
	@RequestMapping(value = "start.do", method = RequestMethod.GET)
	public String Start() {
		logger.info("AuthController Start() " + new Date());		
		return "start";
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
