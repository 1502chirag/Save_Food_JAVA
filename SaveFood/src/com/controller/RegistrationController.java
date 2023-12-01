package com.controller;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.doa.RegistrationDao;
import com.model.RegistrationModel;
@WebServlet("/RegistrationController")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L; 
    public RegistrationController() {
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
		RegistrationModel rmodel=new RegistrationModel();
		rmodel.setFirstname(request.getParameter("firstname"));
		rmodel.setLastname(request.getParameter("lastname"));
		rmodel.setPassword(request.getParameter("password"));
		rmodel.setEmail(request.getParameter("email"));
		rmodel.setPhonenumber(request.getParameter("phonenumber"));
//		rmodel.setGender(request.getParameter("gender"));
		int x=new RegistrationDao().doRegistration(rmodel);
		if(x>0)
		{
			request.setAttribute("msg","registration succefully" );
			request.getRequestDispatcher("/Login.jsp").forward(request, response);
		}else{
			request.setAttribute("msg", "Registration not succesfully");
			request.getRequestDispatcher("../reg1.jsp").forward(request, response);
		}
	}
}
