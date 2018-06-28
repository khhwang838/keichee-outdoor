package com.keichee.mustoutdoor.web.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.keichee.mustoutdoor.web.domain.actv.dto.ActivityTypesDto;

public interface ActivityTypesDao {

    int insertAcmd(ActivityTypesDto dto);

    int updateAcmd(ActivityTypesDto dto);

    int deleteByUid(@Param(value="acmdUid")String acmdUid);

    List<ActivityTypesDto> selectAll();

    List<ActivityTypesDto> selectByUid(@Param(value="acmdUid")String acmdUid);
}
