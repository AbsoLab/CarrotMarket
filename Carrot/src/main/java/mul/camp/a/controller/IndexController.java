package mul.camp.a.controller;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {
	private static Logger logger = LoggerFactory.getLogger(IndexController.class);
    
	// index에서 start로 이동
    @RequestMapping(value = "start.do", method = RequestMethod.GET)
	public String login() {
		logger.info("IndexController start() " + new Date());
		
		return "start";
	}
        
}
