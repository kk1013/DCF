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
	public String main( Model model ) {
		model.addAttribute("mainPage", "main.jsp");
		return "index"; //"index.jsp" 디스패치함.
	}
	
	@RequestMapping("/login")
	public String login( Model model ) {
		model.addAttribute("mainPage", "Member/login.jsp");
		return "index";
	}
	
	@RequestMapping("/join")
	public String join( Model model ) {
		model.addAttribute("mainPage", "Member/join.jsp");
		return "index";
	}
	
	@RequestMapping("/idfind")
	public String idfind( Model model ) {
		model.addAttribute("mainPage", "Member/idfind.jsp");
		return "index";
	}
	
	@RequestMapping("/pwfind")
	public String pwfind( Model model ) {
		model.addAttribute("mainPage", "Member/pwfind.jsp");
		return "index";
	}
	
	@RequestMapping("/product")
	public String product( Model model ) {
		model.addAttribute("mainPage", "Product/product.jsp");
		return "index";
	}
	
	@RequestMapping("/productAction")
	public String productAction( Model model ) {
		model.addAttribute("mainPage", "Product/productAction.jsp");
		return "index";
	}
	
	@RequestMapping("/sample")
	public String sample( Model model ) {
		model.addAttribute("mainPage", "Product/sample.jsp");
		return "index";
	}
	
	@RequestMapping("/loginAction")
	public String adminPage(Model model) {
		model.addAttribute("adminPage", "../Admin/admin_about_member.jsp");
		return "Admin/admin_index";
	}
}



