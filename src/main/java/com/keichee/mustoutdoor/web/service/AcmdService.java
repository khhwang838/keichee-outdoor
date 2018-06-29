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
        AcmdDto dto = convertUIAcmdToAcmdDTO(uiAcmdInfo);
        dto.setAcmdUid(GuidUtils.instance().createGuid());

        int result = acmdDao.insertAcmd(dto);
        if (result > 0) {
            String acmdUid = dto.getAcmdUid();
            // TODO : RcmdSpots, Facilities, Themes, Special Facilities, Extra Options, Policies, Policy Options
            // TODO : Galleries ( how ? )
            // TODO : for-loop 안에서 INSERT하는 것들은 values에 조립하여 한쿼리로 변경
            for (RecommendSpotsDto rcmdSpot : uiAcmdInfo.getRecommendSpots()) {
                rcmdSpot.setAcmdUid(acmdUid);
                rcmdSpot.setUserId(userId);
                rcmdSpotsDao.insertRcmdSpots(rcmdSpot);
            }
            for (FacilitiesDto facility : uiAcmdInfo.getFacilities()) {
                facilitiesDao.insertFacilitiesRel(facility);
            }
            for (ThemesDto theme : uiAcmdInfo.getThemes()) {
                themesDao.insertAcmdThemesRel(theme);
            }
            for (SpecialFacilitiesDto specialFacility : uiAcmdInfo.getSpecialFacilities()) {
                specialFacilitiesDao.insertSpecialFacility(specialFacility);
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

    private AcmdDto convertUIAcmdToAcmdDTO(UIAccommodation in) {
        AcmdDto dto = new AcmdDto(in);
        return dto;
    }

    /**
     * 숙소 정보 업데이트
     *
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
