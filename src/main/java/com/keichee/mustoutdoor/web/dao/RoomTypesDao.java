package com.keichee.mustoutdoor.web.dao;

import java.util.List;

import com.keichee.mustoutdoor.web.domain.acmd.dto.RoomTypeDto;

public interface RoomTypesDao {

	List<RoomTypeDto> selectTypesByAcmdUid(String acmdUid);
}
