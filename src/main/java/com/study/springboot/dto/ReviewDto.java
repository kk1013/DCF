package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewDto {
	private int Review_idx;
	private String Review_content;
	private String Review_image;
	private Date Review_date;
	private int Review_score;
	private int Review_Item_idx;
}
