package org.ibm.iSkills.utils;
 
import java.sql.Connection;
 
import javax.servlet.ServletRequest;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
import org.ibm.iSkills.bean.UserAccount;
 
public class MyUtils {
 
    public static final String ATT_NAME_CONNECTION = "ATTRIBUTE_FOR_CONNECTION";
 
    private static final String ATT_NAME_USER_NAME = "ATTRIBUTE_FOR_STORE_USER_NAME_IN_COOKIE";
    
  //  private static final String ATT_NAME_PASS = "ATTRIBUTE_FOR_STORE_PASSWORD_IN_COOKIE";
 
    // Store Connection in request attribute.
    // (Information stored only exist during requests)
    public static void storeConnection(ServletRequest request, Connection conn) {
        request.setAttribute(ATT_NAME_CONNECTION, conn);
    }
 
    // Get the Connection object has been stored in attribute of the request.
    public static Connection getStoredConnection(ServletRequest request) {
        Connection conn = (Connection) request.getAttribute(ATT_NAME_CONNECTION);
        return conn;
    }
 
    // Store user info in Session.
    public static void storeLoggedinUser(HttpSession session, UserAccount loggedinUser) {
        // On the JSP can access via ${loggedinUser}
        session.setAttribute("loggedinUser", loggedinUser);
    }
 
    // Get the user information stored in the session.
    public static UserAccount getLoggedinUser(HttpSession session) {
        UserAccount loggedinUser = (UserAccount) session.getAttribute("loggedinUser");
        return loggedinUser;
    }
 
    // Store info in Cookie
    public static void storeUserCookie(HttpServletResponse response, UserAccount user) {
        System.out.println("Store user cookie");
        Cookie cookieUserName = new Cookie(ATT_NAME_USER_NAME, user.getEid());
        //Cookie cookiePassword = new Cookie(ATT_NAME_PASS, user.password(user.getEid(), user.getDoj()));
        // 1 month (Converted to seconds)
        cookieUserName.setMaxAge(4 * 7 * 24 * 60 * 60);
        response.addCookie(cookieUserName);
    }
 
    public static String getUserNameInCookie(HttpServletRequest request) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (ATT_NAME_USER_NAME.equals(cookie.getName())) {
                    return cookie.getValue();
                }
            }
        }
        return null;
    }
 
    // Delete cookie.
    public static void deleteUserCookie(HttpServletResponse response) {
        Cookie cookieUserName = new Cookie(ATT_NAME_USER_NAME, null);
        // 0 seconds (This cookie will expire immediately)
        cookieUserName.setMaxAge(0);
        response.addCookie(cookieUserName);
    }
 
}