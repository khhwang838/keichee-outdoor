package com.keichee.mustoutdoor.web.controller.acmd;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.keichee.mustoutdoor.config.FileConfig;
import com.keichee.mustoutdoor.constants.IMessageCode;
import com.keichee.mustoutdoor.web.controller.LoginController;
import com.keichee.mustoutdoor.web.domain.Response;
import com.keichee.mustoutdoor.web.domain.acmd.UIAccommodation;
import com.keichee.mustoutdoor.web.service.AccommodationService;
import com.keichee.utils.GuidUtils;

@Controller
@RequestMapping(value="/acmd", method = {RequestMethod.GET, RequestMethod.POST})
public class AccommodationController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	private AccommodationService acmdService;
	@Autowired
	private MessageSource messageSource;
	
	@RequestMapping(value="/add", method = {RequestMethod.POST})
	@ResponseBody
	public Response insertInfo(@RequestBody UIAccommodation acmd, Locale locale) {
		
//		logger.debug("File name: {}", acmd.getFeaturedImage().getName());
		String result = acmdService.add(acmd);
		
		Response resp;
		if ( result != null ) {
			resp = new Response(IMessageCode.SUCCESS.S0001, messageSource.getMessage(IMessageCode.SUCCESS.S0001, null, locale));
			List<String> respData = new ArrayList<>();
			respData.add(result);
			resp.setRespData(respData);
		} else {
			resp = new Response(IMessageCode.ERROR.E0001, messageSource.getMessage(IMessageCode.ERROR.E0001, null, locale));
		}
		return resp;
	}
	
	@RequestMapping(value="/update", method = {RequestMethod.POST})
	@ResponseBody
	public Response updateInfo(@RequestBody UIAccommodation acmd, Locale locale) {
		
		
		int result = acmdService.update(acmd);
		Response resp;
		if ( result > 0 ) {
			resp = new Response(IMessageCode.ERROR.E0001, messageSource.getMessage(IMessageCode.ERROR.E0001, null, locale));
		} else {
			resp = new Response(IMessageCode.ERROR.E0001, messageSource.getMessage(IMessageCode.ERROR.E0001, null, locale));
		}
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
	
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	@ResponseBody
	public Object uploadFile(MultipartHttpServletRequest request) {
		String acmdUid = request.getParameter("acmdUid");
		String acmdName = request.getParameter("acmdName");
		Iterator<String> itr = request.getFileNames();
		if (itr.hasNext()) {
			MultipartFile mpf = request.getFile(itr.next());
			try {
				String filename = GuidUtils.instance().createGuid() + mpf.getOriginalFilename().substring(mpf.getOriginalFilename().lastIndexOf("."));
				
				Files.write(Paths.get(FileConfig.instance().getUploadDestFeatured(), filename), mpf.getBytes(), StandardOpenOption.CREATE_NEW, StandardOpenOption.WRITE);
				acmdService.updateImageUrl(acmdUid, acmdName, filename);
			} catch (IOException e) {
				e.printStackTrace();
			}
			return true;
		} else {
			return false;
		}
	}

}
