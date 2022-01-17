package mul.camp.a.controller;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mul.camp.a.dto.UserDto;
import mul.camp.a.service.UserService;

@Controller
public class AdminController {
	private static Logger logger = LoggerFactory.getLogger(IndexController.class);
    /*
        유저 목록보기, 유저 정보보기, 유저 탈퇴
     */
	@Autowired
	UserService us;
	
	@RequestMapping(value = "admin.do", method = RequestMethod.GET)
	public String admin() {
		logger.info("AdminController admin()" + new Date());
		
		return "admin";
	}
	
	@RequestMapping(value = "admSearch.do", method = RequestMethod.GET)
	public String admSearch(Model model, String total) {
		logger.info("AdminController admSearch()" + new Date());
		System.out.println("total: " + total);
		
		List<UserDto> tUser = us.getTotal(total);
		model.addAttribute("totalUser",tUser);
		System.out.println(tUser.toString());
		return "admin";
	}
}
