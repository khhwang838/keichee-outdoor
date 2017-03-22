/**
 * Author : Kihyun Hwang
 * Date   : 2016. 12. 2.
 */
package com.keichee.mustoutdoor.core;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.web.context.support.SpringBeanAutowiringSupport;

public class KeicheeServletContextInitializer implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {

	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
		
		// TODO : delete
		System.out.println("Context initialized !!!!");
	}

}
