package com.keichee.mustoutdoor.web.domain.acmd.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PoliciesDto {

	private String acmdUid;
	private String chkinTime;	// HH:mm
	private String chkoutTime;	// HH:mm
	private String immdtCfrmYn;
	private String cfrmReqTime;	// hours (represent days as hours)
	private String immdtCfrmMsg;
	private String cfrmReqTimeMsg;
	private String rsrvAbleDays;	// 0: available today, 1 ~ 15: available in advaance of specific days
	private String rsrvAbleDaysMsg;
	
}
