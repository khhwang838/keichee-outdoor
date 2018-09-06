/**
 * Created on 2018. 8. 18. by Keichee
 */
package com.keichee.mustoutdoor.web.domain.room.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Rooms {

	private String roomUid;
	private String roomName;
	private String roomDesc;
	private String imgUrl;
	private String siteTypeId;
	private int roomCnt;
	private int maxPplCnt;
	private int extraPplCnt;
	
}
