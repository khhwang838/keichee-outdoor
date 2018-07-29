package com.keichee.mustoutdoor.web.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.keichee.mustoutdoor.utils.DateUtils;
import com.keichee.mustoutdoor.utils.GuidUtils;
import com.keichee.mustoutdoor.web.dao.AcmdDao;
import com.keichee.mustoutdoor.web.dao.AcmdThemesDao;
import com.keichee.mustoutdoor.web.dao.ExtraOptionsDao;
import com.keichee.mustoutdoor.web.dao.FacilitiesDao;
import com.keichee.mustoutdoor.web.dao.PoliciesDao;
import com.keichee.mustoutdoor.web.dao.PolicyOptionsDao;
import com.keichee.mustoutdoor.web.dao.RcmdSpotsDao;
import com.keichee.mustoutdoor.web.dao.RoomTypesDao;
import com.keichee.mustoutdoor.web.dao.SpecialFacilitiesDao;
import com.keichee.mustoutdoor.web.domain.acmd.UIAccommodation;
import com.keichee.mustoutdoor.web.domain.acmd.UIAcmd;
import com.keichee.mustoutdoor.web.domain.acmd.UIAcmdPolicy;
import com.keichee.mustoutdoor.web.domain.acmd.dto.AcmdDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.AcmdFacilitiesRelDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.AcmdThemesDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.AcmdThemesRelDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.ExtraOptionsDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.PoliciesDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.PolicyOptionsDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.RecommendSpotsDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.RoomTypesDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.SpecialFacilitiesDto;

/**
 * 숙소 정보 생성/수정/조회/삭제 서비스
 */
@Service
public class AcmdService {

	@Autowired
	private AcmdDao acmdDao;
	@Autowired
	private RcmdSpotsDao rcmdSpotsDao;
	@Autowired
	private FacilitiesDao facilitiesDao;
	@Autowired
	private AcmdThemesDao acmdThemesDao;
	@Autowired
	private SpecialFacilitiesDao specialFacilitiesDao;
	@Autowired
	private ExtraOptionsDao extraOptionsDao;
	@Autowired
	private PoliciesDao policiesDao;
	@Autowired
	private PolicyOptionsDao policyOptionsDao;
	@Autowired
	private RoomTypesDao roomTypesDao;

