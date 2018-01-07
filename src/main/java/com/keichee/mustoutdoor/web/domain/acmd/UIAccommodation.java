package com.keichee.mustoutdoor.web.domain.acmd;

import java.util.List;

import com.keichee.mustoutdoor.web.domain.acmd.dto.AccommodationDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.FacilitiesDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.NationCityDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.RecommendSpotsDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.SpecialFacilitiesDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.ThemesDto;

public class UIAccommodation {

	private AccommodationDto acmd;
	private NationCityDto nationCity;
	private List<RecommendSpotsDto> recommendSpots;
	private List<FacilitiesDto> facilities;
	private List<ThemesDto> themes;
	private List<SpecialFacilitiesDto> specialFacilities;
	
	public AccommodationDto getAcmd() {
		return acmd;
	}
	public void setAcmd(AccommodationDto acmd) {
		this.acmd = acmd;
	}
	public NationCityDto getNationCity() {
		return nationCity;
	}
	public void setNationCity(NationCityDto nationCity) {
		this.nationCity = nationCity;
	}
	public List<RecommendSpotsDto> getRecommendSpots() {
		return recommendSpots;
	}
	public void setRecommendSpots(List<RecommendSpotsDto> recommendSpots) {
		this.recommendSpots = recommendSpots;
	}
	public List<FacilitiesDto> getFacilities() {
		return facilities;
	}
	public void setFacilities(List<FacilitiesDto> facilities) {
		this.facilities = facilities;
	}
	public List<ThemesDto> getThemes() {
		return themes;
	}
	public void setThemes(List<ThemesDto> themes) {
		this.themes = themes;
	}
	public List<SpecialFacilitiesDto> getSpecialFacilities() {
		return specialFacilities;
	}
	public void setSpecialFacilities(List<SpecialFacilitiesDto> specialFacilities) {
		this.specialFacilities = specialFacilities;
	}
	
	
}
