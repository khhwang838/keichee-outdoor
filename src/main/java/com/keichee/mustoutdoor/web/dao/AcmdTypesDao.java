package com.keichee.mustoutdoor.web.dao;

import com.keichee.mustoutdoor.web.domain.acmd.dto.AcmdTypesDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.AcmdAcmdTypesRelDto;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Deprecated
public interface AcmdTypesDao {

    int insertAcmdType(AcmdTypesDto acmdType);

    int updateAcmdType(AcmdTypesDto acmdType);

    int deleteAcmdTypeById(@Param("acmdTypeId") String acmdTypeId);

    // 관계 테이블 관련
    int insertAcmdTypesRel(AcmdAcmdTypesRelDto acmdTypesRel);

    int insertAcmdTypesRels(List<AcmdAcmdTypesRelDto> acmdTypesRels);

    int deleteAcmdTypesRelByAcmdUid(@Param("acmdUid") String acmdUid);

    int deleteAcmdTypesRelByUserId(@Param("userId") String userId);

    List<AcmdTypesDto> selectTypesByAcmdUid(@Param("acmdUid") String acmdUid);
}
