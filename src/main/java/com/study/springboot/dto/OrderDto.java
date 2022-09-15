package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class OrderDto {
	private int Order_idx;
	private int Order_PD_idx;
	private Date Order_date;
	private int Order_quantity;
}
