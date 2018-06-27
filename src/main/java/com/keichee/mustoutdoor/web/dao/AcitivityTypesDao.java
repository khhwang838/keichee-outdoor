package com.keichee.mustoutdoor.web.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AcitivityTypesDao {

    int insertAcmd(AcitivityTypesDto dto);

    int updateAcmd(AcitivityTypesDto dto);

    int deleteByUid(@Param(value="acmdUid")String acmdUid);

    List<AcitivityTypesDto> selectAll();

    List<AcitivityTypesDto> selectByUid(@Param(value="acmdUid")String acmdUid);
}
