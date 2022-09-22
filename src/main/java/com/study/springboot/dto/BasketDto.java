package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class BasketDto {
	private int basket_idx;
	private int basket_count;
	private Date basket_date;
	private int basket_pd_idx;
}
