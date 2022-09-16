package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class One2OneDto {
	private int One2One_idx;
	private String One2One_title;
	private String One2One_content;
	private String One2One_image;
	private Date One2One_date;
	private int One2One_User_idx;
}
