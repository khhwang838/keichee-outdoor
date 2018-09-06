/**
 * Created on 2018. 7. 21. by Keichee
 */
package com.keichee.mustoutdoor.web.domain.room;

import org.springframework.web.multipart.MultipartFile;

import com.keichee.mustoutdoor.web.domain.Currency;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UIRoomGeneralInfo {
	
	private String title;
	private String desc;
//	private MultipartFile featuredImage;
	private Currency currency;
}