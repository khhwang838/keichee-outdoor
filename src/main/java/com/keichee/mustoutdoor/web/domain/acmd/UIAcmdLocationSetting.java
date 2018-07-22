/**
 * Created on 2018. 7. 21. by Keichee
 */
package com.keichee.mustoutdoor.web.domain.acmd;

import java.util.List;

import com.keichee.mustoutdoor.web.domain.acmd.dto.NationCityDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.RecommendSpotsDto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UIAcmdLocationSetting {

	private NationCityDto nationCity;
	private String acmdAddr;
	private String acmdAltd;
	private String acmdLgtd;
	private String direction;
	private List<RecommendSpotsDto> rcmdSpots;
}
