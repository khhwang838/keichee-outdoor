package com.keichee.mustoutdoor.config;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

import lombok.Getter;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Getter
@Setter
public class FileConfig {

	private String uploadDestFeatured;
	private String uploadDestRcmdSpots;
	private String uploadDestGallery;

	public static FileConfig instance = new FileConfig();
	
	public FileConfig() {
		load();
	}
	public void load(){
		String fileConfigLocation = System.getProperty("files.config");
		Properties props = new Properties();
		try {
			props.load(new FileInputStream(new File(fileConfigLocation)));
			uploadDestFeatured = props.getProperty("upload.dir.image.featured");
			uploadDestRcmdSpots = props.getProperty("upload.dir.image.rcmdspots");
			uploadDestGallery = props.getProperty("upload.dir.image.gallery");
		} catch (IOException e) {
			log.error("Failed to load 'files.config'. e-msg: {}", e.toString());
		}
	}
}
