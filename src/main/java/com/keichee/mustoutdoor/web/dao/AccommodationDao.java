package com.keichee.mustoutdoor.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.keichee.mustoutdoor.web.domain.acmd.dto.AcmdDto;

public interface AccommodationDao {

	public int insertAcmd(AcmdDto dto);
	
	public int updateAcmd(AcmdDto dto);
	
	public int deleteByUid(@Param(value="acmdUid")String acmdUid);
	
	public List<AcmdDto> selectAllByUserId(@Param(value="userId")String userId);

	public AcmdDto selectByUid(@Param(value="acmdUid")String acmdUid);
	
}
