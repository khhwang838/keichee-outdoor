/**
 * Created on 2018. 7. 30. by Keichee
 */
package com.keichee.mustoutdoor.component;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.keichee.mustoutdoor.exception.ImageOversizeException;
import com.keichee.mustoutdoor.web.domain.acmd.UIAccommodation;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class FileHandler {

	private final int MAX_FILE_SIZE = 5 * 1024 * 1024;	// bytes
	/**
	 * 숙소 관련 이미지 저장
	 * @param acmd
	 * @return
	 */
	public void addImages(UIAccommodation acmd) {
		// TODO : 이미지 저장
		// 파일 사이즈 검사, 파일 확장자 검사(가능하면 파일이 이미지 파일인지 검사)
		// 서버에 파일 저장시 파일명은 아래 형식을 따름
		// (숙소, 액티비티 구분코드) + (이미지 종류 코드) + 일자 
		// -> acmd_featured_180730, acmd_rcmdspot_1_180731, acmd_gallery_1_180730 
		// 1. featured image
		MultipartFile featuredImage = acmd.getUiGeneralInfo().getFeaturedImage();
		if ( featuredImage.getSize() > MAX_FILE_SIZE ) {
			throw new ImageOversizeException();
		}
		// 2. rcmd spots( one image per spot )
		int imageNum = 1;
		
		// 3. gallery images
		imageNum = 1;
		
	}
	
	
}
