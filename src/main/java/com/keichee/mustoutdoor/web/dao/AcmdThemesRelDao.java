package com.keichee.mustoutdoor.web.dao;

import org.apache.ibatis.annotations.Param;
import com.keichee.mustoutdoor.web.domain.acmd.dto.ThemesDto;

public interface AcmdThemesRelDao {

	int insertAcmdThemesRel(ThemesDto theme);
	
	int deleteAcmdThemesRelByThemeId(@Param(value="acmdThemeId")String acmdThemeId);
	
	int deleteAcmdThemesRelByAcmdId(@Param(value="acmdUid")String acmdUid);
}
