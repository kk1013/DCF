package com.study.springboot.dto;

import lombok.Data;

@Data
public class FaqDto {
	private int faq_idx;
	private String faq_title;
	private String faq_content;
}
