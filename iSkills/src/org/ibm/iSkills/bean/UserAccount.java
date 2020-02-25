package org.ibm.iSkills.bean;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class UserAccount {
 
	private String role;
	private String imid;
	private String eid;
	private Date doj;   
	private String name;
	private String pm;
	private String pem;
	private float exp;
	private float texp;
	private float iexp;
	private Date metstart;
	private String rating;
	private String ts1;  private int ts1p;
	private String ts2;  private int ts2p;
	private String ts3;  private int ts3p;
	private String ts4;  private int ts4p;
	private String ts5;  private int ts5p;
	private String met1;  private int met1p;
	private String met2;  private int met2p;
	private String met3;  private int met3p;
	private String met4;  private int met4p;
	private String met5;  private int met5p;
	private String met6;  private int met6p;
	private String met7;  private int met7p;
	private String met8;  private int met8p;
	private String met9;  private int met9p;
	private String met10;  private int met10p;
	private String c1;  private String c1i; private String cy1; private String cm1;
	private String c2;  private String c2i; private String cy2; private String cm2;
	private String c3;  private String c3i; private String cy3; private String cm3;
	private String c4;  private String c4i; private String cy4; private String cm4;
	private String c5;  private String c5i; private String cy5; private String cm5;
	private String ar1;  private String ar2; private String ay1;  private String ay2;
	private String ar3;  private String ar4; private String ay3;  private String ay4;
	private String ar5;  private String ar6; private String ay5;  private String ay6;
	private String hq1;  private String inst1;
	private String hq2;  private String inst2;
	private String hq3;  private String inst3;
	
	
	   public UserAccount() {
	        
	   }

	public UserAccount(String role, String imid, String eid, Date doj, String name, String pm, String pem, float exp, float texp, float iexp, Date metstart, String rating, String ts1, int ts1p,  String ts2, int ts2p,  String ts3, int ts3p,  String ts4, int ts4p,  String ts5, int ts5p, String met1, int met1p,  String met2, int met2p,  String met3, int met3p,  String met4, int met4p,  String met5, int met5p, String met6, int met6p, String met7, int met7p, String met8, int met8p, String met9, int met9p, String met10, int met10p, String c1, String c1i, String c2, String c2i, String c3, String c3i, String c4, String c4i, String c5, String c5i, String ar1, String ar2, String ar3, String ar4, String ar5, String ar6, String hq1, String inst1, String hq2, String inst2, String hq3, String inst3, String cy1, String cy2, String cy3, String cy4, String cy5, String ay1, String ay2, String ay3, String ay4, String ay5, String ay6, String cm1, String cm2, String cm3, String cm4, String cm5){
		   this.role=role;
		   this.imid=imid;
		   this.eid=eid;
		   this.doj=doj;
		   this.name=name;
		   this.pm=pm;
		   this.pem=pem;
		   this.exp=exp;
		   this.texp=texp;
		   this.iexp=iexp;
		   this.metstart=metstart;
		   this.rating= rating;
		   this.ts1=ts1;
		   this.ts2=ts2;
		   this.ts3=ts3;
		   this.ts4=ts4;
		   this.ts5=ts5;
		   this.met1=met1;
		   this.met2=met2;
		   this.met3=met3;
		   this.met4=met4;
		   this.met5=met5;
		   this.met6=met6;
		   this.met7=met7;
		   this.met8=met8;
		   this.met9=met9;
		   this.met10=met10;
		   this.c1=c1;
		   this.c2=c2;
		   this.c3=c3;
		   this.c4=c4;
		   this.c5=c5;
		   this.ts1p=ts1p;
		   this.ts2p=ts2p;
		   this.ts3p=ts3p;
		   this.ts4p=ts4p;
		   this.ts5p=ts5p;
		   this.met1p=met1p;
		   this.met2p=met2p;
		   this.met3p=met3p;
		   this.met4p=met4p;
		   this.met5p=met5p;
		   this.met6p=met6p;
		   this.met7p=met7p;
		   this.met8p=met8p;
		   this.met9p=met9p;
		   this.met10p=met10p;
		   this.c1i=c1i;
		   this.c2i=c2i;
		   this.c3i=c3i;
		   this.c4i=c4i;
		   this.c5i=c5i;
		   this.ar1=ar1;
		   this.ar2=ar2;
		   this.ar3=ar3;
		   this.ar4=ar4;
		   this.ar5=ar5;
		   this.ar6=ar6;
		   this.hq1=hq1;
		   this.inst1=inst1;
		   this.hq2=hq2;
		   this.inst2=inst2;
		   this.hq3=hq3;
		   this.inst3=inst3;
		   this.cy1= cy1;
		   this.cy2= cy2;
		   this.cy3= cy3;
		   this.cy4= cy4;
		   this.cy5= cy5;
		   this.ay1= ay1;
		   this.ay2= ay2;
		   this.ay3= ay3;
		   this.ay4= ay4;
		   this.ay5= ay5;
		   this.ay6= ay6;
		   this.cm1=cm1;
		   this.cm2=cm2;
		   this.cm3=cm3;
		   this.cm4=cm4;
		   this.cm5=cm5;
		   
		   
}
	   
	   public String password(String eid, Date doj) {
		   DateFormat d = new SimpleDateFormat("yyyyMMdd");
		   String dojStr = d.format(doj);
		   String password = eid+dojStr;
		   return password;
	   }

	public String getHq1() {
		return hq1;
	}

	public void setHq1(String hq1) {
		this.hq1 = hq1;
	}

	public String getInst1() {
		return inst1;
	}

	public void setInst1(String inst1) {
		this.inst1 = inst1;
	}

	public String getHq2() {
		return hq2;
	}

	public void setHq2(String hq2) {
		this.hq2 = hq2;
	}

	public String getInst2() {
		return inst2;
	}

	public void setInst2(String inst2) {
		this.inst2 = inst2;
	}

	public String getHq3() {
		return hq3;
	}

	public void setHq3(String hq3) {
		this.hq3 = hq3;
	}

	public String getInst3() {
		return inst3;
	}

	public void setInst3(String inst3) {
		this.inst3 = inst3;
	}
   
   public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getImid() {
		return imid;
	}

	public void setImid(String imid) {
		this.imid = imid;
	}

	public String getEid() {
		return eid;
	}

	public void setEid(String eid) {
		this.eid = eid;
	}

	public Date getDoj() {
		return doj;
	}

	public void setDoj(Date doj) {
		this.doj = doj;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPm() {
		return pm;
	}

	public void setPm(String pm) {
		this.pm = pm;
	}

	public String getPem() {
		return pem;
	}

	public void setPem(String pem) {
		this.pem = pem;
	}

	public float getExp() {
		return exp;
	}

	public void setExp(float exp) {
		this.exp = exp;
	}

	public float getTexp() {
		return texp;
	}

	public void setTexp(float texp) {
		this.texp = texp;
	}

	public float getIexp() {
		return iexp;
	}

	public void setIexp(float iexp) {
		this.iexp = iexp;
	}

	public Date getMetstart() {
		return metstart;
	}

	public void setMetstart(Date metstart) {
		this.metstart = metstart;
	}

	public String getTs1() {
		return ts1;
	}

	public void setTs1(String ts1) {
		this.ts1 = ts1;
	}

	public int getTs1p() {
		return ts1p;
	}

	public void setTs1p(int ts1p) {
		this.ts1p = ts1p;
	}

	public String getTs2() {
		return ts2;
	}

	public void setTs2(String ts2) {
		this.ts2 = ts2;
	}

	public int getTs2p() {
		return ts2p;
	}

	public void setTs2p(int ts2p) {
		this.ts2p = ts2p;
	}

	public String getTs3() {
		return ts3;
	}

	public void setTs3(String ts3) {
		this.ts3 = ts3;
	}

	public int getTs3p() {
		return ts3p;
	}

	public void setTs3p(int ts3p) {
		this.ts3p = ts3p;
	}

	public String getTs4() {
		return ts4;
	}

	public void setTs4(String ts4) {
		this.ts4 = ts4;
	}

	public int getTs4p() {
		return ts4p;
	}

	public void setTs4p(int ts4p) {
		this.ts4p = ts4p;
	}

	public String getTs5() {
		return ts5;
	}

	public void setTs5(String ts5) {
		this.ts5 = ts5;
	}

	public int getTs5p() {
		return ts5p;
	}

	public void setTs5p(int ts5p) {
		this.ts5p = ts5p;
	}

	public String getMet1() {
		return met1;
	}

	public void setMet1(String met1) {
		this.met1 = met1;
	}

	public int getMet1p() {
		return met1p;
	}

	public void setMet1p(int met1p) {
		this.met1p = met1p;
	}

	public String getMet2() {
		return met2;
	}

	public void setMet2(String met2) {
		this.met2 = met2;
	}

	public int getMet2p() {
		return met2p;
	}

	public void setMet2p(int met2p) {
		this.met2p = met2p;
	}

	public String getMet3() {
		return met3;
	}

	public void setMet3(String met3) {
		this.met3 = met3;
	}

	public int getMet3p() {
		return met3p;
	}

	public void setMet3p(int met3p) {
		this.met3p = met3p;
	}

	public String getMet4() {
		return met4;
	}

	public void setMet4(String met4) {
		this.met4 = met4;
	}

	public int getMet4p() {
		return met4p;
	}

	public void setMet4p(int met4p) {
		this.met4p = met4p;
	}

	public String getMet5() {
		return met5;
	}

	public void setMet5(String met5) {
		this.met5 = met5;
	}

	public int getMet5p() {
		return met5p;
	}

	public void setMet5p(int met5p) {
		this.met5p = met5p;
	}

	public String getMet6() {
		return met6;
	}

	public void setMet6(String met6) {
		this.met6 = met6;
	}

	public int getMet6p() {
		return met6p;
	}

	public void setMet6p(int met6p) {
		this.met6p = met6p;
	}

	public String getMet7() {
		return met7;
	}

	public void setMet7(String met7) {
		this.met7 = met7;
	}

	public int getMet7p() {
		return met7p;
	}

	public void setMet7p(int met7p) {
		this.met7p = met7p;
	}

	public String getMet8() {
		return met8;
	}

	public void setMet8(String met8) {
		this.met8 = met8;
	}

	public int getMet8p() {
		return met8p;
	}

	public void setMet8p(int met8p) {
		this.met8p = met8p;
	}

	public String getMet9() {
		return met9;
	}

	public void setMet9(String met9) {
		this.met9 = met9;
	}

	public int getMet9p() {
		return met9p;
	}

	public void setMet9p(int met9p) {
		this.met9p = met9p;
	}

	public String getMet10() {
		return met10;
	}

	public void setMet10(String met10) {
		this.met10 = met10;
	}

	public int getMet10p() {
		return met10p;
	}

	public void setMet10p(int met10p) {
		this.met10p = met10p;
	}

	public String getC1() {
		return c1;
	}

	public void setC1(String c1) {
		this.c1 = c1;
	}

	public String getC1i() {
		return c1i;
	}

	public void setC1i(String c1i) {
		this.c1i = c1i;
	}

	public String getC2() {
		return c2;
	}

	public void setC2(String c2) {
		this.c2 = c2;
	}

	public String getC2i() {
		return c2i;
	}

	public void setC2i(String c2i) {
		this.c2i = c2i;
	}

	public String getC3() {
		return c3;
	}

	public void setC3(String c3) {
		this.c3 = c3;
	}

	public String getC3i() {
		return c3i;
	}

	public void setC3i(String c3i) {
		this.c3i = c3i;
	}

	public String getC4() {
		return c4;
	}

	public void setC4(String c4) {
		this.c4 = c4;
	}

	public String getC4i() {
		return c4i;
	}

	public void setC4i(String c4i) {
		this.c4i = c4i;
	}

	public String getC5() {
		return c5;
	}

	public void setC5(String c5) {
		this.c5 = c5;
	}

	public String getC5i() {
		return c5i;
	}

	public void setC5i(String c5i) {
		this.c5i = c5i;
	}

	public String getAr1() {
		return ar1;
	}

	public void setAr1(String ar1) {
		this.ar1 = ar1;
	}

	public String getAr2() {
		return ar2;
	}

	public void setAr2(String ar2) {
		this.ar2 = ar2;
	}

	public String getAr3() {
		return ar3;
	}

	public void setAr3(String ar3) {
		this.ar3 = ar3;
	}

	public String getAr4() {
		return ar4;
	}

	public void setAr4(String ar4) {
		this.ar4 = ar4;
	}

	public String getAr5() {
		return ar5;
	}

	public void setAr5(String ar5) {
		this.ar5 = ar5;
	}

	public String getAr6() {
		return ar6;
	}

	public void setAr6(String ar6) {
		this.ar6 = ar6;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public String getCy1() {
		return cy1;
	}

	public void setCy1(String cy1) {
		this.cy1 = cy1;
	}

	public String getCy2() {
		return cy2;
	}

	public void setCy2(String cy2) {
		this.cy2 = cy2;
	}

	public String getCy3() {
		return cy3;
	}

	public void setCy3(String cy3) {
		this.cy3 = cy3;
	}

	public String getCy4() {
		return cy4;
	}

	public void setCy4(String cy4) {
		this.cy4 = cy4;
	}

	public String getCy5() {
		return cy5;
	}

	public void setCy5(String cy5) {
		this.cy5 = cy5;
	}

	public String getAy1() {
		return ay1;
	}

	public void setAy1(String ay1) {
		this.ay1 = ay1;
	}

	public String getAy2() {
		return ay2;
	}

	public void setAy2(String ay2) {
		this.ay2 = ay2;
	}

	public String getAy3() {
		return ay3;
	}

	public void setAy3(String ay3) {
		this.ay3 = ay3;
	}

	public String getAy4() {
		return ay4;
	}

	public void setAy4(String ay4) {
		this.ay4 = ay4;
	}

	public String getAy5() {
		return ay5;
	}

	public void setAy5(String ay5) {
		this.ay5 = ay5;
	}

	public String getAy6() {
		return ay6;
	}

	public void setAy6(String ay6) {
		this.ay6 = ay6;
	}

	public String getCm1() {
		return cm1;
	}

	public void setCm1(String cm1) {
		this.cm1 = cm1;
	}

	public String getCm2() {
		return cm2;
	}

	public void setCm2(String cm2) {
		this.cm2 = cm2;
	}

	public String getCm3() {
		return cm3;
	}

	public void setCm3(String cm3) {
		this.cm3 = cm3;
	}

	public String getCm4() {
		return cm4;
	}

	public void setCm4(String cm4) {
		this.cm4 = cm4;
	}

	public String getCm5() {
		return cm5;
	}

	public void setCm5(String cm5) {
		this.cm5 = cm5;
	}

   
}         