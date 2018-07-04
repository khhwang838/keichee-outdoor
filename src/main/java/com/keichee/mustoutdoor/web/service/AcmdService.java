package com.keichee.mustoutdoor.web.service;

import java.util.List;

import com.keichee.mustoutdoor.web.dao.*;
import com.keichee.mustoutdoor.web.domain.acmd.dto.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.keichee.mustoutdoor.utils.GuidUtils;
import com.keichee.mustoutdoor.web.domain.acmd.UIAccommodation;

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
    private ThemesDao themesDao;
    @Autowired
    private SpecialFacilitiesDao specialFacilitiesDao;
    @Autowired
    private ExtraOptionsDao extraOptionsDao;
    @Autowired
    private PoliciesDao policiesDao;
    @Autowired
    private PolicyOptionsDao policyOptionsDao;

    /**
     * 숙소 정보 생성
     *
     * @param uiAcmdInfo
     * @return
     */
    @Transactional
    public String add(UIAccommodation uiAcmdInfo, String userId) {
        AcmdDto dto = new AcmdDto(uiAcmdInfo);
        String acmdUid = GuidUtils.instance().createGuid();
        dto.setAcmdUid(acmdUid);

        int result = acmdDao.insertAcmd(dto);
        if (result > 0) {
            // RcmdSpots, Facilities, Themes, Special Facilities, Extra Options, Policies, Policy Options
            // TODO : Galleries ( how ? )
            // TODO : for-loop 안에서 INSERT하는 것들은 values에 조립하여 한쿼리로 변경
            for (RecommendSpotsDto rcmdSpot : uiAcmdInfo.getRecommendSpots()) {
                rcmdSpot.setAcmdUid(acmdUid);
                rcmdSpot.setUserId(userId);
                rcmdSpotsDao.insertRcmdSpots(rcmdSpot);
            }
            for (FacilitiesDto facility : uiAcmdInfo.getFacilities()) {
                facilitiesDao.insertAcmdFacilitiesRel(facility);
            }
            for (ThemesDto theme : uiAcmdInfo.getThemes()) {
                themesDao.insertAcmdThemesRel(theme);
            }
            for (SpecialFacilitiesDto specialFacility : uiAcmdInfo.getSpecialFacilities()) {
                specialFacilitiesDao.insertAcmdSpecialFacilitiesRel(specialFacility);
            }
            for (ExtraOptionsDto extraOption : uiAcmdInfo.getExtraOptions()) {
                extraOptionsDao.insertExtraOption(extraOption);
            }
            policiesDao.insertPolicy(uiAcmdInfo.getPolicy());
            for (PolicyOptionsDto policyOption : uiAcmdInfo.getPolicyOptions()) {
                policyOptionsDao.insertPolicyOption(policyOption);
            }
            return dto.getAcmdUid();
        }
        return null;
    }

    /**
     * 숙소 정보 업데이트
     *
     * @param uiAcmdInfo
     * @return
     */
    @Transactional
    public int update(UIAccommodation uiAcmdInfo) {
        AcmdDto dto = new AcmdDto(uiAcmdInfo);
        int result = acmdDao.updateAcmd(dto);

        if ( result > 0 ) {

            // TODO : 일부는 업데이트 일부는 삭제 후 재입력
            for (RecommendSpotsDto rcmdSpot : uiAcmdInfo.getRecommendSpots()) {
                rcmdSpotsDao.updateRcmdSpots(rcmdSpot);
            }
            updateAcmdFacilitiesRel(dto.getAcmdUid(), uiAcmdInfo.getFacilities());

            updateAcmdThemesRel(dto.getAcmdUid(), uiAcmdInfo.getThemes());

            updateAcmdSpecialFacilitiesRel(dto.getAcmdUid(), uiAcmdInfo.getSpecialFacilities());

            updateExtraOptions(dto.getAcmdUid(), uiAcmdInfo.getExtraOptions());

            policiesDao.insertPolicy(uiAcmdInfo.getPolicy());

            for (PolicyOptionsDto policyOption : uiAcmdInfo.getPolicyOptions()) {
                policyOptionsDao.insertPolicyOption(policyOption);
            }
        }
        return result;
    }

    private void updateAcmdFacilitiesRel(String acmdUid, List<FacilitiesDto> facilities) {
        if ( facilities != null && facilities.size() > 0 ){
            facilitiesDao.deleteAmcdFacilitiesRelByAcmdUid(acmdUid);
            for (FacilitiesDto facility : facilities) {
                facilitiesDao.insertAcmdFacilitiesRel(facility);
            }
        }
    }

    private void updateAcmdThemesRel(String acmdUid, List<ThemesDto> themes) {
        if ( themes != null && themes.size() > 0 ) {
            themesDao.deleteAcmdThemesRelByAcmdId(acmdUid);
            for (ThemesDto theme : themes) {
                themesDao.insertAcmdThemesRel(theme);
            }
        }
    }

    private void updateAcmdSpecialFacilitiesRel(String acmdUid, List<SpecialFacilitiesDto> specialFacilities) {
        if ( specialFacilities != null && specialFacilities.size() > 0 ){
            specialFacilitiesDao.deleteAcmdSpecialFacilitiesRelByAmcdUid(acmdUid);
            for (SpecialFacilitiesDto specialFacility : specialFacilities) {
                specialFacilitiesDao.insertAcmdSpecialFacilitiesRel(specialFacility);
            }
        }
    }
    private void updateExtraOptions(String acmdUid, List<ExtraOptionsDto> extraOptions) {
        if ( extraOptions != null && extraOptions.size() > 0 ) {
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
    public int delete(AcmdDto dto) {
        int result = acmdDao.deleteByUid(dto.getAcmdUid());
        return result;
    }

    /**
     * 사업주별 전체 숙소 목록 정보 조회
     *
     * @return
     */
    public List<AcmdDto> getAllAcmdList(String userId) {
        List<AcmdDto> acmdList = acmdDao.selectAllByUserId(userId);

        return acmdList;
    }

    /**
     * 특정 숙소 상세 정보 조회
     *
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
