package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.doa.AdminDoa;
import com.model.RegistrationModel;


@WebServlet("/AdminLoginControllrer")
public class AdminLoginControllrer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AdminLoginControllrer() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		
		PrintWriter out=response.getWriter();
		
		RegistrationModel amodel=new RegistrationModel();
		amodel.setEmail(request.getParameter("email"));
		amodel.setPassword(request.getParameter("password"));
		RegistrationModel admin=new AdminDoa().getAdminLogin(amodel);
		if(admin!=null)
		{
			HttpSession session=request.getSession();
			session.setAttribute("email",admin.getEmail());
			session.setAttribute("firstname", admin.getFirstname());
			session.setAttribute("lastname", admin.getLastname());
			session.setAttribute("password", admin.getPassword());
			session.setAttribute("phonenumber",admin.getPhonenumber());
			response.sendRedirect("Admin/AdminHome.jsp");
		}else
		{
			
			request.setAttribute("msg", "please enter right email and password");
//			request.getRequestDispatcher("Admin/AdminHome.jsp").forward(request, response);
			response.sendRedirect("Admin/AdminLogin.jsp");

		}
	}

}
