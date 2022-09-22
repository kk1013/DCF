package com.study.springboot.dao;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.ProductDto;

@Mapper
public interface IProductDao {
	public ProductDto update_view( int product_idx );
	public int update( ProductDto dto );
	public int insertProduct( ProductDto dto );
}
