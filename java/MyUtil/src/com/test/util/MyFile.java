package com.test.util;

public class MyFile {
	//파일 처리와 관련된 업무 구현
	//1. 경로 > 파일명 추출
	//2. 경로 > 확장자 추출
	
	public String getFileNameWithoutExtension(String path) {
		//getFileName("test.txt") > 상대경로
		//getFileName("C:\\java\\hong.mp4") 절대 경로
		if (path.contains("\\")) {
			String[] temp = path.split("\\");
			path = temp[temp.length-1];
		}
		//test.txt
		//hong.mp4
		int index = path.lastIndexOf(".");
		return path.substring(0, index);
	}
	
	public String getExtension(String path) {
		//getFileName("test.txt") > 상대경로
		//getFileName("C:\\java\\hong.mp4") 절대 경로
		if (path.contains("\\")) {
			String[] temp = path.split("\\");
			path = temp[temp.length-1];
			
		}
		//test.txt
		//hong.mp4
		int index = path.lastIndexOf(".");
		return path.substring(index+1);
	}
}
