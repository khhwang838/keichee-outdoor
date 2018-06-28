/**
 * Created on 2018. 6. 23. by Keichee
 */
package com.keichee.mustoutdoor.web.domain.acmd.dto;

public class AcmdTypeDto {

	private String acmdId;
	private String acmdTypeName;
	private String acmdTypeImgUrl;
	
	public String getAcmdId() {
		return acmdId;
	}
	public void setAcmdId(String acmdId) {
		this.acmdId = acmdId;
	}
	public String getAcmdTypeName() {
		return acmdTypeName;
	}
	public void setAcmdTypeName(String acmdTypeName) {
		this.acmdTypeName = acmdTypeName;
	}
	public String getAcmdTypeImgUrl() {
		return acmdTypeImgUrl;
	}
	public void setAcmdTypeImgUrl(String acmdTypeImgUrl) {
		this.acmdTypeImgUrl = acmdTypeImgUrl;
	}
}
