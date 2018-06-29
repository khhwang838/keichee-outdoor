package com.keichee.mustoutdoor.web.domain.actv.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PackageDiscountDto {
	private String packageUid;
	private String discountTypeCd;
	private Integer discountRate;
	private String discountStartDate;
	private String discountEndDate;
	private String discountApplyWeekDay;
}
