package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class DeliveryDto {
	private int dt_idx;
	private int dt_status;
	private Date dt_date;
	private int dt_PD_idx;
}