	/**
	 * 숙소 정보 생성
	 *
	 * @param uiAcmdInfo
	 * @return
	 */
	@Transactional
	public String add(UIAccommodation uiAcmdInfo, String userId) {
		AcmdDto dto = new AcmdDto(uiAcmdInfo);
		dto.setUserId(userId);
		String acmdUid = GuidUtils.instance().createGuid();
		dto.setAcmdUid(acmdUid);
		dto.setUserId(userId);
		dto.setActiveYn("Y");
		dto.setCreateDttm(DateUtils.instance.getCurrentDttmAsUTC());
		dto.setUpdateDttm(DateUtils.instance.getCurrentDttmAsUTC());

		int result = acmdDao.insertAcmd(dto);
		if (result > 0) {
			// RcmdSpots, Facilities, Themes, Special Facilities, Extra Options, Policies, Policy Options
			// TODO : Galleries ( how ? )
			// TODO : for-loop 안에서 INSERT하는 것들은 values에 조립하여 한쿼리로 변경
			if (uiAcmdInfo.getUiLocation() != null && uiAcmdInfo.getUiLocation().getRcmdSpots() != null) {
				for (RecommendSpotsDto rcmdSpot : uiAcmdInfo.getUiLocation().getRcmdSpots()) {
					if (StringUtils.isEmpty(rcmdSpot.getRcmdPlaceName()))
						continue;
					rcmdSpot.setRcmdPlaceUid(GuidUtils.instance().createGuid());
					rcmdSpot.setAcmdUid(acmdUid);
					rcmdSpot.setUserId(userId);
					rcmdSpotsDao.insertRcmdSpots(rcmdSpot);
				}
			}
			if (uiAcmdInfo.getUiDetails() != null && uiAcmdInfo.getUiDetails().getFcltIds() != null) {
				for (String fcltId : uiAcmdInfo.getUiDetails().getFcltIds()) {
					facilitiesDao.insertAcmdFacilitiesRel(new AcmdFacilitiesRelDto(acmdUid, userId, fcltId));
				}
			}
			if (uiAcmdInfo.getUiDetails() != null && uiAcmdInfo.getUiDetails().getThemeIds() != null) {
				for (String themeId : uiAcmdInfo.getUiDetails().getThemeIds()) {
					acmdThemesDao.insertAcmdThemesRel(new AcmdThemesRelDto(acmdUid, userId, themeId));
				}
			}
			if (uiAcmdInfo.getUiDetails() != null && uiAcmdInfo.getUiDetails().getSpecialFclts() != null) {
				for (SpecialFacilitiesDto specialFclt : uiAcmdInfo.getUiDetails().getSpecialFclts()) {
					specialFacilitiesDao.insertSpecialFacility(
							new SpecialFacilitiesDto(GuidUtils.instance().createGuid(), specialFclt.getSpecialFcltName(), specialFclt.getSpecialFcltDesc(), acmdUid, userId));
				}
			}
			if (uiAcmdInfo.getUiOtherOptions() != null && uiAcmdInfo.getUiOtherOptions().getExtraOptions() != null) {
				for (ExtraOptionsDto extraOption : uiAcmdInfo.getUiOtherOptions().getExtraOptions()) {
					extraOptionsDao.insertExtraOption(extraOption);
				}
			}
			if (uiAcmdInfo.getUiPolicy() != null && uiAcmdInfo.getUiPolicy().getPolicy() != null) {
				PoliciesDto policy = uiAcmdInfo.getUiPolicy().getPolicy();
				policy.setAcmdUid(acmdUid);
				policy.setUserId(userId);
				policiesDao.insertPolicy(uiAcmdInfo.getUiPolicy().getPolicy());
				if (uiAcmdInfo.getUiPolicy().getPolicyOptions() != null) {
					for (PolicyOptionsDto policyOption : uiAcmdInfo.getUiPolicy().getPolicyOptions()) {
						String plcyOptUid = GuidUtils.instance().createGuid();
						policyOption.setPlcyOptUid(plcyOptUid);
						policyOption.setAcmdUid(acmdUid);
						policyOption.setUserId(userId);
						policyOptionsDao.insertPolicyOption(policyOption);
					}
				}
			}

			addImages(uiAcmdInfo);

			return dto.getAcmdUid();
		}
		return "Failed to create an Accommodation.";
	}

	/**
	 * @param acmd
	 * @return
	 */
	public int addImages(UIAccommodation acmd) {
		// TODO : 이미지 저장

		return 1;
	}

	/**
	 * 숙소 정보 업데이트
	 *
	 * @param uiAcmdInfo
	 * @return
	 */
	@Transactional
	public int update(UIAccommodation uiAcmdInfo, String userId) {
		AcmdDto dto = new AcmdDto(uiAcmdInfo);
		int result = acmdDao.updateAcmd(dto);

		if (result > 0) {

			updateRecommendSpots(dto.getAcmdUid(), userId, uiAcmdInfo.getUiLocation().getRcmdSpots());

			updateAcmdFacilitiesRel(dto.getAcmdUid(), userId, uiAcmdInfo.getUiDetails().getFcltIds());

			updateAcmdThemesRel(dto.getAcmdUid(), userId, uiAcmdInfo.getUiDetails().getThemeIds());

			updateSpecialFacilities(dto.getAcmdUid(), userId, uiAcmdInfo.getUiDetails().getSpecialFclts());

			updateExtraOptions(dto.getAcmdUid(), uiAcmdInfo.getUiOtherOptions().getExtraOptions());

			updatePolicies(dto.getAcmdUid(), userId, uiAcmdInfo.getUiPolicy());
			
		}
		return result;
	}

	private void updatePolicies(String acmdUid, String userId, UIAcmdPolicy uiPolicy) {
		PoliciesDto policy = uiPolicy.getPolicy();
		policy.setAcmdUid(acmdUid);
		policy.setUserId(userId);
		int updated = policiesDao.updatePolicy(policy);
		if ( updated == 0 ) {
			policiesDao.insertPolicy(policy);
		}
		
		policyOptionsDao.deletePolicyOptionsByAcmdUid(acmdUid);
		for (PolicyOptionsDto policyOption : uiPolicy.getPolicyOptions()) {
			policyOption.setAcmdUid(acmdUid);
			policyOption.setUserId(userId);
			policyOptionsDao.insertPolicyOption(policyOption);
		}
	}

