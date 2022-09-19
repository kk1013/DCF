package com.study.springboot;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.study.springboot.dao.IUsersDao;
import com.study.springboot.dto.UsersDto;

@Controller
public class MyController {
	@Autowired
	IUsersDao iUsersdao;
	/*
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
	public String main(Model model) {
		model.addAttribute("mainPage", "main.jsp");
		return "index"; // "index.jsp" 디스패치함.
	}

	@RequestMapping("/login")
	public String login(Model model) {
		model.addAttribute("mainPage", "Member/login.jsp");
		return "index";
	}

	@RequestMapping("/join")
	public String join(Model model) {
		model.addAttribute("mainPage", "Member/join.jsp");
		return "index";
	}

	@RequestMapping("/idfind")
	public String idfind(Model model) {
		model.addAttribute("mainPage", "Member/idfind.jsp");
		return "index";
	}

	@RequestMapping("/pwfind")
	public String pwfind(Model model) {
		model.addAttribute("mainPage", "Member/pwfind.jsp");
		return "index";
	}

	@RequestMapping("/product")
	public String product(Model model) {
		model.addAttribute("mainPage", "Product/product.jsp");
		return "index";
	}

	@RequestMapping("/product_action")
	public String product_action(Model model) {
		model.addAttribute("mainPage", "Product/product_action.jsp");
		return "index";
	}

	@RequestMapping("/sample")
	public String sample(Model model) {
		model.addAttribute("mainPage", "Product/sample.jsp");
		return "index";
	}

	@RequestMapping("/faq")
	public String faq(Model model) {
		model.addAttribute("mainPage", "Customer/faq.jsp");
		return "index";
	}

	@RequestMapping("/notice")
	public String notice(Model model) {
		model.addAttribute("mainPage", "Customer/notice.jsp");
		return "index";
	}

	@RequestMapping("/one2one")
	public String one2one(Model model) {
		model.addAttribute("mainPage", "Customer/one2one.jsp");
		return "index";
	}

	@RequestMapping("/join_action")
	public String join_action(Model model) {
		model.addAttribute("mainPage", "Member/join_action.jsp");
		return "index";
	}

	@RequestMapping("/join_form")
	public String join_form(Model model) {
		model.addAttribute("mainPage", "Member/join_form.jsp");
		return "index";
	}

	@RequestMapping("/cart")
	public String cart(Model model) {
		model.addAttribute("mainPage", "Mypage/cart.jsp");
		return "index";
	}

	@RequestMapping("/order_payments")
	public String order_payments(Model model) {
		model.addAttribute("mainPage", "Order/order_payments.jsp");
		return "index";
	}

	@RequestMapping("/order_action")
	public String order_action(Model model) {
		model.addAttribute("mainPage", "Order/order_action.jsp");
		return "index";
	}

	@RequestMapping("/info_change")
	public String info_change(Model model) {
		model.addAttribute("mainPage", "Mypage/info_change.jsp");
		return "index";
	}

	@RequestMapping("/mypage")
	public String mypage(Model model) {
		model.addAttribute("mainPage", "Mypage/mypage.jsp");
		return "index";
	}

	@RequestMapping("/one2one_detail")
	public String one2one_detail(Model model) {
		model.addAttribute("mainPage", "Mypage/one2one_detail.jsp");
		return "index";
	}

	@RequestMapping("/one2one_list")
	public String one2one_list(Model model) {
		model.addAttribute("mainPage", "Mypage/one2one_list.jsp");
		return "index";
	}

	@RequestMapping("/order_list")
	public String order_list(Model model) {
		model.addAttribute("mainPage", "Mypage/order_list.jsp");
		return "index";
	}

	@RequestMapping("/review")
	public String review(Model model) {
		model.addAttribute("mainPage", "Mypage/review.jsp");
		return "index";
	}

	@RequestMapping("/order_detail")
	public String order_detail(Model model) {
		model.addAttribute("mainPage", "Order/order_detail.jsp");
		return "index";
	}

	@RequestMapping("/loginAction")
	public String admin_member(HttpServletRequest request, Model model) {
		List<UsersDto> list = iUsersdao.list_member();
		request.setAttribute("list", list);

		model.addAttribute("adminPage", "../Admin/admin_member.jsp");
		return "Admin/admin_index";
	}

	@RequestMapping("/admin_product_registration")
	public String admin_product_registration(Model model) {
		model.addAttribute("adminPage", "../Admin/admin_product_registration.jsp");
		return "Admin/admin_index";
	}

	@RequestMapping("/admin_notice")
	public String admin_notice(Model model) {
		model.addAttribute("adminPage", "../Admin/admin_notice.jsp");
		return "Admin/admin_index";
	}

	@RequestMapping("/admin_notice_write")
	public String admin_notice_write(Model model) {
		model.addAttribute("adminPage", "../Admin/admin_notice_write.jsp");
		return "Admin/admin_index";
	}

	@RequestMapping("/admin_order_action")
	public String admin_order_action(Model model) {
		model.addAttribute("adminPage", "../Admin/admin_order_action.jsp");
		return "Admin/admin_index";
	}

	@RequestMapping("/admin_one2one")
	public String admin_one2one(Model model) {
		model.addAttribute("adminPage", "../Admin/admin_one2one.jsp");
		return "Admin/admin_index";
	}

	@RequestMapping("/admin_one2one_detail")
	public String admin_one2one_detail(Model model) {
		model.addAttribute("adminPage", "../Admin/admin_one2one_detail.jsp");
		return "Admin/admin_index";
	}

	@RequestMapping("/admin_order")
	public String admin_order(Model model) {
		model.addAttribute("adminPage", "../Admin/admin_order.jsp");
		return "Admin/admin_index";
	}

	@RequestMapping("/admin_order_list")
	public String admin_order_list(Model model) {
		model.addAttribute("adminPage", "../Admin/admin_order_list.jsp");
		return "Admin/admin_index";
	}

	@RequestMapping("/admin_member_detail")
	public String admin_member_detail(Model model) {
		model.addAttribute("adminPage", "../Admin/admin_member_detail.jsp");
		return "Admin/admin_index";
	}

	@RequestMapping("/admin_product")
	public String admin_product(Model model) {
		model.addAttribute("adminPage", "../Admin/admin_product.jsp");
		return "Admin/admin_index";
	}
}
