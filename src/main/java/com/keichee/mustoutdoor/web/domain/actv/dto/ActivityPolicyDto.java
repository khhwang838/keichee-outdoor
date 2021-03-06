package com.keichee.mustoutdoor.web.domain.actv.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ActivityPolicyDto {
	private String plcyUid;
	private String actvUid;
	private String cfrmTypeCd;
	private String cfrmTime;
	private String rsrvAbleCd;
	private Integer rsrvAbleDays;
	private String cancelTypeCd;
	private String cancelAbleTime;
	private String howToUse;
}
