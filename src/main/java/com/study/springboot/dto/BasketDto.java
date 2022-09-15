package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class BasketDto {
	private int Basket_idx;
	private int Basket_count;
	private Date Basket_date;
	private int Product_idx;
}
