package mul.camp.a.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import mul.camp.a.dto.UserDto;
import mul.camp.a.service.UserService;

@Controller
public class IndexController {
    
    @Autowired
    UserService service;

    @GetMapping("test.do")
    public String test() {
    	
    	List<UserDto> list = service.userList();

        System.out.println("log: " + list.get(0));
        return "test";
    }
}
