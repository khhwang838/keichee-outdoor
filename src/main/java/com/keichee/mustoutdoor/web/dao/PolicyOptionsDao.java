package com.keichee.mustoutdoor.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.keichee.mustoutdoor.web.domain.acmd.dto.PolicyOptionsDto;

public interface PolicyOptionsDao {

	List<PolicyOptionsDto> selectPolicyOptions(@Param("acmdUid") String acmdUid, @Param("userId") String userId);
	
    int insertPolicyOption(PolicyOptionsDto policyOption);

    int updatePolicyOption(PolicyOptionsDto policyOption);

    int deleteByUid(@Param("plcyOptUid") String plcyOptUid);

    int deleteByAcmdUid(@Param("acmdUid") String acmdUid);
    
    int deleteByUserId(@Param("userId") String userId);
}
