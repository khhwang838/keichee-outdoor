package com.keichee.mustoutdoor.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.keichee.mustoutdoor.web.domain.acmd.dto.RoomTypesDto;

public interface RoomTypesDao {

	List<RoomTypesDto> selectTypesByAcmdUid(@Param(value = "acmdUid") String acmdUid);
}
