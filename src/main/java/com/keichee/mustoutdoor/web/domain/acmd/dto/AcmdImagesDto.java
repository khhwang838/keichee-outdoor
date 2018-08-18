package com.keichee.mustoutdoor.web.domain.acmd.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AcmdImagesDto {

	private String acmdUid;
	private String userId;
	private String imgUid;
	private String imgUrl;
	private String imgTitle;
	private int imgNo;
	
}
