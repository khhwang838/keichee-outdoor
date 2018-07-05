package com.keichee.mustoutdoor.web.dao;

import com.keichee.mustoutdoor.web.domain.acmd.dto.AcmdTypesDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.AcmdTypesRelDto;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AcmdTypesDao {

    int insertAcmdType(AcmdTypesDto acmdType);

    int updateAcmdType(AcmdTypesDto acmdType);

    int deleteAcmdTypeById(@Param("acmdTypeId") String acmdTypeId);

    // 관계 테이블 관련
    int insertAcmdTypesRel(AcmdTypesRelDto acmdTypesRel);

    int insertAcmdTypesRels(List<AcmdTypesRelDto> acmdTypesRels);

    int deleteAcmdTypesRelByAcmdUid(@Param("acmdUid") String acmdUid);

    int deleteAcmdTypesRelByUserId(@Param("userId") String userId);

    List<AcmdTypesDto> selectTypesByAcmdUid(@Param("acmdUid") String acmdUid);
}
