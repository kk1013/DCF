package com.study.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {
	/*
	 * @Autowired IUsersDao iUsersdao;
	 * 
	 * @Autowired IUsersDao iSampledao;
	 * 
	 * @Autowired IUsersDao iReviewdao;
	 * 
	 * @Autowired IUsersDao iProductdao;
	 * 
	 * @Autowired IUsersDao iOrderdao;
	 * 
	 * @Autowired IUsersDao iOne2onedao;
	 * 
	 * @Autowired IUsersDao iNoticedao;
	 * 
	 * @Autowired IUsersDao iFaqdao;
	 * 
	 * @Autowired IUsersDao iDeliverydao;
	 * 
	 * @Autowired IUsersDao iBasketdao;
	 */
	
	
	
	@RequestMapping("/")
	public String root() {
		return "redirect:index";
	}
	
	@RequestMapping("/index")
	public String main( Model model) {
		model.addAttribute("mainPage", "main.jsp");
		return "index"; //"index.jsp" 디스패치함.
	}

}



