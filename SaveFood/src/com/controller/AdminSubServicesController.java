package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doa.AdminSubServicesDoa;
import com.model.AdminSubServicesModel;


@WebServlet("/AdminSubServicesController")
public class AdminSubServicesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminSubServicesController() {
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
			AdminSubServicesModel ssm=new AdminSubServicesModel();
			ssm.setServiceid(Integer.parseInt(request.getParameter("serviceid")));
			ssm.setType(request.getParameter("type"));
			ssm.setDetails(request.getParameter("details"));
			ssm.setPerson(request.getParameter("person"));
			int x=new AdminSubServicesDoa().addSubServices(ssm);
			if(x>0)
			{
				
				request.setAttribute("msg", "Record  subServices insertes");
				System.out.println("Record  subServices insertes");
				response.sendRedirect("Admin/AdminHome.jsp");
			}else
			{
				request.setAttribute("msg", "Record ");
				System.out.println("Record  subServices  not insertes");
				response.sendRedirect("Admin/AdminSubServices.jsp");
			}
			
			
		}
		
	}

}
