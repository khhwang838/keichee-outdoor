package com.keichee.mustoutdoor.web.dao;

import com.keichee.mustoutdoor.web.domain.acmd.dto.RecommendSpotsDto;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RcmdSpotsDao {

    int insertRcmdSpots(RecommendSpotsDto rcmdSpot);

    int updateRcmdSpots(RecommendSpotsDto rcmdSpot);

    int deleteRcmdSpotsByAcmdUid(@Param("acmdUid") String acmdUid);

    int deleteRcmdSpotsByUserId(@Param("userId") String userId);

    List<RecommendSpotsDto> selectRcmdSpotsByAcmdUid(@Param("acmdUid") String acmdUid);

    List<RecommendSpotsDto> selectRcmdSpotsByUserId(@Param("userId") String userId);
}
