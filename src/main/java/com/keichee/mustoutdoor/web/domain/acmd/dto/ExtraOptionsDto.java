package com.keichee.mustoutdoor.web.domain.acmd.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ExtraOptionsDto {

	private String acmdUid;
	private String extraOptUid;
	private String extraOptName;
	private String extraOptDesc;
	private String extraOptPrice;
	private String maxItems;
	private String visitPayYn;
	
}
