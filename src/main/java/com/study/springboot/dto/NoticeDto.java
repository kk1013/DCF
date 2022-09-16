package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeDto {
	private int Notice_idx;
	private String Notice_title;
	private String Notice_content;
	private Date Notice_date;
}
