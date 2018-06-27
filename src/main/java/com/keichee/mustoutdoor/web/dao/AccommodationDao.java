package com.keichee.mustoutdoor.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.keichee.mustoutdoor.web.domain.acmd.dto.AccommodationDto;

public interface AccommodationDao {

	int insertAcmd(AccommodationDto dto);
	
	int updateAcmd(AccommodationDto dto);
	
	int deleteByUid(@Param(value="acmdUid")String acmdUid);
	
	List<AccommodationDto> selectAll();

	List<AccommodationDto> selectByUid(@Param(value="acmdUid")String acmdUid);
	
}
