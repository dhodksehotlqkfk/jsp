package kr.or.ddit.util;

import static org.junit.Assert.*;

import org.junit.Test;

public class FileuploadUtilTest {

   /**
   * Method : getFilenameTest
   * 작성자 : PC-09
   * 변경이력 :
   * Method 설명 : Content-disposition 헤더 문자열로 부터 파일확장자 추출 테스트
   */
   @Test
   public void getFileExtensionTest() {
      /***Given***/
      String contentDisposision = "form-data; name=\"file\"; filename=\"brown.png\"";
      String contentDisposision2 = "form-data; name=\"file\"; filename=\"moon.png\"";
      String contentDisposision3 = "form-data; name=\"file\"; filename=\"brown\"";
      String contentDisposision4 = "form-data; name=\"file\"; filename=\"brown.xx.jpg\"";
      
      /***When***/
      String fileExtensionName = FileuploadUtil.getFileExtension(contentDisposision);
      String fileExtensionName2 = FileuploadUtil.getFileExtension(contentDisposision2);
      String fileExtensionName3 = FileuploadUtil.getFileExtension(contentDisposision3);
      String fileExtensionName4 = FileuploadUtil.getFileExtension(contentDisposision4);

      /***Then***/
      assertEquals(".png", fileExtensionName);
      assertEquals(".png", fileExtensionName2);
      assertEquals("", fileExtensionName3);
      assertEquals(".jpg", fileExtensionName4);
   }
   
   /**
* Method : getPathTest
* 작성자 : PC-02
* 변경이력 :
* Method 설명 : 파일 업로드 경로 조회하기 테스트
*/
@Test
   public void getPathTest() {
	/***Given***/
	
	/***When***/
	String path = FileuploadUtil.getPath();

	/***Then***/
	assertEquals("d:\\upload\\2019\\08\\", path);
   }

}