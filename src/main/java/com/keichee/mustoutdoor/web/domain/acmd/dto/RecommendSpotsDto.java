package com.keichee.mustoutdoor.web.domain.acmd.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RecommendSpotsDto {

	private String acmdUid;
	private String userId;
	private String rcmdPlaceUid;
	private String rcmdPlaceName;
	private String rcmdPlaceDesc;
	private String rcmdPlaceImgUrl;
	private MultipartFile rcmdPlaceImage;
	
}
