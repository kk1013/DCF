package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class UsersDto {
	private int User_idx;
	private String User_id;
	private String User_pw;
	private String User_name;
	private String User_email;
	private int User_email_receive;
	private String User_gender;
	private String User_address;
	private int User_phone;
	private Date User_birth_date;
	private Date User_join_date;
}
