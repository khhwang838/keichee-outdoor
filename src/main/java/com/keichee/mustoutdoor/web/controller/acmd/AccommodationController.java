package com.keichee.mustoutdoor.web.controller.acmd;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.keichee.mustoutdoor.web.controller.LoginController;
import com.keichee.mustoutdoor.web.domain.Response;

@Controller
@RequestMapping(value="/actv", method = {RequestMethod.GET, RequestMethod.POST})
public class AccommodationController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@RequestMapping(value="/insert", method = {RequestMethod.POST})
	public Response insertInfo() {
		
		
		
		Response resp = new Response();
		return resp;
	}
	
	@RequestMapping(value="/update", method = {RequestMethod.POST})
	public Response updateInfo() {
		
		
		
		Response resp = new Response();
		return resp;
	}
	
	@RequestMapping(value="/delete", method = {RequestMethod.POST})
	public Response deleteInfo() {
		
		
		
		Response resp = new Response();
		return resp;
	}
	
	@RequestMapping(value="/list", method = {RequestMethod.GET})
	public Response listInfo() {
		
		
		
		Response resp = new Response();
		return resp;
	}
}
