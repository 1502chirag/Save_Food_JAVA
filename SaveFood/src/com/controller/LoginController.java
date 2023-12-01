package com.controller;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.doa.LoginDoa;
import com.model.RegistrationModel;
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		RegistrationModel lmod=new RegistrationModel();
		lmod.setEmail(request.getParameter("email"));
		lmod.setPassword(request.getParameter("password"));
		
		RegistrationModel mod=new LoginDoa().getlogin(lmod);
		if(mod!=null)
		{
			HttpSession session=request.getSession(true);
			session.setAttribute("index", mod.getIndex());
			session.setAttribute("firstname", mod.getFirstname());
			session.setAttribute("lastname", mod.getLastname());
			session.setAttribute("phonenumber",mod.getPhonenumber());
			session.setAttribute("email", mod.getEmail());
			session.setAttribute("password", mod.getPassword());
			response.sendRedirect("signout.jsp");
//			request.getRequestDispatcher("home.jsp").forward(request, response);
			
		}else
		{
			request.setAttribute("msg", "invalid email and password");
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}
		
	}

}
