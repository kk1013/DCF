package com.study.springboot.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IOrderDao {
	public int beforeDTO();
	public int duringDTO();
	public int afterDTO();
	public int cancelDTO();
	public int orderAllDTO();
}
