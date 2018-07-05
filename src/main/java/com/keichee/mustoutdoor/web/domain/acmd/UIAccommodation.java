package com.keichee.mustoutdoor.web.domain.acmd;

import java.io.File;
import java.util.List;

import com.keichee.mustoutdoor.web.domain.acmd.dto.*;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UIAccommodation {

    private AcmdDto acmd;
    private NationCityDto nationCity;
    private List<AcmdTypesDto> types;
    private List<RecommendSpotsDto> recommendSpots;
    private List<FacilitiesDto> facilities;
    private List<AcmdThemesDto> themes;
    private List<SpecialFacilitiesDto> specialFacilities;
    private List<ExtraOptionsDto> extraOptions;
    private PoliciesDto policy;
    private List<PolicyOptionsDto> policyOptions;
    private File featuredImage;
    private List<File> galleryImages;

}
