package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.NoticeDto;

@Mapper
public interface INoticeDao {
	public List<NoticeDto> list();
	public NoticeDto notice_detail( int notice_idx );
}
