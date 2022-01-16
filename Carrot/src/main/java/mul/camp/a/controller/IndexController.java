package mul.camp.a.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {
    @RequestMapping (value = "start.do", method = RequestMethod.GET)
    public String index() {
    	
    	return "start";
    }
    
}
