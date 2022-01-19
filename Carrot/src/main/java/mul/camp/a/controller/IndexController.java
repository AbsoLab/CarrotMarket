package mul.camp.a.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
    
    @GetMapping("start.do")
    public String start() {
        return "start";
    }
    
}
