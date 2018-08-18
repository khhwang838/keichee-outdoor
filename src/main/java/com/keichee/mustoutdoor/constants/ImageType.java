/**
 * Created on 2018. 7. 31. by Keichee
 */
package com.keichee.mustoutdoor.constants;

import lombok.Getter;

@Getter
public enum ImageType {

	FEATURED("featured", "메인사진")
	, RCMD_SPOT("rcmdspot", "추천장소")
	, GALLERY("gallery", "갤러리")
	;
	
	private final String name;
	private final String desc;
	
	ImageType(String name, String desc){
		this.name = name;
		this.desc = desc;
	}
}
