/**
 * Author : Keichee
 * Date   : 2016. 12. 2.
 */
package com.keichee.mustoutdoor.core;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

public class KeicheeServletContextInitializer implements ServletContextListener {

	private final Logger logger = LoggerFactory.getLogger(getClass());

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {

	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
		
		// TODO : delete
		logger.debug("Context initialized !!!!");
	}

}
