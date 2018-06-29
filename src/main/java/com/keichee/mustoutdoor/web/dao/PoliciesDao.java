package com.keichee.mustoutdoor.web.dao;

import com.keichee.mustoutdoor.web.domain.acmd.dto.PoliciesDto;
import org.apache.ibatis.annotations.Param;

public interface PoliciesDao {

    int insertPolicy(PoliciesDto policy);

    int updatePolicy(PoliciesDto policy);

    int deletePolicy(@Param("acmdUid") String acmdUid);

    PoliciesDto selectPolicy(@Param("acmdUid") String acmdUid);
}
