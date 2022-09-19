package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class OrderDto {
	private int order_idx;
	private int order_PD_idx;
	private Date order_date;
	private int order_quantity;
}
