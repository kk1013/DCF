package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.OrderDto;

@Mapper
public interface IOrderDao {
	public int beforeDTO();
	public int duringDTO();
	public int afterDTO();
	public int cancelDTO();
	public int orderAllDTO();
	public List<OrderDto> order_list();
	public OrderDto single_select(int order_idx);
	public List<OrderDto> product(int order_idx);
	public int order_status_update(int order_status, int order_idx);
	public List<OrderDto> myOrderList(int user_idx);
	public List<OrderDto> orderdetail(int order_idx, int idx);
	
}
