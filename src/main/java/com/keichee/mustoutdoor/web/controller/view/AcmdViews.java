/**
 * Created on 2018. 6. 23. by Keichee
 */
package com.keichee.mustoutdoor.web.controller.view;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/acmd")
public class AcmdViews {

	@GetMapping("/addAcmd")
	public void addAcmd(ModelMap map, HttpSession session) {
		// call addAcmd.jsp
		// 출력해야할 데이터가 있으면 map 에 넣어준다.
		
	}
	@GetMapping(value="/myAcmd")
	public void myAcmd(ModelMap map, HttpSession session) {
		// call myAcmd.jsp
		// 출력해야할 데이터가 있으면 map 에 넣어준다.
		
	}
}
