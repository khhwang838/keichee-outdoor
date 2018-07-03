package com.keichee.mustoutdoor.web.dao;

import com.keichee.mustoutdoor.web.domain.acmd.dto.FacilitiesDto;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FacilitiesDao {

    int insertFacility(FacilitiesDto facility);

    int updateFacility(FacilitiesDto facility);

    int deleteFacility(@Param("facilityId") String facilityId);

    // 관계 테이블 관련
    int insertFacilitiesRel(FacilitiesDto facility);

    int insertFacilitiresRels(@Param("facilities") List<FacilitiesDto> facilities);

    int deleteFacilitiesRelByAcmdUid(@Param("acmdUid") String acmdUid);

    int deleteFacilitiesRelByUserId(@Param("userId") String userId);
}
