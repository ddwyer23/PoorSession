package com.salesforce.poorSession.service;
import com.salesforce.poorSession.model.User;

public class LoginManager {

	private static final String USERNAME = "user";
	private static final String PASSWORD = "opensesame";
	
	public User authenticate (String userName, String password) {
		if (USERNAME.equals(userName) && PASSWORD.equals(password)) {
			return new User();
		}
		return null;
	}
}
