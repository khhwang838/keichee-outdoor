package com.keichee.mustoutdoor.web.domain.actv.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ActivityPackagesDto {
	private String packageUid;
	private String actvUid;
	private String packageName;
	private String opStartDate;
	private String opEndDate;
	private String opWeekDay;
}
