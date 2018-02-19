package com.salesforce.poorSession.controler;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.salesforce.poorSession.model.User;
import com.salesforce.poorSession.service.LoginManager;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private LoginManager loginManager = new LoginManager();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().isNew()){
			response.sendRedirect(request.getContextPath() + "/Login;jsessionid="+request.getSession().getId());
			return;
		}
		if (request.getSession().getAttribute("user") == null) {
			// redirect to login with error message
			request.getRequestDispatcher("/Login.jsp").forward(request, response);
		}
		else {
			response.sendRedirect(request.getContextPath() + "/Home;jsessionid="+request.getSession().getId());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("user");
		String password = request.getParameter("pswd");
		User user = loginManager.authenticate(username, password);
		if(user == null){
			request.getRequestDispatcher("/Login.jsp").forward(request, response);
		}else{
			request.getSession().setAttribute("user", user);
			response.sendRedirect(request.getContextPath() + "/Home;jsessionid="+request.getSession().getId());
		}
	}

}
