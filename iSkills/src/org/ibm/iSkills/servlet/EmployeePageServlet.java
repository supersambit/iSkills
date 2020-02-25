package org.ibm.iSkills.servlet;
 
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.ibm.iSkills.bean.*;
import org.ibm.iSkills.utils.DBUtils;
import org.ibm.iSkills.utils.MyUtils;
 
@WebServlet(urlPatterns = { "/employeePage" })
public class EmployeePageServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public EmployeePageServlet() {
        super();
    }
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	HttpSession session = request.getSession();
    	Connection conn = MyUtils.getStoredConnection(request);
    	UserAccount loggedinuser= MyUtils.getLoggedinUser(session);
    	if(loggedinuser==null) {
           	response.sendRedirect(request.getContextPath() + "/login");
               return;
           }
    	if(loggedinuser.getRole().equals("Employee")) {
          	 RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/WEB-INF/views/accessDenied.jsp");
          	 dispatcher.forward(request, response);
          	 return;
           }
    	UserAccount skills= new UserAccount();
    	UserAccount userdetails= new UserAccount();
    	UserAccount q= new UserAccount();
    	String msg= null;
    	String empid= request.getParameter("link");
    	try {
			userdetails = DBUtils.findUser(conn, empid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
    	try {
			skills= DBUtils.findSkills(conn, empid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
    	try {
			q = DBUtils.findQualifications(conn, empid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
    	
    	request.setAttribute("user", userdetails);
        request.setAttribute("skills", skills);
        request.setAttribute("q", q);
        request.setAttribute("msg", msg);
        RequestDispatcher dispatcher //
                = this.getServletContext().getRequestDispatcher("/WEB-INF/views/empSkillsView.jsp");
        
 
        dispatcher.forward(request, response);
 
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
 
}