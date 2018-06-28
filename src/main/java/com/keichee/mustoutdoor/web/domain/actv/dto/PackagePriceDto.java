package com.keichee.mustoutdoor.web.domain.actv.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PackagePriceDto {
	private String packagePriceUid;
	private String packageUid;
	private String quantityName;
	private String price;
	private String minRsrvPpl;
	private String maxRsrvPpl;
}
