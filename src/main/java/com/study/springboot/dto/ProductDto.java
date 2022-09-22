package com.study.springboot.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class ProductDto {
	private int product_idx;
	private String product_name;
	private String product_image;
	private String product_content;
	private int product_price;
	private int product_age;
	private int product_feed_type;
	private int product_size;
	private int product_animal;
	private int product_new;
	private int product_best;
	private int product_hit;
	private int product_type;
	private int product_sample;
	private Date product_date;
}
