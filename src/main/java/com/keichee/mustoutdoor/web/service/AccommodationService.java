package com.keichee.mustoutdoor.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.keichee.mustoutdoor.utils.GuidUtils;
import com.keichee.mustoutdoor.web.dao.AccommodationDao;
import com.keichee.mustoutdoor.web.domain.acmd.UIAccommodation;
import com.keichee.mustoutdoor.web.domain.acmd.dto.AcmdDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.FacilitiesDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.RecommendSpotsDto;

/**
 * 숙소 정보 생성/수정/조회/삭제 서비스
 */
@Service
public class AccommodationService {
	
	@Autowired
	private AccommodationDao acmdDao;
	
	/**
	 * 숙소 정보 생성
	 * @param uiAcmdInfo
	 * @return
	 */
	@Transactional
	public String add(UIAccommodation uiAcmdInfo, String userId) {
		AcmdDto dto = convertUIAcmdToAcmdDTO(uiAcmdInfo);
		dto.setAcmdUid(GuidUtils.instance().createGuid());
		
		int result = acmdDao.insertAcmd(dto);
		if ( result > 0 ) {
			String acmdUid = dto.getAcmdUid();
			// TODO : RcmdSpots, Facilities, Themes, Special Facilities, Galleries
			// , Extra Options, Policies, Policy Options
			for ( RecommendSpotsDto rcmdSpot : uiAcmdInfo.getRecommendSpots() ){
				rcmdSpot.setAcmdUid(acmdUid);
				rcmdSpot.setUserId(userId);
				acmdDao.insertRcmdSpots(rcmdSpot);
			}
			for ( FacilitiesDto facility : uiAcmdInfo.getFacilities() ) {
				
				acmdDao.insertFacilitiesRel(facility);
			}
			
				return dto.getAcmdUid();
		}
		return null;
	}
	
	private AcmdDto convertUIAcmdToAcmdDTO(UIAccommodation in) {
		AcmdDto dto = new AcmdDto(in);
		return dto;
	}

	/**
	 * 숙소 정보 업데이트
	 * @param uiAcmdInfo
	 * @return
	 */
	@Transactional
	public int update(UIAccommodation uiAcmdInfo) {
		AcmdDto dto = convertUIAcmdToAcmdDTO(uiAcmdInfo);
		int result = acmdDao.updateAcmd(dto);
		
		return result;
	}
	
	/**
	 * 숙소 정보 삭제
	 * @param dto
	 * @return
	 */
	public int delete(AcmdDto dto) {
		int result = acmdDao.deleteByUid(dto.getAcmdUid());
		return result;
	}
	
	/**
	 * 사업주별 전체 숙소 목록 정보 조회
	 * @return
	 */
	public List<AcmdDto> getAllAcmdList(String userId) {
		List<AcmdDto> acmdList = acmdDao.selectAllByUserId(userId);
		
		return acmdList;
	}

	/**
	 * 특정 숙소 상세 정보 조회
	 * @param acmdUid
	 * @return
	 */
	public AcmdDto getAcmd(String acmdUid) {
		AcmdDto acmdDetail = acmdDao.selectByUid(acmdUid);
		return acmdDetail;
	}
	

	public int updateImageUrl(String acmdUid, String acmdName, String filename) {
		AcmdDto dto = new AcmdDto();
		dto.setAcmdUid(acmdUid);
		dto.setAcmdName(acmdName);
		dto.setImgUrl(filename);
		int result = acmdDao.updateAcmd(dto);
		return result;
	}

}
