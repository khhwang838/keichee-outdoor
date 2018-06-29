package com.keichee.mustoutdoor.web.dao;

import com.keichee.mustoutdoor.web.domain.acmd.dto.ExtraOptionsDto;
import org.apache.ibatis.annotations.Param;

public interface ExtraOptionsDao {

    int insertExtraOption(ExtraOptionsDto extraOption);

    int updateExtraOption(ExtraOptionsDto extraOption);

    int deleteExtraOption(@Param("extraOptUid") String extraOptUid);
}
