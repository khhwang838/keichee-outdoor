package com.keichee.mustoutdoor.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.keichee.mustoutdoor.web.domain.acmd.dto.AcmdSpecialFacilitiesRelDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.SpecialFacilitiesDto;

public interface SpecialFacilitiesDao {

    int insertSpecialFacility(SpecialFacilitiesDto specialFacility);

    int updateSpecialFacility(SpecialFacilitiesDto specialFacility);

    int deleteSpecialFacility(@Param("specialFcltId") String specialFacilityId);

    // 관계 테이블 관련 쿼리
    int insertAcmdSpecialFacilitiesRel(AcmdSpecialFacilitiesRelDto acmdSpecialFcltRel);

    int insertAcmdSpecialFacilitiesRels(List<AcmdSpecialFacilitiesRelDto> acmdSpecialFcltRelDtoList);

    int deleteAcmdSpecialFacilitiesRelByAmcdUid(@Param("acmdUid") String acmdUid);

    int deleteAcmdSpecialFacilitiesRelByUserId(@Param("userId") String userId);
}
