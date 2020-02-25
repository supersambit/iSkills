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
 
@WebServlet(urlPatterns = { "/updateExp" })
public class UpdateExpServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public UpdateExpServlet() {
        super();
    }
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	HttpSession session = request.getSession();
    	Connection conn = MyUtils.getStoredConnection(request);
    	UserAccount user= MyUtils.getLoggedinUser(session);
    	if(user==null) {
           	response.sendRedirect(request.getContextPath() + "/login");
               return;
           }
    	UserAccount userdetails= new UserAccount();
    	try {
			userdetails = DBUtils.findUser(conn, user.getEid());
		} catch (SQLException e) {
			e.printStackTrace();
		}
    	request.setAttribute("user", userdetails);
        RequestDispatcher dispatcher //
                = this.getServletContext().getRequestDispatcher("/WEB-INF/views/updateExpView.jsp");
        dispatcher.forward(request, response);
 
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	HttpSession session = request.getSession();
    	Connection conn = MyUtils.getStoredConnection(request);
    	UserAccount user= MyUtils.getLoggedinUser(session);
    	UserAccount uexp = new UserAccount();
    	if(user==null) {
           	response.sendRedirect(request.getContextPath() + "/login");
               return;
           }
    	
    	String inexp= request.getParameter("inexp");
    	String intexp= request.getParameter("intexp");
    	String iniexp= request.getParameter("iniexp");
    	float exp= Float.parseFloat(inexp);
    	float texp= Float.parseFloat(intexp);
    	float iexp= Float.parseFloat(iniexp);
    	String eid= user.getEid();
    	uexp.setExp(exp);
    	uexp.setTexp(texp);
    	uexp.setIexp(iexp);
    	uexp.setEid(eid);

    	    	try {
    			 DBUtils.updateExp(conn, uexp);
    			} catch (SQLException e) {
    				e.printStackTrace();
    			}
    	    	 response.sendRedirect(request.getContextPath() + "/skills");
    }
 
}