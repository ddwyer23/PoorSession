package com.salesforce.poorSession.service;
import java.util.Calendar;

import org.apache.catalina.session.StandardManager;

public class MySessionManager extends StandardManager {
	
	private static Integer SESSION = (int) (Math.random() * 100000000000000.0);

    @Override
    public synchronized String generateSessionId() { 
    	
    	String sessionId = Integer.toHexString(SESSION);
        return Long.toHexString(Calendar.getInstance().getTimeInMillis()).toUpperCase();
    }
    
}