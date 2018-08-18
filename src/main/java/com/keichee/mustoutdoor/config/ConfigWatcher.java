package com.keichee.mustoutdoor.config;

import java.io.File;
import java.io.IOException;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardWatchEventKinds;
import java.nio.file.WatchEvent;
import java.nio.file.WatchKey;
import java.nio.file.WatchService;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Getter
@Setter
//@Component
@AllArgsConstructor
public class ConfigWatcher implements Runnable {
	// TODO : 컴포넌트로 지정해도 기동 잘 되도록 수정 필요 
	private WatchService watchService;
	
	public ConfigWatcher() {
		
		Path path1 = null;
		Path path2 = null;
		Path path3 = null;

		try {
			watchService = FileSystems.getDefault().newWatchService();

			path1 = checkAndCreateDir(FileConfig.instance.getUploadDestGallery());
			path1.register(watchService, StandardWatchEventKinds.ENTRY_MODIFY);

			path2 = checkAndCreateDir(FileConfig.instance.getUploadDestRcmdSpots());
			path2.register(watchService, StandardWatchEventKinds.ENTRY_MODIFY);

			path3 = checkAndCreateDir(FileConfig.instance.getUploadDestGallery());
			path3.register(watchService, StandardWatchEventKinds.ENTRY_MODIFY);

		} catch (IOException e) {
			log.error("Failed to register 'files.config' watch service. e-msg: {}", e.toString());
		}
		run();
	}
	@Override
	public void run() {
		WatchKey key;
		try {
			while ((key = watchService.take()) != null) {
				
			    for (WatchEvent<?> event : key.pollEvents()) {
			        //process
			    	if ( StandardWatchEventKinds.ENTRY_MODIFY == event.kind() ) {
			    		FileConfig.instance.load();
			    	}
			    }
			    key.reset();
			}
		} catch (InterruptedException e) {
			log.error("File config watch service is interrupted. e-msg: {}", e.toString());
		}
				
	}
	private Path checkAndCreateDir(String dir) {
		Path path = new File(dir).toPath();
		if (!Files.exists(path)) {
			try {
				log.debug("Creating dir : {}", path);
				Files.createDirectories(path);
			} catch (IOException e) {
				log.error("e-msg:{}, dir:{}", e.toString(), dir);
			}
		}
		return path;
	}
}
