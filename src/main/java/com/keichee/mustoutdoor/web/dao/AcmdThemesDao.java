package com.keichee.mustoutdoor.web.dao;

import com.keichee.mustoutdoor.web.domain.acmd.dto.AcmdThemesDto;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AcmdThemesDao {

    int insertTheme(AcmdThemesDto theme);

    int updateTheme(AcmdThemesDto theme);

    int deleteTheme(@Param("themeId") String themeId);

    List<AcmdThemesDto> selectAllThemes();

    List<AcmdThemesDto> selectThemesByAcmdUid(@Param("acmdUid") String acmdUid);

    List<AcmdThemesDto> selectThemesByUserId(@Param("userId") String userId);

    // Relation Table
    int insertAcmdThemesRel(AcmdThemesDto theme);

    int deleteAcmdThemesRelByThemeId(@Param("acmdThemeId")String acmdThemeId);

    int deleteAcmdThemesRelByAcmdId(@Param("acmdUid")String acmdUid);
}
