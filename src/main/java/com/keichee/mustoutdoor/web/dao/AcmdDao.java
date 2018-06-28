package com.keichee.mustoutdoor.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.keichee.mustoutdoor.web.domain.acmd.dto.AcmdDto;

public interface AcmdDao {

	int insertAcmd(AcmdDto dto);
	
	int updateAcmd(AcmdDto dto);
	
	int deleteByUid(@Param(value="acmdUid")String acmdUid);
	
	List<AcmdDto> selectAllByUserId(@Param(value="userId")String userId);

	AcmdDto selectByUid(@Param(value="acmdUid")String acmdUid);

}
