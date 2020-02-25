package org.ibm.iSkills.utils;
 
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.ibm.iSkills.bean.*;

 
public class DBUtils {
    
    public static UserAccount findUser(Connection conn, String eid) throws SQLException {
     
        String sql = "Select a.* from users a where a.eid = ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, eid);
        ResultSet rs = pstm.executeQuery();
        UserAccount user = new UserAccount();
        
        if (rs.next()) {
        String role = rs.getString("role");
    	String imid = rs.getString("imid");
    	Date doj = rs.getDate("doj");   
    	String name = rs.getString("name");
    	String pm = rs.getString("pm");
    	String pem = rs.getString("pem");
    	float exp = rs.getFloat("exp");
    	float texp = rs.getFloat("texp");
    	float iexp = rs.getFloat("iexp");
    	Date metstart = rs.getDate("metstart");
            
            user.setRole(role);
            user.setEid(eid);
            user.setImid(imid);
            user.setDoj(doj);
            user.setName(name);
            user.setPm(pm);
            user.setPem(pem);
            user.setExp(exp);
            user.setTexp(texp);
            user.setIexp(iexp);
            user.setMetstart(metstart);
            return user;  
        }
        return null;
    }
    
    public static UserAccount findSkills(Connection conn, String eid) throws SQLException {
    	String sql = "Select a.* from skills a where a.eid =?; ";
    	PreparedStatement pstm = conn.prepareStatement(sql);
    	pstm.setString(1, eid);
    	ResultSet rs = pstm.executeQuery();
    	UserAccount skills= new UserAccount();
    	if(rs.next()) {
		    String ts1= rs.getString("ts1");
		    String ts2= rs.getString("ts2");
		    String ts3= rs.getString("ts3");
		    String ts4= rs.getString("ts4");
		    String ts5= rs.getString("ts5");
		    String met1= rs.getString("met1");
		    String met2= rs.getString("met2");
		    String met3= rs.getString("met3");
		    String met4= rs.getString("met4");
		    String met5= rs.getString("met5");
		    String met6= rs.getString("met6");
		    String met7= rs.getString("met7");
		    String met8= rs.getString("met8");
		    String met9= rs.getString("met9");
		    String met10= rs.getString("met10");
		    String c1= rs.getString("c1");
		    String c2= rs.getString("c2");
		    String c3= rs.getString("c3");
		    String c4= rs.getString("c4");
		    String c5= rs.getString("c5");
		    int ts1p= rs.getInt("ts1p");
		    int ts2p= rs.getInt("ts2p");
		    int ts3p= rs.getInt("ts3p");
		    int ts4p= rs.getInt("ts4p");
		    int ts5p= rs.getInt("ts5p");
		    int met1p= rs.getInt("met1p");
		    int met2p= rs.getInt("met2p");
		    int met3p= rs.getInt("met3p");
		    int met4p= rs.getInt("met4p");
		    int met5p= rs.getInt("met5p");
		    int met6p= rs.getInt("met6p");
		    int met7p= rs.getInt("met7p");
		    int met8p= rs.getInt("met8p");
		    int met9p= rs.getInt("met9p");
		    int met10p= rs.getInt("met10p");
		    String c1i= rs.getString("c1i");
		    String c2i= rs.getString("c2i");
		    String c3i= rs.getString("c3i");
		    String c4i= rs.getString("c4i");
		    String c5i= rs.getString("c5i");
		    String ar1= rs.getString("ar1");
		    String ar2= rs.getString("ar2");
		    String ar3= rs.getString("ar3");
		    String ar4= rs.getString("ar4");
		    String ar5= rs.getString("ar5");
		    String ar6= rs.getString("ar6");
		    String cy1= rs.getString("cy1");
		    String cy2= rs.getString("cy2");
		    String cy3= rs.getString("cy3");
		    String cy4= rs.getString("cy4");
		    String cy5= rs.getString("cy5");
		    String cm1= rs.getString("cm1");
		    String cm2= rs.getString("cm2");
		    String cm3= rs.getString("cm3");
		    String cm4= rs.getString("cm4");
		    String cm5= rs.getString("cm5");
		    String ay1= rs.getString("ay1");
		    String ay2= rs.getString("ay2");
		    String ay3= rs.getString("ay3");
		    String ay4= rs.getString("ay4");
		    String ay5= rs.getString("ay5");
		    String ay6= rs.getString("ay6");
    			skills.setEid(eid);
			    skills.setTs1(ts1);
			    skills.setTs2(ts2);
			    skills.setTs3(ts3);
			    skills.setTs4(ts4);
			    skills.setTs5(ts5);
			    skills.setMet1(met1);
			    skills.setMet2(met2);
			    skills.setMet3(met3);
			    skills.setMet4(met4);
			    skills.setMet5(met5);
			    skills.setMet6(met6);
			    skills.setMet7(met7);
			    skills.setMet8(met8);
			    skills.setMet9(met9);
			    skills.setMet10(met10);
			    skills.setC1(c1);
			    skills.setC2(c2);
			    skills.setC3(c3);
			    skills.setC4(c4);
			    skills.setC5(c5);
			    skills.setTs1p(ts1p);
			    skills.setTs2p(ts2p);
			    skills.setTs3p(ts3p);
			    skills.setTs4p(ts4p);
			    skills.setTs5p(ts5p);
			    skills.setMet1p(met1p);
			    skills.setMet2p(met2p);
			    skills.setMet3p(met3p);
			    skills.setMet4p(met4p);
			    skills.setMet5p(met5p);
			    skills.setMet6p(met6p);
			    skills.setMet7p(met7p);
			    skills.setMet8p(met8p);
			    skills.setMet9p(met9p);
			    skills.setMet10p(met10p);
			    skills.setC1i(c1i);
			    skills.setC2i(c2i);
			    skills.setC3i(c3i);
			    skills.setC4i(c4i);
			    skills.setC5i(c5i);
			    skills.setAr1(ar1);
			    skills.setAr2(ar2);
			    skills.setAr3(ar3);
			    skills.setAr4(ar4);
			    skills.setAr5(ar5);
			    skills.setAr6(ar6);
			    skills.setCy1(cy1);
			    skills.setCy2(cy2);
			    skills.setCy3(cy3);
			    skills.setCy4(cy4);
			    skills.setCy5(cy5);
			    skills.setAy1(ay1);
			    skills.setAy2(ay2);
			    skills.setAy3(ay3);
			    skills.setAy4(ay4);
			    skills.setAy5(ay5);
			    skills.setAy6(ay6);
			    skills.setCm1(cm1);
			    skills.setCm2(cm2);
			    skills.setCm3(cm3);
			    skills.setCm4(cm4);
			    skills.setCm5(cm5);

    		return skills;
    	}
    	return null;
    }
    
