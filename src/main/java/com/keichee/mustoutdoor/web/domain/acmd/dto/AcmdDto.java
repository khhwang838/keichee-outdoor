package com.keichee.mustoutdoor.web.domain.acmd.dto;

import com.keichee.mustoutdoor.web.domain.acmd.UIAccommodation;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AcmdDto {

	private String acmdUid;
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
	private String cancelPlcyUid;
	
	public AcmdDto() {}
	public AcmdDto(UIAccommodation ui) {
		this.acmdUid = ui.getAcmd().getAcmdUid();
		this.acmdName = ui.getAcmd().getAcmdName();
		this.acmdDesc = ui.getAcmd().getAcmdDesc();
		this.email = ui.getAcmd().getEmail();
		this.contact = ui.getAcmd().getContact();
		this.acmdAddr = ui.getAcmd().getAcmdAddr();
		this.acmdAltd = ui.getAcmd().getAcmdAltd();
		this.acmdLgtd = ui.getAcmd().getAcmdLgtd();
		this.direction = ui.getAcmd().getDirection();
		this.crcNationCd = ui.getAcmd().getCrcNationCd();
	}

}
