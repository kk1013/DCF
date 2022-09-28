package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.NoticeDto;

@Mapper
public interface INoticeDao {
	public List<NoticeDto> list();
	public int adminWriteNoticeformAction(String notice_title, String notice_content);
	public NoticeDto noticedto(int notice_idx);
	public int adminnoticeDeleteAction(int notice_idx);
	public int adminUpdateAction (int notice_idx, String notice_title, String notice_content);
	
}
