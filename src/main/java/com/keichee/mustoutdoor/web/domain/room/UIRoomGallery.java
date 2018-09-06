/**
 * Created on 2018. 7. 21. by Keichee
 */
package com.keichee.mustoutdoor.web.domain.room;

import java.util.List;

import com.keichee.mustoutdoor.web.domain.acmd.GalleryImage;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UIRoomGallery {
	
	private List<GalleryImage> images;
	
}
