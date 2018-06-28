package com.keichee.mustoutdoor.web.domain.actv.dto;

@Getter
@Setter
public class PackageDiscountDto {
    private String packageUid;
    private String discountTypeCd;
    private Integer discountRate;
    private String discountStartDate;
    private String discountEndDate;
    private String discountApplyWeekDay;
}
