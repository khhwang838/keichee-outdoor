package com.keichee.mustoutdoor.web.domain.actv.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ActivityInfoDto {
	private String actvUid;
	private String excludeItem;
	private String includeItem;
	private String businessHour;
	private String schedule;
	private String reminder;

}
