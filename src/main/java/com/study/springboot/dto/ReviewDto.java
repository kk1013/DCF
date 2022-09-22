package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewDto {
	private int review_idx;
	private String review_content;
	private String review_image;
	private Date review_date;
	private int review_score;
	private int review_Item_idx;
}
