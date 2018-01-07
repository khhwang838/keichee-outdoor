package com.keichee.mustoutdoor.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.keichee.mustoutdoor.web.domain.acmd.dto.AccommodationDto;

public interface AccommodationDao {

	public int insertAcmd(AccommodationDto dto);
	
	public int updateAcmd(AccommodationDto dto);
	
	public int deleteByUid(@Param(value="acmdUid")String acmdUid);
	
	public List<AccommodationDto> selectAll();

	public List<AccommodationDto> selectByUid(@Param(value="acmdUid")String acmdUid);
	
}
