package mul.camp.a.controller;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mul.camp.a.service.MemberService;

@Controller
public class Membercontroller {
	private static Logger logger = LoggerFactory.getLogger(Membercontroller.class);
	

	@Autowired
	MemberService service;
	
	
	@RequestMapping(value = "start.do", method = RequestMethod.GET)
	public String start() {
		logger.info("Membercontroller login()" + new Date());
		return "start";
	}
}
