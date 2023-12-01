package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doa.AdminReadServicesDoa;
import com.model.AdminServicesModel;
import com.utill.AdminUtill;


@WebServlet("/ReadServicesController")
public class ReadServicesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ReadServicesController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String action=request.getParameter("action");
		if(action.equals("edituser"))
		{
			int serviceid=Integer.parseInt(request.getParameter("serviceid"));
			AdminServicesModel Aumodel=new AdminReadServicesDoa().getRecord(serviceid);
			request.setAttribute("Aumodel", Aumodel);
//			response.sendRedirect("Admin/AdminReadServices.jsp?serviceid="+Aumodel.getServiceid()+"&servicename="+Aumodel.getServicename());
//			request.getRequestDispatcher("Admin/AdminReadServices.jsp").forward(request, response);
			response.sendRedirect("Admin/AdminReadServices.jsp?serviceid="+Aumodel.getServiceid()+"&servicename="+Aumodel.getServicename());

		}else if(action.equals("deleteservice"))
		{
			int serviceid=Integer.parseInt(request.getParameter("serviceid"));
			int x=new AdminReadServicesDoa().deleteuser(serviceid);
			request.setAttribute("msg","Record Deleted");
//			request.getRequestDispatcher("Admin/AdminReadServices.jsp");
			response.sendRedirect("Admin/AdminReadServices.jsp?");
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		AdminServicesModel Aumodel=new AdminServicesModel();
		Aumodel.setServiceid(Integer.parseInt(request.getParameter("serviceid")));
		Aumodel.setServicename(request.getParameter("servicename"));
		int x=new AdminReadServicesDoa().updateUser(Aumodel);
		if(x>0)
		{
			request.setAttribute("msg","Record updated");
//			request.getRequestDispatcher("Admin/AdminHome.jsp").forward(request, response);
			response.sendRedirect("Admin/AdminHome.jsp");
		}
		else
		{
			request.setAttribute("msg","Record  not updated");
//			request.getRequestDispatcher("Admin/AdminReadServices.jsp").forward(request, response);
			response.sendRedirect("Admin/AdminReadServices.jsp");
		}
	}

}
