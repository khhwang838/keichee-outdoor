/**
 * Created on 2018. 7. 21. by Keichee
 */
package com.keichee.mustoutdoor.web.domain.acmd;

import java.util.List;

import com.keichee.mustoutdoor.web.domain.acmd.dto.ExtraOptionsDto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UIAcmdOtherOptions {

	private List<ExtraOptionsDto> extraOptions;
}
