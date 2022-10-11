package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.BasketDto;

@Mapper
public interface IBasketDao {
	public List<BasketDto> list( int user_idx );
	public int sum( int user_idx );
	public int delete( int basket_idx );
}
