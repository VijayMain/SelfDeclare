package com.muthagroup.control;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.muthagroup.dao.SelfDeclare_dao;
import com.muthagroup.vo.SelfDeclare_vo;

@WebServlet("/SelfDeclare_Control")
public class SelfDeclare_Control extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			SimpleDateFormat sdf1 = new SimpleDateFormat("dd-MM-yyyy");
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
			SelfDeclare_vo vo = new SelfDeclare_vo();
			SelfDeclare_dao dao = new SelfDeclare_dao();
			// ***************************************** Current Date Timestamp for system date *************************************************************************************
						java.util.Date date = null;
						java.sql.Timestamp timeStamp = null;
						Calendar calendar = Calendar.getInstance();
						calendar.setTime(new Date());
						java.sql.Date dt = new java.sql.Date(calendar.getTimeInMillis());
						java.sql.Time sqlTime = new java.sql.Time(calendar.getTime().getTime()); 
						date = simpleDateFormat.parse(dt.toString() + " " + sqlTime.toString());
						timeStamp = new java.sql.Timestamp(date.getTime());
						vo.setSys_date(timeStamp);
			// *******************************************************************************************************************************************************************
						
			String fullname=request.getParameter("fullname");
			String contactNo=request.getParameter("contactNo");
			String contact_address=request.getParameter("contact_address");
			String emergency_contNo=request.getParameter("emergency_contNo");
			String email=request.getParameter("email");
			int working_in=Integer.valueOf(request.getParameter("working_in"));
			String emp_id=request.getParameter("emp_id");
			String fev_radio=request.getParameter("fev_radio");
			String cough=request.getParameter("cough");
			String breathlessness=request.getParameter("breathlessness");
			String sore_throat=request.getParameter("sore_throat");
			String other_fev=request.getParameter("other_fev");
			String travel_14=request.getParameter("travel_14");
			String name_cityTravel=request.getParameter("name_cityTravel");
			String close_contact=request.getParameter("close_contact");
			int no_ofFamily=Integer.valueOf(request.getParameter("no_ofFamily"));
			
			String aSetuReg=request.getParameter("aSetuReg");
			 
			vo.setaSetuReg(aSetuReg);
			vo.setFullname(fullname);
			vo.setContactNo(contactNo);
			vo.setContact_address(contact_address);
			vo.setEmergency_contNo(emergency_contNo);
			vo.setEmail(email);
			vo.setWorking_in(working_in);
			vo.setEmp_id(emp_id);
			vo.setFev_radio(fev_radio);
			vo.setCough(cough);
			vo.setBreathlessness(breathlessness);
			vo.setSore_throat(sore_throat);
			vo.setOther_fev(other_fev);
			vo.setTravel_14(travel_14);
			vo.setName_cityTravel(name_cityTravel);
			vo.setClose_contact(close_contact);
			vo.setNo_ofFamily(no_ofFamily); 
		 
			if(request.getParameter("arrivalDate_cityTravel")!=""){			
			String arrivalDate_cityTravel=request.getParameter("arrivalDate_cityTravel");
			java.util.Date date_arrivalDate_cityTravel = sdf1.parse(arrivalDate_cityTravel);
			java.sql.Date sql_arrivalDate_cityTravel = new java.sql.Date(date_arrivalDate_cityTravel.getTime()); 
			vo.setSql_arrivalDate_cityTravel(sql_arrivalDate_cityTravel);
			}
			if(request.getParameter("departDate_cityTravel")!=""){	
			String departDate_cityTravel=request.getParameter("departDate_cityTravel"); 
			java.util.Date date_departDate_cityTravel = sdf1.parse(departDate_cityTravel); 
	        java.sql.Date sql_departDate_cityTravel = new java.sql.Date(date_departDate_cityTravel.getTime()); 
	        vo.setSql_departDate_cityTravel(sql_departDate_cityTravel);
			}

			ArrayList nameFam = new ArrayList();
			ArrayList relation = new ArrayList();
			ArrayList age = new ArrayList();
			ArrayList flu = new ArrayList();
			ArrayList trav_14Days = new ArrayList();
			ArrayList contactClose = new ArrayList();
			
			for(int i=1;i<=no_ofFamily;i++){
				nameFam.add(request.getParameter("nameof_family"+i));
				relation.add(request.getParameter("relation_family"+i));
				age.add(request.getParameter("ageofFamily"+i));
				flu.add(request.getParameter("flueFamily"+i));
				trav_14Days.add(request.getParameter("travel14Family"+i));
				contactClose.add(request.getParameter("close_contactFamilyMem"+i));
			}
			 
			dao.registerSelfDeclaration(vo,nameFam,relation,age,flu,trav_14Days,contactClose,response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
