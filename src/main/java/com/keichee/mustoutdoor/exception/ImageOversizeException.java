/**
 * Created on 2018. 7. 30. by Keichee
 */
package com.keichee.mustoutdoor.exception;

public class ImageOversizeException extends CustomException {

	private static final long serialVersionUID = 1L;

	public ImageOversizeException() {
		super("Image size must less than 5MB.");
	}
	
	public ImageOversizeException(String fileName) {
		super("Image size must less than 5MB. [fileName: " + fileName + "]");
	}
}
