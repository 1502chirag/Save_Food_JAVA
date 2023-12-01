package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.ServiceMode;

import com.doa.AdminServicesDoa;
import com.model.AdminServicesModel;
import com.utill.AdminUtill;


@WebServlet("/AdminServicesController")
public class AdminServicesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminServicesController() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action=request.getParameter("action");
		if(action.equals("add"))
		{
			AdminServicesModel rsm=new AdminServicesModel();
			rsm.setServicename(request.getParameter("servicename"));
			int x=new AdminServicesDoa().addNewServices(rsm);
			if(x>0)
			{
				System.out.println("new Services add");
				response.sendRedirect("Admin/AdminHome.jsp");
			}else
			{
				System.out.println("new Services not added");
				response.sendRedirect("Admin/AddNewServices.jsp");
			}
		}
	}

}
