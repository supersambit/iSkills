package org.ibm.iSkills.servlet;
 
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
import org.ibm.iSkills.bean.UserAccount;
import org.ibm.iSkills.utils.DBUtils;
import org.ibm.iSkills.utils.MyUtils;
 
@WebServlet(urlPatterns = { "/login" })
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public LoginServlet() {
        super();
    }
 
    // Show Login page.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        RequestDispatcher dispatcher //
                = this.getServletContext().getRequestDispatcher("/WEB-INF/views/loginView.jsp");
 
        dispatcher.forward(request, response);
 
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String uname = request.getParameter("uname");
        String password = request.getParameter("password");
        String rememberMeStr = request.getParameter("rememberMe");
        boolean remember = "Y".equals(rememberMeStr);
 
        UserAccount user = null;
        boolean hasError = false;
        String errorString = null;
 
        if (uname == null || password == null || uname.length() == 0 || password.length() == 0) {
            hasError = true;
            errorString = "User iD and password required!";
        } else {
            Connection conn = MyUtils.getStoredConnection(request);
            try {
                // Find the user in the DB.
                user = DBUtils.findUser(conn, uname);
                if(user==null) {
                	 hasError = true;
                     errorString = "Employee ID not found in the Database! Please contact admin.";
                }
                else {
                String eid= user.getEid();
                Date doj= user.getDoj();
                String p= user.password(eid, doj);
                if (!(p.equals(password))) {
                	  hasError = true;
                      errorString ="User Name or Passsword invalid. Refer to instructions & Please Enter your credentials correctly!";
                  }
                }
            } catch (SQLException e) {
                e.printStackTrace();
                hasError = true;
                errorString = e.getMessage();
            }
            
        }
        
        if (hasError) {
            // Store information in request attribute, before forward.
            request.setAttribute("errorString", errorString);
 
            // Forward to login
            RequestDispatcher dispatcher //
                    = this.getServletContext().getRequestDispatcher("/WEB-INF/views/loginView.jsp");
 
            dispatcher.forward(request, response);
        }
        // If no error
        // Store user information in Session
        // And redirect to home page.
        else {
            HttpSession session = request.getSession();
            MyUtils.storeLoggedinUser(session, user);
 
            // If user checked "Remember me".
            if (remember) {
                MyUtils.storeUserCookie(response, user);
            }
            // Else delete cookie.
            else {
                MyUtils.deleteUserCookie(response);
            }
 
           
            	response.sendRedirect(request.getContextPath() + "/home");
           
        }
    }
 
}