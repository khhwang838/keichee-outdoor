package com.keichee.mustoutdoor.web.domain.acmd.dto;

import java.time.LocalDateTime;

import com.keichee.mustoutdoor.utils.GuidUtils;
import com.keichee.mustoutdoor.web.domain.acmd.UIAccommodation;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AcmdDto {

	private String acmdUid;
	private String userId;
	private String acmdName;
	private String acmdDesc;
	private String email;
	private String contact;
	private String imgUrl;
	private String acmdAddr;
	private String acmdAltd;
	private String acmdLgtd;
	private String direction;
	private String acmdAvgScore;
	private String cityUid;
	private String crcNationCd;
	private String crcUnit;
	private String cancelPlcyUid;
	private String activeYn;
	private LocalDateTime createDttm;
	private LocalDateTime updateDttm;
	
	public AcmdDto() {}
	public AcmdDto(UIAccommodation ui) {
		this.acmdUid = GuidUtils.instance().createGuid();
		this.acmdName = ui.getUiGeneralInfo().getTitle();
		this.acmdDesc = ui.getUiGeneralInfo().getDesc();
		this.acmdAddr = ui.getUiLocation().getAcmdAddr();
		this.acmdAltd = ui.getUiLocation().getAcmdAltd();
		this.acmdLgtd = ui.getUiLocation().getAcmdLgtd();
		this.direction = ui.getUiLocation().getDirection();
		this.crcNationCd = ui.getUiGeneralInfo().getCurrency().getCrcNtlCd();
		this.crcUnit = ui.getUiGeneralInfo().getCurrency().getCrcUnit();
		this.activeYn = "Y";
	}

}
