package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doa.donnerDao;
import com.model.donner;

import javafx.scene.control.Alert;


@WebServlet("/DonnerController")
public class DonnerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DonnerController() {
        super();
    
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		donner dm=new donner();
		dm.setOid(Integer.parseInt(request.getParameter("oid")));
		dm.setName(request.getParameter("name"));
		dm.setEmail(request.getParameter("email"));
		dm.setMobileno(request.getParameter("mobileno"));
		dm.setTime(request.getParameter("time"));
		dm.setGender(request.getParameter("gender"));
		dm.setAddress(request.getParameter("address"));
		dm.setItem(request.getParameter("item"));
		int x=new donnerDao().doRegistration(dm);
		if(x>0){
			
			request.setAttribute("msg","information succesfully send" );
			request.getRequestDispatcher("/home.jsp").forward(request, response);
		}else{
			request.setAttribute("msg", "Registration not succesfully");
			request.getRequestDispatcher("/Doner.jsp").forward(request, response);
		}
	}

}
