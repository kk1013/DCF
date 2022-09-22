package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.ProductDto;

@Mapper
public interface IProductDao {
	public List<ProductDto> list();
	public ProductDto update_view( int product_idx );
	public List<ProductDto> search( String keyword );
	public int product_delete( int product_idx );
	public int update( ProductDto dto );
	public int insertProduct( ProductDto dto );
}
