package com.mb.app.soap;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.regex.Pattern;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;

import org.apache.cxf.feature.Features;

@Features(features="org.apache.cxf.feature.LoggingFeature")
public class ImagesWsImpl implements ImagesWs {

	@Override
	public void upload(DataHandler attachment, String fileName) {
		if(!Pattern.compile(".jpg$").matcher(fileName).find() 
				&& !Pattern.compile(".png$").matcher(fileName).find())
			return;
			
		InputStream inputStream = null;
		OutputStream outputStream = null;
		
		try {
			inputStream = attachment.getInputStream();
			outputStream = new FileOutputStream(new File(
					new File("").getAbsolutePath()) + "\\Files\\" + fileName);
			// tu skon
		}catch(IOException e){
			e.printStackTrace();
		} finally {
			try {
				inputStream.close();
				outputStream.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public DataHandler download(String fileName) {
		if(!Pattern.compile(".jpg$").matcher(fileName).find() 
				&& !Pattern.compile(".png$").matcher(fileName).find())
			return null;
		try {
		return new DataHandler(new FileDataSource(new File(
				new File("").getAbsolutePath() + "\\Files\\" + fileName)));
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
