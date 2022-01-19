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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	// 관리자 전용 페이지로 이동
	@RequestMapping(value = "admin.do", method = RequestMethod.GET)
	public String admin() {
		logger.info("AdminController admin()" + new Date());
		
		return "admin";
	}
	
	// 통합검색
	@RequestMapping(value = "admSearch.do", method = RequestMethod.GET)
	public String admSearch(Model model, String total) {
		logger.info("AdminController admSearch()" + new Date());
		System.out.println("total: " + total);

		List<UserDto> tUser = us.getSearchList(total);
		model.addAttribute("totalUser",tUser);
		System.out.println(tUser.toString());
		return "admin";
	}
	
	// 선택한 회원 삭제
	@ResponseBody
	@RequestMapping(value = "admDel.do", method = RequestMethod.POST)
	public String admDel(Model model, @RequestParam(value = "param[]") List<String> user) throws Exception{
		logger.info("AdminController admDel()" + new Date());
		System.out.println("user: " + user);
		int a[] = new int[user.size()];
		for (int i = 0; i < user.size(); i++) {
			a[i] = Integer.parseInt(user.get(i));
		}
		boolean b = true;
		for (int i = 0; i < user.size(); i++) {
			b = us.deleteAccount(a[i]);
			if(b==false) {
				System.out.println("정보가 없습니다.");
				break;
			}
		}
		if (b == true) {
			System.out.println("선택한 게시글이 삭제되었습니다.");
			return "Y";
		} else {
			return "N";
		}
	}
	
	// 수정 페이지로 이동
	@RequestMapping(value = "admUpdate.do", method = RequestMethod.GET)
	public String admUpdate(Model model, int uid) {
		logger.info("AdminController admUpdate()" + new Date());
		System.out.println("uid: " + uid);
		
		UserDto user = us.userInfo(uid);
		model.addAttribute("upUser", user);
		System.out.println(user.toString());
		
		return "adminupd";
	}
	
	// 수정
	@RequestMapping(value = "admUpdateAf.do", method = RequestMethod.GET)
	public String admUpdateAf(Model model, UserDto user) {
		logger.info("AdminController admUpdateAf()" + new Date());
		System.out.println(user.toString());
		
		boolean b = us.updateUserInfo(user);
		if(b==true) {
			System.out.println("게시글이 수정되었습니다.");
			return "redirect:/admin.do";
		}else {
			return "admin";
		}
		
		
	}
}
