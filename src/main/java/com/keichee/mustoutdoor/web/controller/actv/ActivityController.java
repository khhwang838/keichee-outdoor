package com.keichee.mustoutdoor.web.controller.actv;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.keichee.mustoutdoor.web.controller.LoginController;
import com.keichee.mustoutdoor.web.domain.Response;

@RestController
@RequestMapping(value="/actv", method = {RequestMethod.GET, RequestMethod.POST})
public class ActivityController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@PostMapping(value="/add")
	@ResponseBody
	public Response insertInfo() {
		// TODO : 액티비티 생성 로직 구현 
		Response resp = new Response();
		return resp;
	}
	
	@PatchMapping(value="/update")
	@ResponseBody
	public Response updateInfo() {
		// TODO : 액티비티 수정 로직 구현
		Response resp = new Response();
		return resp;
	}
	
	@DeleteMapping(value="/delete")
	@ResponseBody
	public Response deleteInfo() {
		// TODO : 액티비티 삭제 로직 구현 
		Response resp = new Response();
		return resp;
	}
	
	@GetMapping(value="/list")
	@ResponseBody
	public Response listInfo() {
		
		Response resp = new Response();
		return resp;
	}
}
