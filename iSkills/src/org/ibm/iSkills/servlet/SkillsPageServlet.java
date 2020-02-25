package org.ibm.iSkills.servlet;
 
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

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
 
@WebServlet(urlPatterns = { "/skillsPage" })
public class SkillsPageServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public SkillsPageServlet() {
        super();
    }
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	HttpSession session = request.getSession();
    	Connection conn = MyUtils.getStoredConnection(request);
    	UserAccount loggedinUser= MyUtils.getLoggedinUser(session);
    	ArrayList<UserAccount> userskills = new ArrayList<>();
        if(loggedinUser==null) {
        	response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        if(loggedinUser.getRole().equals("Employee")) {
       	 RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/WEB-INF/views/accessDenied.jsp");
       	 dispatcher.forward(request, response);
       	 return;
        }
        try {
 			userskills = DBUtils.skillsPage(conn);
         }catch (SQLException e) {
 			e.printStackTrace(); 
			return;
		}
        request.setAttribute("user", loggedinUser);
        request.setAttribute("userskills", userskills);
        RequestDispatcher dispatcher = request.getServletContext()
                .getRequestDispatcher("/WEB-INF/views/skillsPageView.jsp");
        dispatcher.forward(request, response);
 
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
 
}