package com.study.springboot;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.study.springboot.dao.INoticeDao;
import com.study.springboot.dao.IUsersDao;
import com.study.springboot.dto.NoticeDto;
import com.study.springboot.dto.UsersDto;

@Controller
public class MyController {
	@Autowired IUsersDao iUsersdao;
	@Autowired INoticeDao iNoticedao;
	
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
	
	//회원정보연결
	@RequestMapping("/admin_member_detail")
	public String admin_member_detail(
			@RequestParam("user_idx") String user_idx,
			Model model,
			HttpServletRequest request) {		
		UsersDto usersdto = iUsersdao.usersdto( Integer.parseInt(user_idx));
		model.addAttribute("usersdto", usersdto);	
		model.addAttribute("adminPage", "../Admin/admin_member_detail.jsp");
		return "Admin/admin_index";
	}
	//회원정보변경
	@RequestMapping("/admin_member_update_form")
	public String admin_member_update_form(
			@RequestParam("user_idx") String user_idx,    
			@RequestParam("user_id") String user_id,            
			@RequestParam("user_pw") String user_pw,
			@RequestParam("user_name") String user_name,           
			@RequestParam("user_address") String user_address,       
			@RequestParam("user_email") String user_email,    
			@RequestParam("user_gender") String user_gender,      
			@RequestParam("user_phone") String user_phone,   
			@RequestParam(value="user_birth_date", required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") Date user_birth_date,
			UsersDto dto) {
		
		System.out.println(user_birth_date);
		dto.setUser_idx(Integer.parseInt(user_idx));
		dto.setUser_id(user_id);
		dto.setUser_pw(user_pw);
		dto.setUser_name(user_name);
		dto.setUser_address(user_address);
		dto.setUser_email(user_email);
		dto.setUser_phone(Integer.parseInt(user_phone));
		dto.setUser_gender(Integer.parseInt(user_gender));
		dto.setUser_birth_date( user_birth_date );

		int result = iUsersdao.admin_member_update_form(dto);
	
		return "redirect:/admin_member_detail?user_idx="+user_idx;
	}
	//회원정보삭제 adminMemberDeleteAction
		@RequestMapping("/adminMemberDeleteAction")
		public String adminMemberDeleteAction(
				@RequestParam("user_idx") List<String> user_idx,
				HttpServletRequest request) {
			System.out.println(user_idx);
			for(int i = 0; i<user_idx.size();i++) {
				int result = iUsersdao.adminMemberDeleteAction(Integer.parseInt(user_idx.get(i)));
			}
			return "redirect:/loginAction";
		}
		
	@RequestMapping("/admin_product_registration")
	public String admin_product_registration(Model model) {
		model.addAttribute("adminPage", "../Admin/admin_product_registration.jsp");
		return "Admin/admin_index";
	}

	@RequestMapping("/admin_notice")
	public String admin_notice(
			Model model,
			HttpServletRequest request) {
			List<NoticeDto> list = iNoticedao.list();
			model.addAttribute("list", list);
		model.addAttribute("adminPage", "../Admin/admin_notice.jsp");
		return "Admin/admin_index";
	}
	@RequestMapping("/admin_notice_detail")
	public String admin_notice_detail(
			@RequestParam("notice_idx") String notice_idx,
			Model model,
			HttpServletRequest request) {		

		NoticeDto noticedto = iNoticedao.noticedto( Integer.parseInt(notice_idx) );
		model.addAttribute("noticedto", noticedto);	
		model.addAttribute("adminPage", "../Admin/admin_notice_detail.jsp");
		return "Admin/admin_index";
	}
	@RequestMapping("/admin_notice_write")
	public String admin_notice_write(Model model) {
		model.addAttribute("adminPage", "../Admin/admin_notice_write.jsp");
		return "Admin/admin_index";
	}
		
	//공지사항작성
	@RequestMapping("/adminWriteNoticeformAction")
	public String adminWriteNoticeformAction (
									@RequestParam("notice_title") String notice_title,
									@RequestParam("notice_content") String notice_content,
									HttpServletRequest request, 
									Model model) {
		int result = iNoticedao.adminWriteNoticeformAction(notice_title, notice_content);

		return "redirect:/admin_notice";
	}
	//공지사항수정
	@RequestMapping("/adminUpdateAction")
	public String adminUpdateAction(
			@RequestParam("notice_idx") String notice_idx,
			@RequestParam("notice_title") String notice_title,
			@RequestParam("notice_content") String notice_content,
			Model model,
			HttpServletRequest request
			) {
		int result = iNoticedao.adminUpdateAction(Integer.parseInt(notice_idx), notice_title, notice_content);
		
		return "redirect:/admin_notice_detail?notice_idx="+notice_idx;
	}
	//공지삭제
	@RequestMapping("/adminnoticeDeleteAction")
	public String adminnoticeDeleteAction(
			@RequestParam("notice_idx") List<String> notice_idx,		
			HttpServletRequest request) {
		System.out.println(notice_idx);
		for(int i=0; i<notice_idx.size(); i++) {		
			int result = iNoticedao.adminnoticeDeleteAction(Integer.parseInt(notice_idx.get(i)));
		}
		return "redirect:/admin_notice";
	}


	@RequestMapping("/admin_order_action")
	public String admin_order_action( Model model) {
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


	@RequestMapping("/admin_product")
	public String admin_product(Model model) {
		model.addAttribute("adminPage", "../Admin/admin_product.jsp");
		return "Admin/admin_index";
	}
	

}