    public static void modifySkills(Connection conn, UserAccount userskills) throws SQLException{
    	String sql= "Update skills set ts1 =?, ts2=?, ts3=?, ts4=?, ts5=?, met1=?, met2=?, met3=?, met4=?, met5=?, met6=?, met7=?, met8=?, met9=?, met10=?,"+
    			" c1=?, c2=?, c3=?, c4=?, c5=?, ts1p=?, ts2p=?, ts3p=?, ts4p=?, ts5p=?, met1p=?, met2p=?, met3p=?, met4p=?, met5p=?, met6p=?, met7p=?, met8p=?, met9p=?, met10p=?,"+
    			" c1i=?, c2i=?, c3i=?, c4i=?, c5i=?, ar1=?, ar2=?, ar3=?, ar4=?, ar5=?, ar6=?, cy1=?, cy2=?, cy3=?, cy4=?, cy5=?, ay1=?, ay2=?, ay3=?, ay4=?, ay5=?, ay6=?, cm1=?, cm2=?, cm3=?, cm4=?, cm5=? where eid = ?";
    	
    	PreparedStatement pstm = conn.prepareStatement(sql);
    	pstm.setString(1,userskills.getTs1());
    	pstm.setString(2,userskills.getTs2());
    	pstm.setString(3,userskills.getTs3());
    	pstm.setString(4,userskills.getTs4());
    	pstm.setString(5,userskills.getTs5());
    	pstm.setString(6,userskills.getMet1());
    	pstm.setString(7,userskills.getMet2());
    	pstm.setString(8,userskills.getMet3());
    	pstm.setString(9,userskills.getMet4());
    	pstm.setString(10,userskills.getMet5());
    	pstm.setString(11,userskills.getMet6());
    	pstm.setString(12,userskills.getMet7());
    	pstm.setString(13,userskills.getMet8());
    	pstm.setString(14,userskills.getMet9());
    	pstm.setString(15,userskills.getMet10());
    	pstm.setString(16,userskills.getC1());
    	pstm.setString(17,userskills.getC2());
    	pstm.setString(18,userskills.getC3());
    	pstm.setString(19,userskills.getC4());
    	pstm.setString(20,userskills.getC5());
    	pstm.setInt(21,userskills.getTs1p());
    	pstm.setInt(22,userskills.getTs2p());
    	pstm.setInt(23,userskills.getTs3p());
    	pstm.setInt(24,userskills.getTs4p());
    	pstm.setInt(25,userskills.getTs5p());
    	pstm.setInt(26,userskills.getMet1p());
    	pstm.setInt(27,userskills.getMet2p());
    	pstm.setInt(28,userskills.getMet3p());
    	pstm.setInt(29,userskills.getMet4p());
    	pstm.setInt(30,userskills.getMet5p());
    	pstm.setInt(31,userskills.getMet6p());
    	pstm.setInt(32,userskills.getMet7p());
    	pstm.setInt(33,userskills.getMet8p());
    	pstm.setInt(34,userskills.getMet9p());
    	pstm.setInt(35,userskills.getMet10p());
    	pstm.setString(36,userskills.getC1i());
    	pstm.setString(37,userskills.getC2i());
    	pstm.setString(38,userskills.getC3i());
    	pstm.setString(39,userskills.getC4i());
    	pstm.setString(40,userskills.getC5i());
    	pstm.setString(41,userskills.getAr1());
    	pstm.setString(42,userskills.getAr2());
    	pstm.setString(43,userskills.getAr3());
    	pstm.setString(44,userskills.getAr4());
    	pstm.setString(45,userskills.getAr5());
    	pstm.setString(46,userskills.getAr6());
    	pstm.setString(47,userskills.getCy1());
    	pstm.setString(48,userskills.getCy2());
    	pstm.setString(49,userskills.getCy3());
    	pstm.setString(50,userskills.getCy4());
    	pstm.setString(51,userskills.getCy5());
    	pstm.setString(52,userskills.getAy1());
    	pstm.setString(53,userskills.getAy2());
    	pstm.setString(54,userskills.getAy3());
    	pstm.setString(55,userskills.getAy4());
    	pstm.setString(56,userskills.getAy5());
    	pstm.setString(57,userskills.getAy6());
    	pstm.setString(58,userskills.getCm1());
    	pstm.setString(59,userskills.getCm2());
    	pstm.setString(60,userskills.getCm3());
    	pstm.setString(61,userskills.getCm4());
    	pstm.setString(62,userskills.getCm5());
    	pstm.setString(63, userskills.getEid());
    	pstm.executeUpdate();
    }

