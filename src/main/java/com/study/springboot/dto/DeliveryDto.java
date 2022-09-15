package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class DeliveryDto {
	private int Dt_idx;
	private int Dt_status;
	private Date Dt_date;
	private int Dt_PD_idx;
}
