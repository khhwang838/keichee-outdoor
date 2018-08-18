package com.keichee.mustoutdoor.web.domain.acmd;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UIAccommodation {
	
	private String acmdUid;
    private UIAcmdGeneralInfo uiGeneralInfo;
    private UIAcmdLocationSetting uiLocation;
    private UIAcmdAcmdDetails uiDetails;
    private UIAcmdGallery uiGallery;
    private UIAcmdOtherOptions uiOtherOptions;
    private UIAcmdPolicy uiPolicy;

}