	public static void updateExp(Connection conn, UserAccount uexp) throws SQLException {            
    		String sql = "Update users set exp= ?, texp= ?, iexp= ?  where eid = ?;";
    		PreparedStatement pstm = conn.prepareStatement(sql);
    		pstm.setFloat(1, uexp.getExp());
    		pstm.setFloat(2, uexp.getTexp());
    		pstm.setFloat(3, uexp.getIexp());
    		pstm.setString(4, uexp.getEid());
        	pstm.executeUpdate();
    	
    }
	
/*	 public static void insertUser(Connection conn, UserAccount user) throws SQLException {
	        String sql = "Insert into user(role, eid, name, imid, pm, pem, doj, metstart) values(?,?,?,?,?,?,?,?);";
	        String sql1 = "Insert into skills(eid) values(?);";
	        
	        PreparedStatement pstm = conn.prepareStatement(sql);
	        PreparedStatement stmt = conn.prepareStatement(sql1); 
	        
	        stmt.setString(1, user.getEid());
	        
	        pstm.setString(1, user.getRole());
	        pstm.setString(2, user.getEid());
	        pstm.setString(3, user.getName());
	        pstm.setString(4, user.getImid());
	        pstm.setString(5, user.getPm());
	        pstm.setString(6, user.getPem());
	        pstm.setDate(7, user.getDoj());
	        pstm.setDate(8, user.getMetstart());
	       
	        pstm.executeUpdate();
	        stmt.executeUpdate();
	    }
	*/	
	 public static UserAccount findQualifications(Connection conn, String eid) throws SQLException {
	     
	        String sql = "Select a.* from qualifications a where a.eid = ?";
	 
	        PreparedStatement pstm = conn.prepareStatement(sql);
	        pstm.setString(1, eid);
	        ResultSet rs = pstm.executeQuery();
	        UserAccount q = new UserAccount();
	        
	        if (rs.next()) {
	        String hq1 = rs.getString("hq1");
	    	String inst1 = rs.getString("inst1");
	    	String hq2 = rs.getString("hq2");
		    String inst2 = rs.getString("inst2");
		    String hq3 = rs.getString("hq3");
			String inst3 = rs.getString("inst3");
	            
	           q.setHq1(hq1);
	           q.setInst1(inst1);
	           q.setHq2(hq2);
	           q.setInst2(inst2);
	           q.setHq3(hq3);
	           q.setInst3(inst3);
	        }
	        return q;
	    }
	 
