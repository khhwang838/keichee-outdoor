package com.keichee.mustoutdoor.config;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
public class ConfigWatcher {

	private final static Logger logger = LoggerFactory.getLogger(ConfigWatcher.class);
	
	public ConfigWatcher() {
		// TODO : config 파일들을 등록하여 변경 시마다 config 컴포넌트들의 설정값 변경
	}
	
	// TODO : 외부 컴포넌트에서 watcher에 파일을 등록할 수 있도록 API 제공
}
