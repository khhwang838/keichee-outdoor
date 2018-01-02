package com.keichee.mustoutdoor.config;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Properties;

import org.springframework.beans.factory.annotation.Autowired;

public class FileConfig {
	
	@Autowired
	private ConfigWatcher watcher;
	
	private static final FileConfig instance = new FileConfig();
			
	private String uploadDestFeatured;

	public FileConfig() {
		String fileConfigLocation = System.getProperty("file.config");
		
		Properties props = new Properties();
		try {
			props.load(new FileInputStream(new File(fileConfigLocation)));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		uploadDestFeatured = props.getProperty("upload.dir.image.fetured");
	
		Path dir = new File(uploadDestFeatured).toPath();
		if (!Files.exists(dir))
			try {
				Files.createDirectories(dir);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		// TODO : watcher에 config 파일 등록
	
	}

	public String getUploadDestFeatured() {
		return uploadDestFeatured;
	}

	public void setUploadDestFeatured(String uploadDestFeatured) {
		this.uploadDestFeatured = uploadDestFeatured;
	}

	public static FileConfig instance() {
		return instance;
	}

}
