/**
 * Created on 2018. 7. 21. by Keichee
 */
package com.keichee.mustoutdoor.web.domain.acmd;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UIAcmdAcmdDetails {

	private List<String> fcltIds;
	private List<String> actvTypeIds;
	private List<String> themeIds;
    private List<String> specialFcltIds;
	
}
