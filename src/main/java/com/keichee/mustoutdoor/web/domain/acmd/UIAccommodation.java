package com.keichee.mustoutdoor.web.domain.acmd;

import java.io.File;
import java.util.List;

import com.keichee.mustoutdoor.web.domain.acmd.dto.AcmdDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.AcmdTypeDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.FacilitiesDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.NationCityDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.RecommendSpotsDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.SpecialFacilitiesDto;
import com.keichee.mustoutdoor.web.domain.acmd.dto.ThemesDto;

public class UIAccommodation {

	private AcmdDto acmd;
	private NationCityDto nationCity;
	private List<AcmdTypeDto> types;
	private List<RecommendSpotsDto> recommendSpots;
	private List<FacilitiesDto> facilities;
	private List<ThemesDto> themes;
	private List<SpecialFacilitiesDto> specialFacilities;
	
	private File featuredImage;
	private List<File> galleryImages;
	
	public AcmdDto getAcmd() {
		return acmd;
	}
	public void setAcmd(AcmdDto acmd) {
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
	public List<AcmdTypeDto> getTypes() {
		return types;
	}
	public void setTypes(List<AcmdTypeDto> types) {
		this.types = types;
	}
	public File getFeaturedImage() {
		return featuredImage;
	}
	public void setFeaturedImage(File featuredImage) {
		this.featuredImage = featuredImage;
	}
	public List<File> getGalleryImages() {
		return galleryImages;
	}
	public void setGalleryImages(List<File> galleryImages) {
		this.galleryImages = galleryImages;
	}
}
