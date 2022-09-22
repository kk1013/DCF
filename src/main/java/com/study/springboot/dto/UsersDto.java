package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class UsersDto {
	private int user_idx;
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_email;
	private int user_email_receive;
	private String user_gender;
	private String user_address;
	private int user_phone;
	private Date user_birth_date;
	private Date user_join_date;
}
