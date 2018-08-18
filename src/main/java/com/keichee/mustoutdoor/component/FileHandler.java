/**
 * Created on 2018. 7. 30. by Keichee
 */
package com.keichee.mustoutdoor.component;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.net.URLDecoder;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.SdkClientException;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.PutObjectResult;
import com.keichee.mustoutdoor.config.FileConfig;
import com.keichee.mustoutdoor.constants.ImageType;
import com.keichee.mustoutdoor.exception.ImageOversizeException;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class FileHandler {

	private final int MAX_FILE_SIZE = 1024 * 1024; // 1 MB limit
	private final String clientRegion = Regions.AP_NORTHEAST_2.getName();
	private final String bucketName = "mustoutdoor";

	public String uploadGallryImage(MultipartFile image, String acmdUid, String imgUid) throws IllegalStateException, IOException {
		// return aws public link url
		return uploadImage(image, ImageType.GALLERY, acmdUid, imgUid);
	}

	public String uploadRcmdSpotImage(MultipartFile image, String acmdUid, String rcmdSpotUid) throws IllegalStateException, IOException {
		// return aws public link url
		return uploadImage(image, ImageType.RCMD_SPOT, acmdUid, rcmdSpotUid);
	}

	public String uploadFeaturedImage(MultipartFile image, String acmdUid) throws IllegalStateException, IOException {
		// return aws public link url
		return uploadImage(image, ImageType.FEATURED, acmdUid, null);
	}

	private void checkFileSize(MultipartFile image) {
		if (image.getSize() > MAX_FILE_SIZE) {
			throw new ImageOversizeException(image.getOriginalFilename());
		}
	}

	private String buildUploadFilePath(ImageType type, String acmdUid, String ext) {
		return buildUploadFilePath(type, acmdUid, null, ext);

	}

	private String buildUploadFilePath(ImageType type, String acmdUid, String extraUid, String ext) {
		// {upload.dir.image.featured}/{acmdUid}.extension
		// {upload.dir.image.rcmdspot}/{acmdUid}/{rcmdPlaceUid}.extension
		// {upload.dir.image.gallery}/{acmdUid}/{imgUid}.extension
		StringBuilder fileNameBuilder = new StringBuilder();
		fileNameBuilder.append(acmdUid);

		if (StringUtils.isNotBlank(extraUid)) {
			fileNameBuilder.append(File.separator).append(extraUid);
		}
		fileNameBuilder.append(File.separator).append(ext);
		String fileName = fileNameBuilder.toString();

		StringBuilder pathBuilder = new StringBuilder();
		switch (type) {
		case FEATURED:
			pathBuilder.append(FileConfig.instance.getUploadDestFeatured());
			break;
		case RCMD_SPOT:
			pathBuilder.append(FileConfig.instance.getUploadDestRcmdSpots());
			break;
		case GALLERY:
			pathBuilder.append(FileConfig.instance.getUploadDestGallery());
			break;
		default:

		}
		pathBuilder.append(File.separator).append(fileName);
		return pathBuilder.toString();
	}

	private String getFileNameOnlyFrom(String uploadFilePath) {
		return uploadFilePath.substring(uploadFilePath.lastIndexOf("/") + 1);
	}

	private String getDirPathOnlyFrom(String uploadFilePath) {
		return uploadFilePath.substring(0, uploadFilePath.lastIndexOf("/"));
	}

	private String uploadImage(MultipartFile image, ImageType type, String acmdUid, String extraUid) throws IllegalStateException, IOException {
		checkFileSize(image);
		String uploadFilePath = buildUploadFilePath(type, acmdUid, extraUid, FilenameUtils.getExtension(image.getOriginalFilename()));
		File convFile = new File(uploadFilePath);
		String dirPathStr = getDirPathOnlyFrom(uploadFilePath);
		File dirPath = new File(dirPathStr);
		if (!dirPath.exists()){
			dirPath.mkdirs();
		}
		try {
			image.transferTo(convFile);

			AmazonS3 s3Client = getS3Client();

			// Upload a file as a new object with ContentType and title specified.
			PutObjectRequest request = new PutObjectRequest(bucketName, uploadFilePath, convFile).withCannedAcl(CannedAccessControlList.PublicRead);
			s3Client.putObject(request);
			
			String resUrl = ((AmazonS3Client)s3Client).getResourceUrl(bucketName, uploadFilePath);
			return resUrl;
			
		} catch (AmazonServiceException e1) {
			// The call was transmitted successfully, but Amazon S3 couldn't process
			// it, so it returned an error response.
			log.error("e-msg: {}, stacktrace: {}", e1.toString(), e1.getStackTrace());
		} catch (SdkClientException e2) {
			// Amazon S3 couldn't be contacted for a response, or the client
			// couldn't parse the response from Amazon S3.
			log.error("e-msg: {}, stacktrace: {}", e2.toString(), e2.getStackTrace());
		} catch (Exception e) {
			log.error("e-msg: {}, stacktrace: {}", e.toString(), e.getStackTrace());
		} finally {
			convFile.delete(); // S3에 업로드 후 EC2에서는 이미지파일 삭제
		}
		return null;
	}
	
	private AmazonS3 getS3Client(){
		AWSCredentials credentials = new BasicAWSCredentials("AKIAIKYT5TYTBWBSQFWQ", "W6XbcGsojscW4sAzf095XyEujgligYJzf9ykqCM5");
		AmazonS3 s3Client = AmazonS3ClientBuilder.standard().withRegion(clientRegion).withCredentials(new AWSStaticCredentialsProvider(credentials)).build();
		return s3Client;
	}
	public void deleteImage(String s3FilePath){
		// s3FilePath : mustoutdoor버킷안에서의 파일 경로
		AmazonS3 s3client = getS3Client();
		s3client.deleteObject(bucketName, s3FilePath);
	}

	/**
	 * 이미지 URL에서 S3 파일경로 추출하는 서비스
	 * @param imgUrl
	 * @return
	 */
	public String getImagePathOnS3(String imgUrl) {
		// mustoutdoor 버킷 내 이미지 저장을 위한 최상위 디렉토리 = images
		// url example : https://mustoutdoor.s3.ap-northeast-2.amazonaws.com/images/4.jpg
		return imgUrl.substring(imgUrl.indexOf("images"));
	}
	
	public static void main(String[] args) {
		
		String bucketName = "mustoutdoor";
		String uploadFilePath = "images/4.jpg";
		String acmdUid = "1234567890";
		String extraUid = null;
		ImageType type = ImageType.FEATURED;
		
		File file = new File("/Users/KH/Downloads/4.jpg");
		FileHandler fileHandler = new FileHandler();
		AmazonS3 s3client = fileHandler.getS3Client();
		
		PutObjectRequest request = new PutObjectRequest(bucketName, uploadFilePath, file).withCannedAcl(CannedAccessControlList.PublicRead);
		PutObjectResult result = s3client.putObject(request);
		
		String resUrl = ((AmazonS3Client)s3client).getResourceUrl(bucketName, uploadFilePath);
		
		// TODO : testing....
		System.out.println(String.format("getResourceUrl: %s", resUrl));
	}
}
