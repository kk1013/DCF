package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.UsersDto;

@Mapper
public interface IUsersDao {
	public List<UsersDto> list_member();
	public UsersDto usersdto (int user_idx);
	public int admin_member_update_form(UsersDto dto);
	public int adminMemberDeleteAction (int user_idx);
}
