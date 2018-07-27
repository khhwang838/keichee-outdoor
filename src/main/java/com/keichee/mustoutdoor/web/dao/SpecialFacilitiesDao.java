package com.keichee.mustoutdoor.web.dao;

import org.apache.ibatis.annotations.Param;

import com.keichee.mustoutdoor.web.domain.acmd.dto.SpecialFacilitiesDto;

public interface SpecialFacilitiesDao {

	int insertSpecialFacility(SpecialFacilitiesDto specialFacility);

	int updateSpecialFacility(SpecialFacilitiesDto specialFacility);

	void deleteSpecialFacilitiesByAmcdUid(@Param("acmdUid") String acmdUid);

}
