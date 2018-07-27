package com.keichee.mustoutdoor.web.domain.acmd.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class SpecialFacilitiesDto {

	private String specialFcltUid;
	private String specialFcltName;
	private String specialFcltDesc;
	private String acmdUid;
	private String userId;
	
}
