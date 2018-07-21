/**
 * Created on 2018. 7. 21. by Keichee
 */
package com.keichee.mustoutdoor.web.domain.acmd;

import java.util.List;

import com.keichee.mustoutdoor.web.domain.acmd.dto.AcmdThemesDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.FacilitiesDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.SpecialFacilitiesDto;
import com.keichee.mustoutdoor.web.domain.actv.dto.ActivityDto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UIAcmdAcmdDetails {

	private List<FacilitiesDto> facilities;
	private List<ActivityDto> activities;
	private List<AcmdThemesDto> themes;
    private List<SpecialFacilitiesDto> specialFacilities;
	
}
