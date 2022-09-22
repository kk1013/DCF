package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.FaqDto;

@Mapper
public interface IFaqDao {
	public List<FaqDto> list();
}
