package com.task;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.*;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		Metadata meta= new MetadataSources(ssr).getMetadataBuilder().build();
		SessionFactory sf = meta.getSessionFactoryBuilder().build();
		Session session = sf.openSession();
		Transaction t = session.beginTransaction();
		User u = new User();
		PrintWriter out =  response.getWriter();
		 List User = session.createQuery("FROM User").list();
		 String id = request.getParameter("userid");
		 String pass = request.getParameter("password");
//		 request.setAttribute(id, "userid");
		
		 for (Iterator iterator = User.iterator(); iterator.hasNext();){
	            User user = (User) iterator.next(); 
	            if(id.equals(user.getUserid())) {
	            	request.setAttribute("userid",id);
	            	RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
	            	rd.forward(request, response);
	            	return;
	            }
	            else {
	            	out.print("incorect credential");
	            	 
	            }
	            
	         }

	
		 session.persist(u);
			t.commit();
			session.close();
			System.out.println("data stored in table");	

	}
	
}
