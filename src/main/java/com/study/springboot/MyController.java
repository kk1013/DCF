package com.study.springboot;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.study.springboot.dao.IFaqDao;
import com.study.springboot.dao.INoticeDao;
import com.study.springboot.dao.IOne2OneDao;
import com.study.springboot.dao.IOrderDao;
import com.study.springboot.dao.IProductDao;
import com.study.springboot.dao.IUsersDao;
import com.study.springboot.dto.FaqDto;
import com.study.springboot.dto.NoticeDto;
import com.study.springboot.dto.One2OneDto;
import com.study.springboot.dto.ProductDto;
import com.study.springboot.dto.UsersDto;

import com.study.springboot.dao.IUsersDao;
import com.study.springboot.dto.UsersDto;

@Controller
public class MyController {
	@Autowired
	IUsersDao iUsersdao;
	@Autowired
	IOne2OneDao iOne2onedao;
	@Autowired
	IProductDao iProductdao;
	@Autowired
	IOrderDao iOrderdao;
	@Autowired
	INoticeDao iNoticedao;
	@Autowired
	IFaqDao iFaqdao;
	/*
	 * 
	 * @Autowired ISampleDao iSampledao;
	 * 
	 * @Autowired IReviewDao iReviewdao;
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 *
	 * 
	 * 
	 * 
	 * @Autowired IBasketDao iBasketdao;
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
		List<FaqDto> faqlist = iFaqdao.list();
		model.addAttribute("list", faqlist);
		model.addAttribute("mainPage", "Customer/faq.jsp");
		return "index";
	}

	@RequestMapping("/notice")
	public String notice(Model model) {
		List<NoticeDto> noticelist = iNoticedao.list();
		model.addAttribute("list", noticelist);
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
	public String admin_member(@RequestParam("user_id") String user_id,
							   @RequestParam("user_pw") String user_pw, HttpServletRequest request, Model model) {
		List<UsersDto> list = iUsersdao.list_member();
		request.setAttribute("list", list);
		int result = iUsersdao.login(user_id, user_pw);
		request.getSession().setAttribute("user_id", user_id);
		if(result >= 1) {
			if(user_id.equals("admin")) {
				model.addAttribute("adminPage", "../Admin/admin_member.jsp");
				return "Admin/admin_index";
			}else {
				model.addAttribute("mainPage", "main.jsp");
				return "index";
			}
			
		}
		model.addAttribute("mainPage", "main.jsp");
		return "index";
	}

	@RequestMapping("/admin_product_registration")
	public String admin_product_registration(Model model) {
		model.addAttribute("adminPage", "../Admin/admin_product_registration.jsp");
		return "Admin/admin_index";
	}
	
	@RequestMapping("/admin_product_update")
	public String admin_product_update(@RequestParam("product_idx") int product_idx, Model model) {
		ProductDto update_view = iProductdao.update_view(product_idx);
		model.addAttribute("dto", update_view);
		model.addAttribute("adminPage", "../Admin/admin_product_update.jsp");
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
		List<One2OneDto> list = iOne2onedao.list();
		model.addAttribute("list", list);
		model.addAttribute("adminPage", "../Admin/admin_one2one.jsp");
		return "Admin/admin_index";
	}
	
	@RequestMapping("/admin_one2one_search")
	public String admin_one2one_search(@RequestParam("keyword") String keyword, Model model) {
		List<One2OneDto> search = iOne2onedao.search(keyword);
		model.addAttribute("list", search);
		model.addAttribute("adminPage", "../Admin/admin_one2one.jsp");
		return "Admin/admin_index";
	}

	@RequestMapping("/admin_one2one_detail")
	public String admin_one2one_detail(@RequestParam("one2one_idx") int one2one_idx, Model model) {
		One2OneDto content_detail = iOne2onedao.content_detail(one2one_idx);
		model.addAttribute("dto", content_detail);
		model.addAttribute("adminPage", "../Admin/admin_one2one_detail.jsp");
		return "Admin/admin_index";
	}
	
	@RequestMapping("/admin_one2one_detail_form")
	public String admin_one2one_detail_form(@RequestParam("one2one_idx") int one2one_idx,
											@RequestParam("one2one_reply") String one2one_reply) {
		int reply = iOne2onedao.reply(one2one_reply, one2one_idx);
		return "redirect:/admin_one2one";
	}

	@RequestMapping("/admin_order")
	public String admin_order( Model model) {
		int order_status0 = iOrderdao.beforeDTO();
		int order_status1 = iOrderdao.duringDTO();
		int order_status2 = iOrderdao.afterDTO();
		int order_status3 = iOrderdao.cancelDTO();
		int order_status = iOrderdao.orderAllDTO();
		model.addAttribute("before", order_status0 );
		model.addAttribute("during", order_status1 );
		model.addAttribute("after", order_status2 );
		model.addAttribute("cancel", order_status3 );
		model.addAttribute("orderAll", order_status );		
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
		List<ProductDto> list = iProductdao.list();
		model.addAttribute("list", list);
		model.addAttribute("adminPage", "../Admin/admin_product.jsp");
		return "Admin/admin_index";
	}
	
	@RequestMapping("/admin_product_search")
	public String admin_product_search(@RequestParam("keyword") String keyword, Model model) {
		List<ProductDto> search = iProductdao.search(keyword);
		model.addAttribute("list", search);
		model.addAttribute("adminPage", "../Admin/admin_product.jsp");
		return "Admin/admin_index";
	}
	
	@RequestMapping("/admin_product_update_form")
	public String admin_product_update_form(@RequestParam("product_name") String product_name, @RequestParam("product_price") int product_price,
											@RequestParam("product_image") String product_image, @RequestParam("product_content") String product_content,
											@RequestParam("product_age") int product_age, @RequestParam("product_feet_type") int product_feet_type,
											@RequestParam("product_size") int product_size, @RequestParam("product_animal") int product_animal,
											@RequestParam("product_new") int product_new, @RequestParam("product_best") int product_best,
											@RequestParam("product_category_type") int product_category_type, @RequestParam("product_sample") int product_sample,
											@RequestParam("product_idx") int product_idx) {
		int update = iProductdao.update(product_name, product_price, product_image, product_content, product_age, product_feet_type,
					 product_size, product_animal, product_new, product_best, product_category_type, product_sample, product_idx);
		return "redirect:/admin_product";
	}
	
	
	
}
