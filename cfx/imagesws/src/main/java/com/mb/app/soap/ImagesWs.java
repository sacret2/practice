package com.mb.app.soap;

import javax.activation.DataHandler;
import javax.jws.WebParam;
import javax.jws.WebService;

@WebService
public interface ImagesWs {
	void upload(@WebParam(name="image") DataHandler dataHandler, String fileName);	
	DataHandler download(String fileName);
}
