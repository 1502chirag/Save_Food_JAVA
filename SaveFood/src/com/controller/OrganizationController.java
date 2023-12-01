package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doa.OrganizationDao;
import com.model.OrganizationModel;


@WebServlet("/OrganizationController")
public class OrganizationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public OrganizationController() {
        super();
    
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		OrganizationModel om=new OrganizationModel();
		om.setOrganizationname(request.getParameter("oname"));
		om.setOwnername(request.getParameter("owname"));
		om.setGender(request.getParameter("gender"));
		om.setAddress(request.getParameter("address"));
		om.setArea(request.getParameter("Area"));
		om.setMobileno1(request.getParameter("mono1"));
		om.setMobileno2(request.getParameter("mono2"));
		om.setNoontime(request.getParameter("ntime"));
		om.setEventime(request.getParameter("etime"));
		int x=new OrganizationDao().setRecord(om);
		if(x>0)
		{
			request.setAttribute("msg", "record inserted");
			response.sendRedirect("Admin/AdminHome.jsp");
			
		}else
		{
			request.setAttribute("msg", "record  not inserted");
			response.sendRedirect("Admin/Organization.jsp");
			
		}
		
	}

}