	 public static void updateQualifications(Connection conn, UserAccount user) throws SQLException {
		 String sql = "Update qualifications set hq1= ?, inst1= ?, hq2= ?, inst2= ?, hq3= ?, inst3= ?  where eid = ?;";
 		PreparedStatement pstm = conn.prepareStatement(sql);
 		pstm.setString(1, user.getHq1());
 		pstm.setString(2, user.getInst1());
 		pstm.setString(3, user.getHq2());
 		pstm.setString(4, user.getInst2());
 		pstm.setString(5, user.getHq3());
 		pstm.setString(6, user.getInst3());
 		pstm.setString(7, user.getEid());
     	pstm.executeUpdate();
	 }
	 
	 public static ArrayList<UserAccount> skillsPage(Connection conn) throws SQLException {
    	 String sql1 = "Select users.*, skills.* from users, skills where users.eid = skills.eid ;";
    	    PreparedStatement pstm = conn.prepareStatement(sql1);
    	    ResultSet rs = pstm.executeQuery();
    	    ArrayList<UserAccount> list= new ArrayList<>();
    	    
    	    while(rs.next())
    	    {
    	    	String name= rs.getString("name");
    	    	String eid= rs.getString("eid");
    	    	String pm= rs.getString("pm");
    	    	String pem= rs.getString("pem");
    	    	String ts1= rs.getString("ts1");
    			String ts2= rs.getString("ts2");
    			String ts3= rs.getString("ts3");
    			String ts4= rs.getString("ts4");
    			String ts5= rs.getString("ts5");
    			String met1= rs.getString("met1");
    			String met2= rs.getString("met2");
    			String met3= rs.getString("met3");
    			String met4= rs.getString("met4");
    			String met5= rs.getString("met5");
    			String c1= rs.getString("c1");
    			String c2= rs.getString("c2");
    			String c3= rs.getString("c3");
    			String ar1= rs.getString("ar1");
    			String ar2= rs.getString("ar2");
    	        
    	        UserAccount user= new UserAccount();
    	           user.setName(name);
    	           user.setEid(eid);
	    	       user.setPm(pm);
	    	       user.setPem(pem);
	    	       user.setTs1(ts1);
				   user.setTs2(ts2);
				   user.setTs3(ts3);
				   user.setTs4(ts4);
				   user.setTs5(ts5);
				   user.setMet1(met1);
				   user.setMet2(met2);
				   user.setMet3(met3);
				   user.setMet4(met4);
				   user.setMet5(met5);
				   user.setC1(c1);
				   user.setC2(c2);
				   user.setC3(c3);
				   user.setAr1(ar1);
				   user.setAr2(ar2);
				   
	    	       list.add(user);
    	    }
    	return list;
    }

