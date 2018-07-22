package com.keichee.mustoutdoor.web.domain.acmd.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class AcmdSpecialFacilitiesRelDto {
	private String acmdUid;
	private String userId;
    private String specialFcltId;
}
