package com.keichee.mustoutdoor.web.domain.acmd;

public class NationCityDto {
	
	private String cityUid;
	private String nationCd;
	private String nationName;
	private String cityCd;
	private String cityName;
	
	public String getCityUid() {
		return cityUid;
	}
	public void setCityUid(String cityUid) {
		this.cityUid = cityUid;
	}
	public String getNationCd() {
		return nationCd;
	}
	public void setNationCd(String nationCd) {
		this.nationCd = nationCd;
	}
	public String getNationName() {
		return nationName;
	}
	public void setNationName(String nationName) {
		this.nationName = nationName;
	}
	public String getCityCd() {
		return cityCd;
	}
	public void setCityCd(String cityCd) {
		this.cityCd = cityCd;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("NationCityDto [cityUid=");
		builder.append(cityUid);
		builder.append(", nationCd=");
		builder.append(nationCd);
		builder.append(", nationName=");
		builder.append(nationName);
		builder.append(", cityCd=");
		builder.append(cityCd);
		builder.append(", cityName=");
		builder.append(cityName);
		builder.append("]");
		return builder.toString();
	}
}
