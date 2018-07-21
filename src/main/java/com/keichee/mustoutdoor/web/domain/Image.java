/**
 * Created on 2018. 7. 21. by Keichee
 */
package com.keichee.mustoutdoor.web.domain;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Image {
	
	private MultipartFile file;
	private String title;
	
}
