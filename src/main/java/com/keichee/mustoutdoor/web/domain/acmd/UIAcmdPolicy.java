/**
 * Created on 2018. 7. 21. by Keichee
 */
package com.keichee.mustoutdoor.web.domain.acmd;

import java.util.List;

import com.keichee.mustoutdoor.web.domain.acmd.dto.PoliciesDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.PolicyOptionsDto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UIAcmdPolicy {

	private PoliciesDto policy;
	private List<PolicyOptionsDto> policyOptions;
	
}
