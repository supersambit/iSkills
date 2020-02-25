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
 
@WebServlet(urlPatterns = { "/skills" })
public class SkillsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public SkillsServlet() {
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
    	UserAccount skills= new UserAccount();
    	UserAccount userdetails= new UserAccount();
    	UserAccount q= new UserAccount();
    	String msg= null;
    	try {
			userdetails = DBUtils.findUser(conn, user.getEid());
		} catch (SQLException e) {
			e.printStackTrace();
		}
    	try {
			skills= DBUtils.findSkills(conn, user.getEid());
		} catch (SQLException e) {
			e.printStackTrace();
		}
    	try {
			q = DBUtils.findQualifications(conn, user.getEid());
		} catch (SQLException e) {
			e.printStackTrace();
		}
    	
    	request.setAttribute("user", userdetails);
        request.setAttribute("skills", skills);
        request.setAttribute("q", q);
        request.setAttribute("msg", msg);
        RequestDispatcher dispatcher //
                = this.getServletContext().getRequestDispatcher("/WEB-INF/views/skillsView.jsp");
        
 
        dispatcher.forward(request, response);
 
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
 
}