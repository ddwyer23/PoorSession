package com.salesforce.poorSession.service;
import org.apache.catalina.session.StandardManager;

public class MySessionManager extends StandardManager {
	
	private static Double SESSION = Math.random();

    @Override
    public synchronized String generateSessionId() { 
    	SESSION++;
    	String sessionId = Double.toHexString(SESSION).toUpperCase();
    	//String sessionId = Long.toHexString(Double.doubleToLongBits(Math.random()));
        return sessionId;
    }
}