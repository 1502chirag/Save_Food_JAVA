package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doa.AdminReadSubServicesDoa;
import com.model.AdminSubServicesModel;


@WebServlet("/ReadSubServicesController")
public class ReadSubServicesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ReadSubServicesController() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String action=request.getParameter("action");
		if(action.equals("edituser"))
		{
			int subserviceid=Integer.parseInt(request.getParameter("subserviceid"));
			AdminSubServicesModel rasm=new AdminReadSubServicesDoa().getRecord(subserviceid);
			request.setAttribute("rasm", rasm);
			response.sendRedirect("Admin/AdminReadSubServices.jsp?subserviceid="+rasm.getSubserviceid()+"&serviceid="+rasm.getServiceid()+"&subtype="+ rasm.getType()+"&subdetails="+rasm.getDetails()+"&subperson="+rasm.getPerson());
		}else if(action.equals("deleteservice"))
		{
			int subserviceid=Integer.parseInt(request.getParameter("subserviceid"));
			int x=new AdminReadSubServicesDoa().getDelete(subserviceid);
			request.setAttribute("msg", "Record Delete");
			response.sendRedirect("Admin/AdminReadSubServices.jsp");
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		AdminSubServicesModel subread=new AdminSubServicesModel();
		subread.setSubserviceid(Integer.parseInt(request.getParameter("subserviceid")));
		subread.setServiceid(Integer.parseInt(request.getParameter("serviceid")));
		subread.setType(request.getParameter("subtype"));
		subread.setDetails(request.getParameter("subdetails"));
		subread.setPerson(request.getParameter("subperson"));
		int x=new AdminReadSubServicesDoa().getUpdate(subread);
		if(x>0)
		{
			request.setAttribute("msg","Record updated");
			response.sendRedirect("Admin/AdminHome.jsp");
		}else
		{
			request.setAttribute("msg","Record  not updated");
			response.sendRedirect("Admin/AdminReadSubServices.jsp");
		}
	}

}