	public static ArrayList<UserAccount> skillSearch(Connection conn, String x) throws SQLException {
		
		String sql = "Select users.*, skills.* from users, skills where users.eid = skills.eid and name like \"%"+x+"%\"  ;";
		 
	    PreparedStatement pstm = conn.prepareStatement(sql);
	 
	        ResultSet rs = pstm.executeQuery();
	        ArrayList<UserAccount> list= new ArrayList<>();
	        
	        while(rs.next())
    	    {
    	    	String name= rs.getString("name");
    	    	String eid= rs.getString("eid");
    	    	String pm= rs.getString("pm");
    	    	String pem= rs.getString("pem");
    	    	String ts1= rs.getString("ts1");
    			String ts2= rs.getString("ts2");
    			String ts3= rs.getString("ts3");
    			String ts4= rs.getString("ts4");
    			String ts5= rs.getString("ts5");
    			String met1= rs.getString("met1");
    			String met2= rs.getString("met2");
    			String met3= rs.getString("met3");
    			String met4= rs.getString("met4");
    			String met5= rs.getString("met5");
    			String c1= rs.getString("c1");
    			String c2= rs.getString("c2");
    			String c3= rs.getString("c3");
    			String ar1= rs.getString("ar1");
    			String ar2= rs.getString("ar2");
    	        
    	        UserAccount user= new UserAccount();
    	           user.setName(name);
    	           user.setEid(eid);
	    	       user.setPm(pm);
	    	       user.setPem(pem);
	    	       user.setTs1(ts1);
				   user.setTs2(ts2);
				   user.setTs3(ts3);
				   user.setTs4(ts4);
				   user.setTs5(ts5);
				   user.setMet1(met1);
				   user.setMet2(met2);
				   user.setMet3(met3);
				   user.setMet4(met4);
				   user.setMet5(met5);
				   user.setC1(c1);
				   user.setC2(c2);
				   user.setC3(c3);
				   user.setAr1(ar1);
				   user.setAr2(ar2);
				   
	    	       list.add(user);
	 
    	    }
	        if(list.isEmpty())
	        {
	        	 return null;
	        }
	        return list;
    }

