package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.UsersDto;

@Mapper
public interface IUsersDao {
	public List<UsersDto> list_member();
	public int login ( String user_id, String user_pw );
	public List<UsersDto> user_list();
}
