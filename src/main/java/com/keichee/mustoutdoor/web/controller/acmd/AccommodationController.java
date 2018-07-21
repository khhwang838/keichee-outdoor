package com.keichee.mustoutdoor.web.controller.acmd;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.keichee.mustoutdoor.component.SessionInfo;
import com.keichee.mustoutdoor.config.FileConfig;
import com.keichee.mustoutdoor.constants.IMessageCode;
import com.keichee.mustoutdoor.utils.GuidUtils;
import com.keichee.mustoutdoor.web.domain.Response;
import com.keichee.mustoutdoor.web.domain.acmd.UIAccommodation;
import com.keichee.mustoutdoor.web.domain.acmd.dto.AcmdDto;
import com.keichee.mustoutdoor.web.service.AcmdService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequestMapping(value = "/acmd")
public class AccommodationController {

	@Autowired
	private AcmdService acmdService;
	@Autowired
	private MessageSource messageSource;
	@Autowired
	private SessionInfo sessionInfo;

	@PostMapping
	public Response insertInfo(@RequestBody UIAccommodation acmd, Locale locale) {
		String userId = sessionInfo.getUserId();
		// TODO : 필수값 검사
		
		String result = acmdService.add(acmd, userId);

		Response<String> resp;
		if (result != null) {
			resp = new Response<>(IMessageCode.SUCCESS.S0001, messageSource.getMessage(IMessageCode.SUCCESS.S0001, null, locale));
			List<String> respData = new ArrayList<>();
			respData.add(result);
			resp.setRespData(respData);
		} else {
			resp = new Response<>(IMessageCode.ERROR.E0001, messageSource.getMessage(IMessageCode.ERROR.E0001, null, locale));
		}
		return resp;
	}

	@PatchMapping
	public Response updateInfo(@RequestBody UIAccommodation acmd, Locale locale) {
		int result = acmdService.update(acmd);
		Response resp;
		if (result > 0) {
			resp = new Response(IMessageCode.SUCCESS.S0001, messageSource.getMessage(IMessageCode.SUCCESS.S0001, null, locale));
		} else {
			resp = new Response(IMessageCode.ERROR.E0001, messageSource.getMessage(IMessageCode.ERROR.E0001, null, locale));
		}
		return resp;
	}

	@SuppressWarnings("unchecked")
	@GetMapping(value = "/{acmdUid}")
	public Response detailInfo(@PathVariable String acmdUid, Locale locale) {

		AcmdDto acmdDetail = acmdService.getAcmd(acmdUid);
		Response resp;
		if ( acmdDetail != null ){
			resp = new Response<>(IMessageCode.SUCCESS.S0001,  messageSource.getMessage(IMessageCode.SUCCESS.S0001, null, locale));
			List<AcmdDto> resultData = new ArrayList<>();
			resultData.add(acmdDetail);
			resp.setRespData(resultData);
		} else {
			resp = new Response(IMessageCode.ERROR.E0001, messageSource.getMessage(IMessageCode.ERROR.E0001, null, locale));
		}
		return resp;
	}

	@SuppressWarnings("unchecked")
	@GetMapping(value = "/list/{userId}")
	public Response listInfo(@PathVariable String userId, Locale locale) {

		List<AcmdDto> acmdList = acmdService.getAllAcmdList(userId);
		
		Response resp = new Response();
		if ( acmdList != null && !acmdList.isEmpty() ){
			resp = new Response<>(IMessageCode.SUCCESS.S0001,  messageSource.getMessage(IMessageCode.SUCCESS.S0001, null, locale));
			resp.setRespData(acmdList);
		} else {
			resp = new Response(IMessageCode.ERROR.E0001, messageSource.getMessage(IMessageCode.ERROR.E0001, null, locale));
		}
		return resp;
	}

	@DeleteMapping
	public Response deleteInfo() {
		// TODO : 삭제 로직 구현 (숙소업체 메인 정보를 제외한 정보들만)
		Response resp = new Response();
		return resp;
	}

	@PostMapping("/upload")
	public Object uploadFile(MultipartHttpServletRequest request) {
		// TODO : 실제로 파일을 업로드하는데 저장을 누를때 실제로 파일을 업로드 하도록 변경되어야 함.
		// 그게 안된다면, 업로드 했다가 저장을 누르지 않은 케이스를 구분해서 주기적으로 삭제해주는 로직이 필요함

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
