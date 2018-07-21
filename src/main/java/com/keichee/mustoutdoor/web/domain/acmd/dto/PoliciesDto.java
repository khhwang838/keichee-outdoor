package com.keichee.mustoutdoor.web.domain.acmd.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PoliciesDto {

	private String acmdUid;
	private String chkinTime;	// HH:mm (24hrs)
	private String chkoutTime;	// HH:mm (24hrs)
	private String immdtCfrmYn;
	private String cfrmReqTime;	// hours (몇시간 이내에 확인해줄 수 있는지)
	private String cfrmMsg;
	private String rsrvAbleDays;	// 0: available today, 1 ~ 15: available in advaance of specific days
	private String rsrvAbleDaysMsg;
	
}
