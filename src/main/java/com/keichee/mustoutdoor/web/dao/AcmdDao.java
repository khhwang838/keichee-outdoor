package com.keichee.mustoutdoor.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.keichee.mustoutdoor.web.domain.acmd.dto.AcmdDto;

public interface AcmdDao {

	int insertAcmd(AcmdDto dto);
	
	int updateAcmd(AcmdDto dto);
	
	int deleteByUid(@Param("acmdUid")String acmdUid);
	
	List<AcmdDto> selectAllByUserId(@Param("userId")String userId);

	AcmdDto selectByUid(@Param("acmdUid")String acmdUid);
	
	int inActivate(@Param("acmdUid")String acmdUid);
	
	int activate(@Param("acmdUid")String acmdUid);

}
