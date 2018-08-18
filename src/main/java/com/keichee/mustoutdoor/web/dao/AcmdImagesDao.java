package com.keichee.mustoutdoor.web.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.keichee.mustoutdoor.web.domain.acmd.dto.AcmdImagesDto;

public interface AcmdImagesDao {

	int insertAcmdImages(AcmdImagesDto dto);

	int updateAcmdImages(AcmdImagesDto dto);

	List<AcmdImagesDto> selectByAcmdUid(@Param("acmdUid") String acmdUid);
	
	AcmdImagesDto selectByUid(@Param("imgUid") String imgUid);

	int deleteByUid(@Param("imgUid") String imgUid);

	int deleteByAcmdUid(@Param("acmdUid") String acmdUid);

	int deleteByUserId(@Param("userId") String userId);
}
