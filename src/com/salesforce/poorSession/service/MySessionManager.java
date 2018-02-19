package com.salesforce.poorSession.service;
import org.apache.catalina.session.StandardManager;

public class MySessionManager extends StandardManager {
	
	private static Double SESSION = Math.random();

    @Override
    public synchronized String generateSessionId() { 
    	SESSION = SESSION * 10;
    	String sessionId = Double.toHexString(SESSION).toUpperCase().replaceAll("0X1.", "");
    	//String sessionId = Long.toHexString(Double.doubleToLongBits(Math.random()));
        return sessionId;
    }
}