package com.nadaena.vo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class FileVo {

	//필드
	private String clgTitle;
	private List<MultipartFile> file;

	
	//생성자
	public FileVo() {
		super();
	}
	
	public FileVo(String clgTitle, List<MultipartFile> file) {
		super();
		this.clgTitle = clgTitle;
		this.file = file;
	}
	//GS

	public String getClgTitle() {
		return clgTitle;
	}

	public void setClgTitle(String clgTitle) {
		this.clgTitle = clgTitle;
	}

	public List<MultipartFile> getFile() {
		return file;
	}

	public void setFile(List<MultipartFile> file) {
		this.file = file;
	}

	
	//일반
	@Override
	public String toString() {
		return "FileVo [clgTitle=" + clgTitle + ", file=" + file + "]";
	}
	
	
}
