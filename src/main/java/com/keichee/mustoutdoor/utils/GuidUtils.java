/**
 * Created on 2016. 11. 26. by Keichee
 */
package com.keichee.mustoutdoor.utils;

import java.util.UUID;

public class GuidUtils {

	private static final GuidUtils instance = new GuidUtils();
	private GuidUtils(){}
	
	public static GuidUtils instance(){
		return instance;
	}
	public String createGuid(){
		return UUID.randomUUID().toString().replace("-", "");
	}
	
}
