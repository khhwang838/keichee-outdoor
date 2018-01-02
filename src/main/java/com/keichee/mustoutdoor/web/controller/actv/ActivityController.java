package com.keichee.mustoutdoor.web.controller.actv;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.keichee.mustoutdoor.web.controller.LoginController;
import com.keichee.mustoutdoor.web.domain.Response;

@Controller
@RequestMapping(value="/actv", method = {RequestMethod.GET, RequestMethod.POST})
public class ActivityController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@RequestMapping(value="/add", method = {RequestMethod.POST})
	@ResponseBody
	public Response insertInfo() {
		
		
		
		Response resp = new Response();
		return resp;
	}
	
	@RequestMapping(value="/update", method = {RequestMethod.POST})
	@ResponseBody
	public Response updateInfo() {
		
		
		
		Response resp = new Response();
		return resp;
	}
	
	@RequestMapping(value="/delete", method = {RequestMethod.POST})
	@ResponseBody
	public Response deleteInfo() {
		
		
		
		Response resp = new Response();
		return resp;
	}
	
	@RequestMapping(value="/list", method = {RequestMethod.GET})
	@ResponseBody
	public Response listInfo() {
		
		
		
		Response resp = new Response();
		return resp;
	}
}
