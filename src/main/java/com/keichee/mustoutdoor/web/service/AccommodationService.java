package com.keichee.mustoutdoor.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.keichee.mustoutdoor.web.dao.AccommodationDao;
import com.keichee.mustoutdoor.web.domain.acmd.UIAccommodation;
import com.keichee.mustoutdoor.web.domain.acmd.dto.AccommodationDto;
import com.keichee.utils.GuidUtils;

@Service
public class AccommodationService {
	
	@Autowired
	private AccommodationDao acmdDao;
	
	public String add(UIAccommodation in) {
		AccommodationDto dto = convertUItoDTO(in);
		dto.setAcmdUid(GuidUtils.instance().createGuid());
		
		int result = acmdDao.insertAcmd(dto);
		if ( result > 0 ) {
			return dto.getAcmdUid();
		}
		return null;
	}
	
	private AccommodationDto convertUItoDTO(UIAccommodation in) {
		AccommodationDto dto = new AccommodationDto(in);
		return dto;
	}

	public int update(UIAccommodation in) {
		AccommodationDto dto = convertUItoDTO(in);
		int result = acmdDao.updateAcmd(dto);
		
		return result;
	}
	
	public List<AccommodationDto> getAllAcmdList() {
		List<AccommodationDto> result = acmdDao.selectAll();
		
		return result;
	}
	
	public int delete(AccommodationDto dto) {
		int result = acmdDao.deleteByUid(dto.getAcmdUid());
		return result;
	}

	public int updateImageUrl(String acmdUid, String acmdName, String filename) {
		AccommodationDto dto = new AccommodationDto();
		dto.setAcmdUid(acmdUid);
		dto.setAcmdName(acmdName);
		dto.setImgUrl(filename);
		int result = acmdDao.updateAcmd(dto);
		return result;
	}
}
