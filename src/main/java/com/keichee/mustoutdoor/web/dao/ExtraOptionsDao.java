package com.keichee.mustoutdoor.web.dao;

import com.keichee.mustoutdoor.web.domain.acmd.dto.ExtraOptionsDto;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ExtraOptionsDao {

    int insertExtraOption(ExtraOptionsDto extraOption);

    int insertExtraOptions(List<ExtraOptionsDto> extraOptions);

    int deleteExtraOptionsByAcmdUid(@Param("acmdUid") String acmdUid);
}
