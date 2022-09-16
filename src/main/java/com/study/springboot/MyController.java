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
	
	@RequestMapping("/admin_product")
	public String admin_product(Model model) {
		model.addAttribute("adminPage", "../Admin/admin_product.jsp");
		return "Admin/admin_index";
	}
	
	@RequestMapping("/faq")
	public String faq ( Model model) {
		model.addAttribute("mainPage", "Customer/faq.jsp");
		return "index";
	}
	
	@RequestMapping("/notice")
	public String notice ( Model model) {
		model.addAttribute("mainPage", "Customer/notice.jsp");
		return "index";
	}

	@RequestMapping("/onetoone")
	public String onetoone ( Model model) {
		model.addAttribute("mainPage", "Customer/onetoone.jsp");
		return "index";
	}
	
	@RequestMapping("/joinAction")
	public String joinAction ( Model model) {
		model.addAttribute("mainPage", "Member/joinAction.jsp");
		return "index";
	}
	
	@RequestMapping("/joinForm")
	public String joinForm ( Model model) {
		model.addAttribute("mainPage", "Member/joinForm.jsp");
		return "index";
	}
	
	@RequestMapping("/cart")
	public String cart ( Model model) {
		model.addAttribute("mainPage", "Mypage/cart.jsp");
		return "index";
	}
	
	@RequestMapping("/payments")
	public String payments(Model model) {
		model.addAttribute("mainPage", "Order/basketAction.jsp");
		return "index";
	}
	
	@RequestMapping("/paymentsAction")
	public String paymentsAction(Model model) {
		model.addAttribute("mainPage", "Order/orderAction.jsp");
		return "index";
	}
	
	@RequestMapping("/infoChange")
	public String infoChange ( Model model) {
		model.addAttribute("mainPage", "Mypage/infoChange.jsp");
		return "index";
	}
	
	@RequestMapping("/mypage")
	public String mypage ( Model model) {
		model.addAttribute("mainPage", "Mypage/mypage.jsp");
		return "index";
	}
	
	@RequestMapping("/onetooneDetail")
	public String onetooneDetail ( Model model) {
		model.addAttribute("mainPage", "Mypage/onetooneDetail.jsp");
		return "index";
	}
	
	@RequestMapping("/onetoonelist")
	public String onetoonelist ( Model model) {
		model.addAttribute("mainPage", "Mypage/onetoonelist.jsp");
		return "index";
	}
	
	@RequestMapping("/orderlist")
	public String orderlist ( Model model) {
		model.addAttribute("mainPage", "Mypage/orderlist.jsp");
		return "index";
	}
	
	@RequestMapping("/review")
	public String review ( Model model) {
		model.addAttribute("mainPage", "Mypage/review.jsp");
		return "index";
	}
	
	@RequestMapping("/orderAction")
	public String orderAction ( Model model) {
		model.addAttribute("mainPage", "Order/orderAction.jsp");
		return "index";
	}
	
	@RequestMapping("/adminNoticeAdmin")
	public String adminNoticeAdmin( Model model) {
		model.addAttribute("adminPage", "../Admin/admin_noticeAdmin.jsp");
		return "Admin/admin_index";
	}
	
	@RequestMapping("/adminNoticeWrite")
	public String adminNoticeWrite( Model model) {
		model.addAttribute("adminPage", "../Admin/admin_noticeWrite.jsp");
		return "Admin/admin_index";
	}
	
	@RequestMapping("/adminOrderAction")
	public String adminOrderAction( Model model) {
		model.addAttribute("adminPage", "../Admin/admin_orderAction.jsp");
		return "Admin/admin_index";
	}
}



