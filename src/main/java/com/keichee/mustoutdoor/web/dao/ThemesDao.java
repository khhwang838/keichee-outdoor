package com.keichee.mustoutdoor.web.dao;

import com.keichee.mustoutdoor.web.domain.acmd.dto.ThemesDto;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ThemesDao {

    int insertTheme(ThemesDto theme);

    int updateTheme(ThemesDto theme);

    int deleteTheme(@Param("themeId") String themeId);

    List<ThemesDto> selectAllThemes();

    List<ThemesDto> selectThemesByAcmdUid(@Param("acmdUid") String acmdUid);

    List<ThemesDto> selectThemesByUserId(@Param("userId") String userId);

    // Relation Table
    int insertAcmdThemesRel(ThemesDto theme);

    int deleteAcmdThemesRelByThemeId(@Param("acmdThemeId")String acmdThemeId);

    int deleteAcmdThemesRelByAcmdId(@Param("acmdUid")String acmdUid);
}
