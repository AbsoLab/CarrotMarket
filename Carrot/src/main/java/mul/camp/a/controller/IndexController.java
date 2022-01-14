package mul.camp.a.controller;

<<<<<<< HEAD
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
=======
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import mul.camp.a.dto.UserDto;
import mul.camp.a.service.UserService;
>>>>>>> origin/service

@Controller
public class IndexController {
	private static Logger logger = LoggerFactory.getLogger(IndexController.class);
    
<<<<<<< HEAD
	// index에서 start로 이동
    @RequestMapping(value = "start.do", method = RequestMethod.GET)
	public String login() {
		logger.info("IndexController start() " + new Date());
		
		return "start";
	}
        
=======
    @Autowired
    UserService service;

    @GetMapping("test.do")
    public String test() {
    	
    	List<UserDto> list = service.userList();

        System.out.println("log: " + list.get(0));
        return "test";
    }
>>>>>>> origin/service
}
