package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class OrderDto {
	private int order_idx;
	private String order_status;
	private Date order_date;
	private int order_quantity;
	private int order_pd_idx;
	private int order_user_idx;
	private String user_name;
	private String user_id;
	private int user_phone;
	private String user_email;
	private String user_address;
	private String product_name;
	private String product_image;
	private int product_price;
	private int basket_idx;
	private int basket_count;
}
