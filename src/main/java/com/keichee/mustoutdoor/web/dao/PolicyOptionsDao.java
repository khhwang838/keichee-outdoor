package com.keichee.mustoutdoor.web.dao;

import com.keichee.mustoutdoor.web.domain.acmd.dto.AcmdPolicyOptionRelDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.PolicyOptionsDto;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PolicyOptionsDao {

    int insertPolicyOption(PolicyOptionsDto policyOption);

    int updatePolicyOption(PolicyOptionsDto policyOption);

    int deletePolicyOption(@Param("plcyOptUid") String plcyOptUid);

    // Relation table join
    List<PolicyOptionsDto> selectPolicyOptions(@Param("acmdUid") String acmdUid, @Param("userId") String userId);

    int insertAcmdPolicyOptionRel(AcmdPolicyOptionRelDto acmdPlcyOptRelDto);
    
    int insertAcmdPolicyOptionRels(List<AcmdPolicyOptionRelDto> acmdPlcyOptRelDto);
    
    int deleteAcmdPolicyOptionRelByAcmdUid(@Param("acmdUid") String acmdUid);
    
    int deleteAcmdPolicyOptionRelByUserId(@Param("userId") String userId);
    
    
}
