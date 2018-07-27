package com.sxit.Util;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.Properties;

public class ImgConfigUtil {
	
	private static  ImgConfigUtil imgconutil;
	private  String ip;
	private String username;
	private String pwd;
	private String filename;
	private String accesspath;
	
	public static  ImgConfigUtil newinstance() throws Exception{
		if(imgconutil==null){
			imgconutil=new ImgConfigUtil();
			imgconutil.getProperties();
		}
		
		return imgconutil;
	}
    private void getProperties() throws Exception{
    	Properties pro=new Properties();
    	String path=ImgConfigUtil.class.getResource("/").toURI().getPath();
    	String pathname=path+"imgConfig.properties";
    	BufferedReader br=new BufferedReader(new FileReader(pathname));
    	pro.load(br);
    	this.ip = pro.getProperty("server.ip");
		this.username = pro.getProperty("server.username").trim();
		this.pwd = pro.getProperty("server.password").trim();
		this.filename = pro.getProperty("server.filename").trim();
		this.accesspath = pro.getProperty("server.accesspath").trim();
		br.close();
    }
	public static ImgConfigUtil getImgconutil() {
		return imgconutil;
	}
	public String getIp() {
		return ip;
	}
	public String getUsername() {
		return username;
	}
	public String getPwd() {
		return pwd;
	}
	public String getFilename() {
		return filename;
	}
	public String getAccesspath() {
		return accesspath;
	}
    
    
}
