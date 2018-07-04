package com.keichee.mustoutdoor.web.dao;

import com.keichee.mustoutdoor.web.domain.acmd.dto.AcmdFacilitiesRelDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.AcmdSpecialFacilitiesRelDto;
import org.apache.ibatis.annotations.Param;

import com.keichee.mustoutdoor.web.domain.acmd.dto.SpecialFacilitiesDto;

import java.util.List;

public interface SpecialFacilitiesDao {

    int insertSpecialFacility(SpecialFacilitiesDto specialFacility);

    int updateSpecialFacility(SpecialFacilitiesDto specialFacility);

    int deleteSpecialFacility(@Param("specialFacilityId") String specialFacilityId);

    // 관계 테이블 관련 쿼리
    int insertAcmdSpecialFacilitiesRel(SpecialFacilitiesDto specialFacility);

    int insertAcmdSpecialFacilitiesRels(List<AcmdSpecialFacilitiesRelDto> acmdSpecialFacilitiesRelDtoList);

    int deleteAcmdSpecialFacilitiesRelByAmcdUid(@Param("acmdUid") String acmdUid);

    int deleteAcmdSpecialFacilitiesRelByUserId(@Param("userId") String userId);
}
