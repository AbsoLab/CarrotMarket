package mul.camp.a.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mul.camp.a.dto.UserDto;
import mul.camp.a.service.UserService;
import java.util.Date;


@Controller
public class IndexController {
    
    @Autowired
    UserService service;

    @GetMapping("start.do")
    public String start() {
        return "start";
    }
    
}
