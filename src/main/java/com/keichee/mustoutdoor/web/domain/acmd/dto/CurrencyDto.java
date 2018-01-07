package com.keichee.mustoutdoor.web.domain.acmd.dto;

public class CurrencyDto {
	
	private String crcNtlCd;
	private String crcNationName;
	private String crcName;
	private String crcUnit;
	
	public String getCrcNtlCd() {
		return crcNtlCd;
	}
	public void setCrcNtlCd(String crcNtlCd) {
		this.crcNtlCd = crcNtlCd;
	}
	public String getCrcNationName() {
		return crcNationName;
	}
	public void setCrcNationName(String crcNationName) {
		this.crcNationName = crcNationName;
	}
	public String getCrcName() {
		return crcName;
	}
	public void setCrcName(String crcName) {
		this.crcName = crcName;
	}
	public String getCrcUnit() {
		return crcUnit;
	}
	public void setCrcUnit(String crcUnit) {
		this.crcUnit = crcUnit;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("CurrencyDto [crcNtlCd=");
		builder.append(crcNtlCd);
		builder.append(", crcNationName=");
		builder.append(crcNationName);
		builder.append(", crcName=");
		builder.append(crcName);
		builder.append(", crcUnit=");
		builder.append(crcUnit);
		builder.append("]");
		return builder.toString();
	}
}