	public static void updateUser(Connection conn, UserAccount uskills) throws SQLException{
		 String sql = "Update users set name= ?, pm= ?, pem= ?  where eid = ?;";
	 		PreparedStatement pstm = conn.prepareStatement(sql);
	 		pstm.setString(1, uskills.getName());
	 		pstm.setString(2, uskills.getPm());
	 		pstm.setString(3, uskills.getPem());
	 		pstm.setString(4, uskills.getEid());
	     	pstm.executeUpdate();
	}
}


    
/*    
        public static ArrayList<UserAccount> UserGrid(Connection conn) throws SQLException {
        	String sql = "Select * from users;";
        	 PreparedStatement pstm = conn.prepareStatement(sql);
        	 ResultSet rs = pstm.executeQuery();
        	 ArrayList<UserAccount> userlist= new ArrayList<>();
        	 
        	 while (rs.next()) {
        		 String imid = rs.getString("imid");
                 String eid = rs.getString("eid");
                 String fname = rs.getString("fname");
                 String lname = rs.getString("lname");
                 String pm = rs.getString("pm");
                 String pem = rs.getString("pem");
                 String loc = rs.getString("loc");
                 String restype = rs.getString("restype");
                 String estatus = rs.getString("estatus");
                 String geid = rs.getString("geid");
                 String metnet = rs.getString("metnet");
                 String metmail = rs.getString("metmail");
                 String nid = rs.getString("nid");
                 String area = rs.getString("area");
                 String exp = rs.getString("exp");
                 String texp = rs.getString("texp");
                 String iexp = rs.getString("iexp");
                 String contact = rs.getString("contact");
                 String ven = rs.getString("ven");
                 Date metstart = rs.getDate("metstart");
                 Date metend = rs.getDate("metend");
                 Date istart = rs.getDate("istart");


                    UserAccount user = new UserAccount();
                    user.setImid(imid);
                    user.setEid(eid);
                    user.setFname(fname);
                    user.setLname(lname);
                    user.setPm(pm);
                    user.setPem(pem);
                    user.setLoc(loc);
                    user.setRestype(restype);
                    user.setEstatus(estatus);
                    user.setGeid(geid);
                    user.setMetnet(metnet);
                    user.setMetmail(metmail);
                    user.setNid(nid);
                    user.setArea(area);
                    user.setExp(exp);
                    user.setTexp(texp);
                    user.setIexp(iexp);
                    user.setContact(contact);
                    user.setVen(ven);
                    user.setMetstart(metstart);
                    user.setMetend(metend);
                    user.setIstart(istart);

                    userlist.add(user);
        	 }
        	 return userlist;
        	
    	}

        public static ArrayList<UserAccount> UserGrid(Connection conn, String x) throws SQLException {
     
        String sql = "Select * from users a where eid like '%"+x+"%' OR fname like '%"+x+"%' OR lname like '%"+x+"%';";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        ResultSet rs = pstm.executeQuery();
        ArrayList<UserAccount> records = new ArrayList<>();
 
        while (rs.next()) {
         String eid = rs.getString("eid");
         String imid = rs.getString("imid");
         String fname = rs.getString("fname");
         String lname = rs.getString("lname");
         String pm = rs.getString("pm");
         String pem = rs.getString("pem");
         String loc = rs.getString("loc");
         String restype = rs.getString("restype");
         String estatus = rs.getString("estatus");
         String geid = rs.getString("geid");
         String metnet = rs.getString("metnet");
         String metmail = rs.getString("metmail");
         String nid = rs.getString("nid");
         String area = rs.getString("area");
         String exp = rs.getString("exp");
         String texp = rs.getString("texp");
         String iexp = rs.getString("iexp");
         String contact = rs.getString("contact");
         String ven = rs.getString("ven");
         Date metstart = rs.getDate("metstart");
         Date metend = rs.getDate("metend");
         Date istart = rs.getDate("istart");


            UserAccount user = new UserAccount();
            user.setEid(eid);
            user.setImid(imid);
            user.setFname(fname);
            user.setLname(lname);
            user.setPm(pm);
            user.setPem(pem);
            user.setLoc(loc);
            user.setRestype(restype);
            user.setEstatus(estatus);
            user.setGeid(geid);
            user.setMetnet(metnet);
            user.setMetmail(metmail);
            user.setNid(nid);
            user.setArea(area);
            user.setExp(exp);
            user.setTexp(texp);
            user.setIexp(iexp);
            user.setContact(contact);
            user.setVen(ven);
            user.setMetstart(metstart);
            user.setMetend(metend);
            user.setIstart(istart);

            records.add(user);
            
        }
        return records;
    }
 
    
        
    public static ArrayList<UserAccount> searchUserSkills(Connection conn, String x) throws SQLException {
    
    String sql = "Select a.* from skills a where a.eid like '%"+x+"%' OR a.name like '%"+x+"%' ;";
 
    PreparedStatement pstm = conn.prepareStatement(sql);
 
        ResultSet rs = pstm.executeQuery();
        ArrayList<UserAccount> list= new ArrayList<>();
        
        while (rs.next()) {
        String name= rs.getString("name");
        String eid= rs.getString("eid");
        String rating= rs.getString("rating");
        String ps1= rs.getString("ps1");
        String ps2= rs.getString("ps2");
        String ps3= rs.getString("ps3");
        String ps4= rs.getString("ps4");
        String ps5= rs.getString("ps5");
        String ss1= rs.getString("ss1");
        String ss2= rs.getString("ss2");
        String ss3= rs.getString("ss3");
        String c1= rs.getString("c1");
        String c2= rs.getString("c2");
        String met1= rs.getString("met1");
        String met2= rs.getString("met2");
        String met3= rs.getString("met3");
        String met4= rs.getString("met4");
        String met5= rs.getString("met5");
        String met6= rs.getString("met6");
        String met7= rs.getString("met7");
        String met8= rs.getString("met8");
        String met9= rs.getString("met9");
        String met10= rs.getString("met10");
        
        UserAccount userskills= new UserAccount();
        userskills.setName(name);
        userskills.setEid(eid);
        userskills.setRating(rating);
        userskills.setPs1(ps1);
        userskills.setPs2(ps2);
        userskills.setPs3(ps3);
        userskills.setPs4(ps4);
        userskills.setPs5(ps5);
        userskills.setSs1(ss1);
        userskills.setSs2(ss2);
        userskills.setSs3(ss3);
        userskills.setC1(c1);
        userskills.setC2(c2);
        userskills.setMet1(met1);
        userskills.setMet2(met2);
        userskills.setMet3(met3);
        userskills.setMet4(met4);
        userskills.setMet5(met5);
        userskills.setMet6(met6);
        userskills.setMet7(met7);
        userskills.setMet8(met8);
        userskills.setMet9(met9);
        userskills.setMet10(met10);
        
        list.add(userskills); 
        }
        return list;
    }
    
    public static UserAccount findUserSkills(Connection conn, String eid) throws SQLException {
        
        String sql = "Select * from skills where eid=? ;";
     
        PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, eid);
     
            ResultSet rs = pstm.executeQuery();
            UserAccount userskills= new UserAccount();
            
            while (rs.next()) {
		            String name= rs.getString("name");
		            String rating= rs.getString("rating");
		            String ps1= rs.getString("ps1");
		            String ps2= rs.getString("ps2");
		            String ps3= rs.getString("ps3");
		            String ps4= rs.getString("ps4");
		            String ps5= rs.getString("ps5");
		            String ss1= rs.getString("ss1");
		            String ss2= rs.getString("ss2");
		            String ss3= rs.getString("ss3");
		            String c1= rs.getString("c1");
		            String c2= rs.getString("c2");
		            String met1= rs.getString("met1");
		            String met2= rs.getString("met2");
		            String met3= rs.getString("met3");
		            String met4= rs.getString("met4");
		            String met5= rs.getString("met5");
		            String met6= rs.getString("met6");
		            String met7= rs.getString("met7");
		            String met8= rs.getString("met8");
		            String met9= rs.getString("met9");
		            String met10= rs.getString("met10");
		            
		            userskills.setName(name);
		            userskills.setEid(eid);
		            userskills.setRating(rating);
		            userskills.setPs1(ps1);
		            userskills.setPs2(ps2);
		            userskills.setPs3(ps3);
		            userskills.setPs4(ps4);
		            userskills.setPs5(ps5);
		            userskills.setSs1(ss1);
		            userskills.setSs2(ss2);
		            userskills.setSs3(ss3);
		            userskills.setC1(c1);
		            userskills.setC2(c2);
		            userskills.setMet1(met1);
		            userskills.setMet2(met2);
		            userskills.setMet3(met3);
		            userskills.setMet4(met4);
		            userskills.setMet5(met5);
		            userskills.setMet6(met6);
		            userskills.setMet7(met7);
		            userskills.setMet8(met8);
		            userskills.setMet9(met9);
		            userskills.setMet10(met10);
            }
            return userskills;
        } 
      
    
    public static void rate(Connection conn, String eid, String rating) throws SQLException {
        
    	
    		String sql = "Update skills set rating=?  where eid = ? ;";
    		PreparedStatement pstm = conn.prepareStatement(sql);
    		pstm.setString(1, rating);
    		pstm.setString(2, eid);
        	pstm.executeUpdate();
    }
    
   
 
    public static void deleteUser(Connection conn, String eid, String imid) throws SQLException {
        String sql = "Delete a.* from users a where a.eid=?; Delete a.* from skills a where a.eid=?; Delete a.* from login a where a.imid=?;";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, eid);
        pstm.setString(2, eid);
        pstm.setString(3, imid);
 
        pstm.executeUpdate();
    }

	
*/
	

