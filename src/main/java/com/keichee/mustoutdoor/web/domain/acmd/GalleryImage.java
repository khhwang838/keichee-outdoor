/**
 * Created on 2018. 8. 2. by Keichee
 */
package com.keichee.mustoutdoor.web.domain.acmd;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class GalleryImage {

	private MultipartFile image;
	private String imgTitle;
	private Integer imgNo;
	
}
