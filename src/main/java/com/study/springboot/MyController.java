package com.study.springboot;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.study.springboot.dao.IBasketDao;
import com.study.springboot.dao.IFaqDao;
import com.study.springboot.dao.INoticeDao;
import com.study.springboot.dao.IOne2OneDao;
import com.study.springboot.dao.IOrderDao;
import com.study.springboot.dao.IProductDao;
import com.study.springboot.dao.IUsersDao;
import com.study.springboot.dto.BasketDto;
import com.study.springboot.dto.FaqDto;
import com.study.springboot.dto.NoticeDto;
import com.study.springboot.dto.One2OneDto;
import com.study.springboot.dto.OrderDto;
import com.study.springboot.dto.ProductDto;
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
	@Autowired
	IBasketDao iBasketdao;
	/*
	 * @Autowired IReviewDao iReviewdao;
	 * 
	 * 
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
	
	@RequestMapping("/product_new")
	public String product_new(Model model) {
		List<ProductDto> newlist = iProductdao.newlist_dog();
		model.addAttribute("newlist", newlist);
		model.addAttribute("mainPage", "Product/product_new_dog.jsp");
		return "index";
	}
	
	@RequestMapping("/product_new_dog_form")
	public String product_new_dog_form(Model model) {
		List<ProductDto> newlist_dog = iProductdao.newlist_dog();
		model.addAttribute("newlist", newlist_dog);
		model.addAttribute("mainPage", "Product/product_new_dog.jsp");
		return "index";
	}
	
	@RequestMapping("/product_new_cat_form")
	public String product_new_cat_form(Model model) {
		List<ProductDto> newlist_cat = iProductdao.newlist_cat();
		model.addAttribute("newlist", newlist_cat);
		model.addAttribute("mainPage", "Product/product_new_cat.jsp");
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
	
	@RequestMapping("/join_form_2")
	public String join_form_2(Model model) {
		List<UsersDto> list = iUsersdao.user_list();
		model.addAttribute("list", list);
		return "Member/join_form_2";
	}

	@RequestMapping("/cart")
	public String cart(HttpServletRequest request, Model model) {
		int idx = (int) request.getSession().getAttribute("user_idx");
		List<BasketDto> list = iBasketdao.list(idx);
		int sum = iBasketdao.sum(idx);
		model.addAttribute("list", list);
		model.addAttribute("sum", sum);
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
	public String one2one_detail(@RequestParam("one2one_idx") int one2one_idx, Model model) {
		One2OneDto content_detail = iOne2onedao.content_detail(one2one_idx);
		model.addAttribute("dto", content_detail);
		model.addAttribute("mainPage", "Mypage/one2one_detail.jsp");
		return "index";
	}

	@RequestMapping("/one2one_list")
	public String one2one_list(HttpServletRequest request, Model model) {
		int idx = (int) request.getSession().getAttribute("user_idx");
		List<One2OneDto> mylist = iOne2onedao.mylist(idx);
		model.addAttribute("mylist", mylist);
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
							   @RequestParam("user_pw") String user_pw,
							   HttpServletRequest request, Model model) {
		List<UsersDto> list = iUsersdao.list_member();
		request.setAttribute("list", list);
		UsersDto result = iUsersdao.login(user_id, user_pw);
		request.getSession().setAttribute("user_id", user_id);
		request.getSession().setAttribute("user_idx", result.getUser_idx());
		request.getSession().setAttribute("user_name", result.getUser_name());
		if(result != null) {
			if(user_id.equals("admin")) {
				for(int i = 0; i<list.size(); i++) {
					if(list.get(i).getUser_gender().equals("0")) {
						list.get(i).setUser_gender("여자");
					}else if(list.get(i).getUser_gender().equals("1")) {
						list.get(i).setUser_gender("남자");
					}
				}

				request.setAttribute("list", list);
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
	
	@RequestMapping("logout")
	public String logout(HttpServletRequest request, Model model) {
		request.getSession().setAttribute("user_id", null);
		request.getSession().setAttribute("user_idx", null);
		request.getSession().setAttribute("user_name", null);
		model.addAttribute("mainPage", "main.jsp");
		return "index";
	}
	
	
	@RequestMapping("admin_user")
	public String adminlogin(HttpServletRequest request,Model model) {
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
	public String admin_order_action(
			@RequestParam(value = "order_idx", required = false, defaultValue = "") String order_idx,
			HttpServletResponse resp,
			Model model) throws IOException {
		int total_quantity = 0;
		int total_price = 0;
		OrderDto result = iOrderdao.single_select(Integer.parseInt(order_idx));
		model.addAttribute("dto", result);
		result.setProduct_price( result.getOrder_quantity()*result.getProduct_price());
		
		List<OrderDto> product = iOrderdao.product(Integer.parseInt(order_idx));
		for(int i = 0; i<product.size();i++) {
			product.get(i).setProduct_price(product.get(i).getOrder_quantity()*product.get(i).getProduct_price());
			total_quantity += product.get(i).getOrder_quantity();
			total_price += product.get(i).getProduct_price();
		}
		model.addAttribute("list", product);
		model.addAttribute("total_quantity", total_quantity);
		model.addAttribute("total_price", total_price);
		
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
	
	@RequestMapping("/admin_one2one_detail_image_form")
	public String admin_one2one_detail_image_form(@RequestParam("one2one_idx") int one2one_idx, HttpServletRequest request) {
		One2OneDto content_detail = iOne2onedao.content_detail(one2one_idx);
		request.setAttribute("list", content_detail);
		return "/Admin/admin_one2one_detail_image";
	}
	
	@RequestMapping("/admin_one2one_detail_form")
	public String admin_one2one_detail_form(@RequestParam("one2one_idx") int one2one_idx,
											@RequestParam("one2one_reply") String one2one_reply) {
		int reply = iOne2onedao.reply(one2one_reply, one2one_idx);
		return "redirect:/admin_one2one_detail?one2one_idx="+one2one_idx;
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
		List<OrderDto> order_list = iOrderdao.order_list();
		for(int i = 0; i<order_list.size(); i++) {
			if(order_list.get(i).getOrder_status().equals("0")) {
				order_list.get(i).setOrder_status("배송전");
			}
			else if(order_list.get(i).getOrder_status().equals("1")) {
				order_list.get(i).setOrder_status("배송중");
			}
			else if(order_list.get(i).getOrder_status().equals("2")) {
				order_list.get(i).setOrder_status("배송완료");
			}
			else if(order_list.get(i).getOrder_status().equals("3")) {
				order_list.get(i).setOrder_status("배송전");
			}
		}
		
		model.addAttribute("list", order_list);
		
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
		List<ProductDto>list = iProductdao.list();
		model.addAttribute("list", list);
		model.addAttribute("adminPage", "../Admin/admin_product.jsp");
		return "Admin/admin_index";
	}

	@Autowired
	fileUploadService fileUploadService;
	@RequestMapping(value="/admin_product_registration_form", method = RequestMethod.POST)
	public String admin_product_registration_form(
			@RequestParam(value = "animal", required = false, defaultValue = "") String animal,
			@RequestParam(value = "age", required = false, defaultValue = "") String age,
			@RequestParam(value = "feed-type", required = false, defaultValue = "") String feed_type,
			@RequestParam(value = "type", required = false, defaultValue = "") String type,
			@RequestParam(value = "sample", required = false, defaultValue = "0") String sample,
			@RequestParam(value = "best", required = false, defaultValue = "0") String best,
			@RequestParam(value = "new", required = false, defaultValue = "0") String new_,
			@RequestParam(value = "size", required = false, defaultValue = "") String size,
			@RequestParam(value = "name", required = false, defaultValue = "") String name,
			@RequestParam(value = "chooseFile", required=false) MultipartFile file,
			@RequestParam(value = "price", required = false, defaultValue = "") String price,
			@RequestParam(value = "bo_content", required = false, defaultValue = "") String content, 
			Model model) {
		String upload_url = fileUploadService.restore(file);
		ProductDto dto = new ProductDto();
		dto.setProduct_animal(Integer.parseInt(animal));
		dto.setProduct_age(Integer.parseInt(age));
		dto.setProduct_feed_type(Integer.parseInt(feed_type));
		dto.setProduct_category_type(Integer.parseInt(type));
		if (Integer.parseInt(sample) == 2) {
			dto.setProduct_sample(1);
		} else {
			dto.setProduct_sample(Integer.parseInt(sample));
		}
		dto.setProduct_best(Integer.parseInt(best));
		dto.setProduct_new(Integer.parseInt(new_));
		dto.setProduct_size(Integer.parseInt(size));
		dto.setProduct_price(Integer.parseInt(price));
		dto.setProduct_name(name);
		dto.setProduct_image(upload_url);
		dto.setProduct_content(content);
		
		int result = iProductdao.insertProduct( dto );
		
		model.addAttribute("adminPage", "../Admin/admin_product.jsp");
		return "Admin/admin_index";
	}

	@RequestMapping(value="/admin_product_update_form", method = RequestMethod.POST)
	public String admin_product_update_form(			
			@RequestParam(value = "product_idx") String product_idx,
			@RequestParam(value = "animal", required = false, defaultValue = "") String animal,
			@RequestParam(value = "age", required = false, defaultValue = "") String age,
			@RequestParam(value = "feed-type", required = false, defaultValue = "") String feed_type,
			@RequestParam(value = "type", required = false, defaultValue = "") String type,
			@RequestParam(value = "sample", required = false, defaultValue = "0") String sample,
			@RequestParam(value = "best", required = false, defaultValue = "0") String best,
			@RequestParam(value = "new", required = false, defaultValue = "0") String new_,
			@RequestParam(value = "size", required = false, defaultValue = "") String size,
			@RequestParam(value = "name", required = false, defaultValue = "") String name,
			@RequestParam(value = "chooseFile", required=false) MultipartFile file,
			@RequestParam(value = "price", required = false, defaultValue = "") String price,
			@RequestParam(value = "bo_content", required = false, defaultValue = "") String content) {
		String upload_url = fileUploadService.restore(file);
		ProductDto dto = new ProductDto();
		dto.setProduct_idx(Integer.parseInt(product_idx));
		dto.setProduct_animal(Integer.parseInt(animal));
		dto.setProduct_age(Integer.parseInt(age));
		dto.setProduct_feed_type(Integer.parseInt(feed_type));
		dto.setProduct_category_type(Integer.parseInt(type));
		if (Integer.parseInt(sample) == 2) {
			dto.setProduct_sample(1);
		} else {
			dto.setProduct_sample(Integer.parseInt(sample));
		}
		dto.setProduct_best(Integer.parseInt(best));
		dto.setProduct_new(Integer.parseInt(new_));
		dto.setProduct_size(Integer.parseInt(size));
		dto.setProduct_price(Integer.parseInt(price));
		dto.setProduct_name(name);
		dto.setProduct_image(upload_url);
		dto.setProduct_content(content);
		
		int update = iProductdao.update(dto);
		return "redirect:/admin_product";
	}
	
	@RequestMapping(value="/admin_order_status_update", method=RequestMethod.GET)
	public String admin_order_status_update(
			@RequestParam(value="delivery") String order_status,
			@RequestParam(value="order_idx") String order_idx,
			HttpServletRequest request,
			Model model) {
		int result = iOrderdao.order_status_update(Integer.parseInt(order_status),Integer.parseInt(order_idx));
		return "redirect:/admin_order_action?order_idx="+Integer.parseInt(order_idx);
	}
}
