/**
 * Created on 2018. 6. 28. by Keichee
 */
package com.keichee.mustoutdoor.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import com.keichee.mustoutdoor.web.dao.AcmdTypesDao;
import com.keichee.mustoutdoor.web.dao.CancelPolicyDao;
import com.keichee.mustoutdoor.web.dao.FacilitiesDao;
import com.keichee.mustoutdoor.web.dao.ThemesDao;

/**
 * 기본 정보 입력을 위한 어드민용 컨트롤러
 */
@RestController
public class AdminController {

	@Autowired
	private AcmdTypesDao acmdTypesDao;
	@Autowired
	private FacilitiesDao facilitiesDao;
	@Autowired
	private ThemesDao themesDao;
	@Autowired
	private CancelPolicyDao cancelPolicyDao;
	
	
}
