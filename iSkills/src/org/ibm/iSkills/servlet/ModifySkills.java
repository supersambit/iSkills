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
 
@WebServlet(urlPatterns = { "/modifySkills" })
public class ModifySkills extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public ModifySkills() {
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
    	UserAccount uexp= new UserAccount();
    	UserAccount q= new UserAccount();
    	String msg= null;
    	try {
			skills= DBUtils.findSkills(conn, user.getEid());
		} catch (SQLException e) {
			e.printStackTrace();
			msg= e.getMessage();
		}
    	
    	try {
			uexp= DBUtils.findUser(conn, user.getEid());
		} catch (SQLException e) {
			e.printStackTrace();
			msg= e.getMessage();
		}
    	try {
			q= DBUtils.findQualifications(conn, user.getEid());
		} catch (SQLException e) {
			e.printStackTrace();
			msg= e.getMessage();
		}
    	
    	request.setAttribute("uexp", uexp);
    	request.setAttribute("user", user);
        request.setAttribute("skills", skills);
        request.setAttribute("q", q);
        request.setAttribute("msg", msg);
        RequestDispatcher dispatcher //
                = this.getServletContext().getRequestDispatcher("/WEB-INF/views/modifySkillsView.jsp");
        dispatcher.forward(request, response);
 
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	doGet(request, response);
    }
 
}