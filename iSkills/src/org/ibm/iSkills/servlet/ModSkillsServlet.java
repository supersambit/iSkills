package org.ibm.iSkills.servlet;
 
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
import org.ibm.iSkills.bean.*;
import org.ibm.iSkills.utils.DBUtils;
import org.ibm.iSkills.utils.MyUtils;
 
@WebServlet(urlPatterns = { "/modSkills" })
public class ModSkillsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public ModSkillsServlet() {
        super();
    }
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	HttpSession session = request.getSession();
    	Connection conn = MyUtils.getStoredConnection(request);
    	UserAccount user= MyUtils.getLoggedinUser(session);
    	UserAccount uskills= new UserAccount();
    	if(user==null) {
           	response.sendRedirect(request.getContextPath() + "/login");
           	return;
    	}
    	
    	String its1p=	request.getParameter("its1p");
    		int ts1p=	Integer.parseInt(its1p);
    	
    	String its2p=	request.getParameter("its2p");
    		int ts2p=	Integer.parseInt(its2p);

    	String its3p=	request.getParameter("its3p");
    		int ts3p=	Integer.parseInt(its3p);
    
    	String its4p=	request.getParameter("its4p");
    		int ts4p=	Integer.parseInt(its4p);
    	
    	String its5p=	request.getParameter("its5p");
    		int ts5p=	Integer.parseInt(its5p);
    	
    	String	imet1p	=	request.getParameter("imet1p");
    		int met1p=	Integer.parseInt(imet1p);
    	
    	String	imet2p	=	request.getParameter("imet2p");
    		int met2p=	Integer.parseInt(imet2p);

    	String	imet3p	=	request.getParameter("imet3p");
    		int met3p=	Integer.parseInt(imet3p);
   
    	String	imet4p	=	request.getParameter("imet4p");
    		int met4p=	Integer.parseInt(imet4p);
    	
    	String	imet5p	=	request.getParameter("imet5p");
    		int met5p=	Integer.parseInt(imet5p);
    	
    	String	imet6p	=	request.getParameter("imet6p");
    		int met6p=	Integer.parseInt(imet6p);
    	
    	String	imet7p	=	request.getParameter("imet7p");
    		int met7p=	Integer.parseInt(imet7p);
    	
    	String	imet8p	=	request.getParameter("imet8p");
    		int met8p=	Integer.parseInt(imet8p);
    	
    	String	imet9p	=	request.getParameter("imet9p");
    		int met9p=	Integer.parseInt(imet9p);
    	
    	String	imet10p	=	request.getParameter("imet10p");
    		int met10p=	Integer.parseInt(imet10p);

    	String hq1 = request.getParameter("ihq1");
    	String hq2 = request.getParameter("ihq2");
    	String hq3 = request.getParameter("ihq3");
    	String inst1 = request.getParameter("inst1i");
    	String inst2 = request.getParameter("inst2i");
    	String inst3 = request.getParameter("inst3i");
    	
    	String cm1= request.getParameter("icm1");
    	String cm2= request.getParameter("icm2");
    	String cm3= request.getParameter("icm3");
    	String cm4= request.getParameter("icm4");
    	String cm5= request.getParameter("icm5");
    	
    	String cy1= request.getParameter("icy1");
    	String cy2= request.getParameter("icy2");
    	String cy3= request.getParameter("icy3");
    	String cy4= request.getParameter("icy4");
    	String cy5= request.getParameter("icy5");
    	
    	String ay1= request.getParameter("iay1");
    	String ay2= request.getParameter("iay2");
    	String ay3= request.getParameter("iay3");
    	String ay4= request.getParameter("iay4");
    	String ay5= request.getParameter("iay5");
    	String ay6= request.getParameter("iay6");
    	
    	uskills.setHq1(hq1);
    	uskills.setHq2(hq2);
    	uskills.setHq3(hq3);
    	uskills.setInst1(inst1);
    	uskills.setInst2(inst2);
    	uskills.setInst3(inst3);
    	uskills.setTs1(request.getParameter("its1"));
		uskills.setTs2(request.getParameter("its2"));
		uskills.setTs3(request.getParameter("its3"));
		uskills.setTs4(request.getParameter("its4"));
		uskills.setTs5(request.getParameter("its5"));
		uskills.setMet1(request.getParameter("imet1"));
		uskills.setMet2(request.getParameter("imet2"));
		uskills.setMet3(request.getParameter("imet3"));
		uskills.setMet4(request.getParameter("imet4"));
		uskills.setMet5(request.getParameter("imet5"));
		uskills.setMet6(request.getParameter("imet6"));
		uskills.setMet7(request.getParameter("imet7"));
		uskills.setMet8(request.getParameter("imet8"));
		uskills.setMet9(request.getParameter("imet9"));
		uskills.setMet10(request.getParameter("imet10"));
		uskills.setC1(request.getParameter("ic1"));
		uskills.setC2(request.getParameter("ic2"));
		uskills.setC3(request.getParameter("ic3"));
		uskills.setC4(request.getParameter("ic4"));
		uskills.setC5(request.getParameter("ic5"));
		uskills.setC1i(request.getParameter("ic1i"));
		uskills.setC2i(request.getParameter("ic2i"));
		uskills.setC3i(request.getParameter("ic3i"));
		uskills.setC4i(request.getParameter("ic4i"));
		uskills.setC5i(request.getParameter("ic5i"));
		uskills.setAr1(request.getParameter("iar1"));
		uskills.setAr2(request.getParameter("iar2"));
		uskills.setAr3(request.getParameter("iar3"));
		uskills.setAr4(request.getParameter("iar4"));
		uskills.setAr5(request.getParameter("iar5"));
		uskills.setAr6(request.getParameter("iar6"));
		uskills.setTs1p(ts1p);
	    uskills.setTs2p(ts2p);
	    uskills.setTs3p(ts3p);
	    uskills.setTs4p(ts4p);
	    uskills.setTs5p(ts5p);
	    uskills.setMet1p(met1p);
	    uskills.setMet2p(met2p);
	    uskills.setMet3p(met3p);
	    uskills.setMet4p(met4p);
	    uskills.setMet5p(met5p);
	    uskills.setMet6p(met6p);
	    uskills.setMet7p(met7p);
	    uskills.setMet8p(met8p);
	    uskills.setMet9p(met9p);
	    uskills.setMet10p(met10p);
	    uskills.setCm1(cm1);
	    uskills.setCm2(cm2);
	    uskills.setCm3(cm3);
	    uskills.setCm4(cm4);
	    uskills.setCm5(cm5);
	    uskills.setCy1(cy1);
	    uskills.setCy2(cy2);
	    uskills.setCy3(cy3);
	    uskills.setCy4(cy4);
	    uskills.setCy5(cy5);
	    uskills.setAy1(ay1);
	    uskills.setAy2(ay2);
	    uskills.setAy3(ay3);
	    uskills.setAy4(ay4);
	    uskills.setAy5(ay5);
	    uskills.setAy6(ay6);
	    uskills.setEid(user.getEid());

    	    	try {
    			 DBUtils.modifySkills(conn, uskills);
    			 DBUtils.updateQualifications(conn, uskills);
    			} catch (SQLException e) {
    				e.printStackTrace();
    			}
    	    	response.sendRedirect(request.getContextPath() + "/skills");    	  
   	}
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	doGet(request, response);
    }
 
}