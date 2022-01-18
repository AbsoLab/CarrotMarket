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
		
	//유저 정보 불러오기
	@RequestMapping(value = "userInfo.do", method = RequestMethod.GET)
	public String userinfo(Model model, HttpServletRequest req) {
		logger.info("UserController userinfo()" + new Date());
		//UserDto  dto = (UserDto)req.getSession().getAttribute("login");//세션값으로 uid 불러오기
		//int uid = dto.getUid();
		int uid = 1; //test 용
		UserDto user = service.userInfo(uid);
		//System.out.println(user.toString());
		model.addAttribute("user",user);
		
		return "userInfo";
	}
	//정보 수정
	@RequestMapping(value = "updateUserInfo.do", method = RequestMethod.POST)
	public String updateUser(UserDto dto) {
		logger.info("UserController updateUser()" + new Date());
		System.out.println(dto.toString());
		
		boolean b = service.updateUserInfo(dto);
		if (b) {
			System.out.println("업데이트");
		}else {
			System.out.println("실패");
		}
		return "start";
	}
	//회원 탈퇴
	@RequestMapping(value ="deleteAccount.do", method = RequestMethod.GET)
	public String deleteAccount(HttpServletRequest req) {
		logger.info("UserController deleteAccount()" + new Date());
		UserDto  dto = (UserDto)req.getSession().getAttribute("login");//세션값으로 uid불러오기
		int uid = dto.getUid();
		uid  =1; //test용
		boolean b = service.deleteAccount(uid);
		if (b) {
			System.out.println("업데이트");
		}else {
			System.out.println("실패");
		}
		return "start";
	}
}
