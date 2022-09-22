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
	public int update( String product_name, int product_price, String product_image, String product_content,
					   int product_age, int product_feet_type, int product_size, int product_animal, int product_new,
					   int product_best, int product_category_type, int product_sample, int product_idx);
}
