package com.keichee.mustoutdoor.web.dao;

import com.keichee.mustoutdoor.web.domain.acmd.dto.PolicyOptionsDto;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PolicyOptionsDao {

    int insertPolicyOption(PolicyOptionsDto policyOption);

    int updatePolicyOption(PolicyOptionsDto policyOption);

    int deletePolicyOption(@Param("plcyOptionUid") String plcyOptionUid);

    // Relation table join
    List<PolicyOptionsDto> selectPolicyOptions(@Param("acmdUid") String acmdUid);

}