	private void updateRecommendSpots(String acmdUid, String userId, List<RecommendSpotsDto> rcmdSpots) {
		if (rcmdSpots != null && rcmdSpots.size() > 0) {
			rcmdSpotsDao.deleteRcmdSpotsByAcmdUid(acmdUid);
			for (RecommendSpotsDto rcmdSpot : rcmdSpots) {
				rcmdSpot.setAcmdUid(acmdUid);
				rcmdSpot.setUserId(userId);
				rcmdSpotsDao.insertRcmdSpots(rcmdSpot);
			}
		}
	}

	private void updateAcmdFacilitiesRel(String acmdUid, String userId, List<String> fcltIds) {
		if (fcltIds != null) {
			facilitiesDao.deleteAmcdFacilitiesRelByAcmdUid(acmdUid);
			for (String facilityId : fcltIds) {
				facilitiesDao.insertAcmdFacilitiesRel(new AcmdFacilitiesRelDto(acmdUid, userId, facilityId));
			}
		}
	}

	private void updateAcmdThemesRel(String acmdUid, String userId, List<String> themeIds) {
		if (themeIds != null) {
			acmdThemesDao.deleteAcmdThemesRelByAcmdId(acmdUid);
			for (String themeId : themeIds) {
				acmdThemesDao.insertAcmdThemesRel(new AcmdThemesRelDto(acmdUid, userId, themeId));
			}
		}
	}

	private void updateSpecialFacilities(String acmdUid, String userId, List<SpecialFacilitiesDto> specialFclts) {
		if (specialFclts != null) {
			specialFacilitiesDao.deleteSpecialFacilitiesByAmcdUid(acmdUid);
			for (SpecialFacilitiesDto specialFclt : specialFclts) {
				specialFacilitiesDao.insertSpecialFacility(new SpecialFacilitiesDto(GuidUtils.instance().createGuid(), specialFclt.getSpecialFcltName(), specialFclt.getSpecialFcltDesc(), acmdUid, userId));
			}
		}
	}

	private void updateExtraOptions(String acmdUid, List<ExtraOptionsDto> extraOptions) {
		if (extraOptions != null && extraOptions.size() > 0) {
			extraOptionsDao.deleteExtraOptionsByAcmdUid(acmdUid);
			for (ExtraOptionsDto extraOption : extraOptions) {
				extraOptionsDao.insertExtraOption(extraOption);
			}
		}
	}

	/**
	 * 숙소 정보 삭제
	 *
	 * @param dto
	 * @return
	 */
	@Transactional
	public int updateActivation(String acmdUid, String activeYn) {
		int result = acmdDao.updateActivateYn(acmdUid, activeYn);
		return result;
	}

	/**
	 * 사업주별 전체 숙소 목록 정보 조회
	 *
	 * @return
	 */
	public List<UIAcmd> getAllAcmdList(String userId) {
		List<UIAcmd> result = new ArrayList<>();
		// TODO : theme, room type 정보 한번에 조회
		List<AcmdDto> acmdList = acmdDao.selectAllByUserId(userId);
		for (AcmdDto dto : acmdList) {
			List<RoomTypesDto> roomTypes = roomTypesDao.selectTypesByAcmdUid(dto.getAcmdUid());
			List<AcmdThemesDto> acmdThemes = acmdThemesDao.selectThemesByAcmdUid(dto.getAcmdUid());
			result.add(new UIAcmd(dto, acmdThemes, roomTypes));
		}
		return result;
	}

	/**
	 * 특정 숙소 상세 정보 조회
	 *
	 * @param acmdUid
	 * @return
	 */
	public UIAcmd getAcmd(String acmdUid) {
		// TODO : theme, room type 정보 한번에 조회
		AcmdDto acmdDetail = acmdDao.selectByUid(acmdUid);
		List<AcmdThemesDto> themes = acmdThemesDao.selectThemesByAcmdUid(acmdUid);
		List<RoomTypesDto> roomTypes = roomTypesDao.selectTypesByAcmdUid(acmdUid);

		return new UIAcmd(acmdDetail, themes, roomTypes);
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
