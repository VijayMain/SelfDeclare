package com.muthagroup.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import com.muthagroup.conUtil.Connection_Util;
import com.muthagroup.vo.SelfDeclare_vo;

public class SelfDeclare_dao {

	public void registerSelfDeclaration(SelfDeclare_vo vo, ArrayList nameFam,
			ArrayList relation, ArrayList age, ArrayList flu,
			ArrayList trav_14Days, ArrayList contactClose, HttpServletResponse response) {
		try {
			Connection con = Connection_Util.getLocalUserConnection();
			PreparedStatement ps_fam = null;
			ResultSet rs_fm = null;
			int maxId=0, done=0;
			
			PreparedStatement ps_update = con.prepareStatement("insert into selfdeclare_tbl(user_name,contact_no,emergency_contactno,"
							+ "working_in,email_id,employee_id,sympt_fever,sympt_cough,sympt_brethlessness,"
							+ "sympt_sorethroat,sympt_other,trav_before14days,trav_location,trav_arrivalDate,"
							+ "trav_departureDate,contact_positive14daysCase,sys_date,update_date,updated_by,"
							+ "enable_id,totalFamilyMembers,contact_address,asetu_register) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps_update.setString(1, vo.getFullname());
			ps_update.setString(2, vo.getContactNo());
			ps_update.setString(3, vo.getEmergency_contNo());
			ps_update.setInt(4, vo.getWorking_in());
			ps_update.setString(5, vo.getEmail());
			ps_update.setString(6, vo.getEmp_id());
			ps_update.setString(7, vo.getFev_radio());
			ps_update.setString(8, vo.getCough());
			ps_update.setString(9, vo.getBreathlessness());
			ps_update.setString(10, vo.getSore_throat());
			ps_update.setString(11, vo.getOther_fev());
			ps_update.setString(12, vo.getTravel_14());
			ps_update.setString(13, vo.getName_cityTravel());
			ps_update.setDate(14, vo.getSql_arrivalDate_cityTravel());
			ps_update.setDate(15, vo.getSql_departDate_cityTravel());
			ps_update.setString(16, vo.getClose_contact());
			ps_update.setTimestamp(17, vo.getSys_date());
			ps_update.setTimestamp(18, vo.getSys_date());
			ps_update.setString(19, vo.getFullname());
			ps_update.setInt(20, 1);
			ps_update.setInt(21, vo.getNo_ofFamily());
			ps_update.setString(22, vo.getContact_address());
			ps_update.setString(23, vo.getaSetuReg());
			
			int update = ps_update.executeUpdate();
			
			if(update>0){
				ps_fam = con.prepareStatement("SELECT max(id) as maxid FROM selfdeclare_tbl");
				rs_fm = ps_fam.executeQuery();
				while (rs_fm.next()) {
					maxId = rs_fm.getInt("maxid");
				}
				
				for(int i=0;i<vo.getNo_ofFamily();i++){
					ps_fam = con.prepareStatement("insert into selfdeclare_rel_tbl"
							+ "(co_id,name,relation,age,flu_symptoms,travel14Before,closecontact,enable,updatedate,updatedBy,sys_date) "
							+ "values(?,?,?,?,?,?,?,?,?,?,?)");
					ps_fam.setInt(1, maxId);
					ps_fam.setString(2, nameFam.get(i).toString());
					ps_fam.setInt(3, Integer.valueOf(relation.get(i).toString()));
					ps_fam.setInt(4, Integer.valueOf(age.get(i).toString()));
					ps_fam.setString(5, flu.get(i).toString());
					ps_fam.setString(6, trav_14Days.get(i).toString());
					ps_fam.setString(7, contactClose.get(i).toString());
					ps_fam.setInt(8, 1);
					ps_fam.setTimestamp(9, vo.getSys_date());
					ps_fam.setString(10, vo.getFullname());
					ps_fam.setTimestamp(11, vo.getSys_date());
					done = ps_fam.executeUpdate();
				} 
				if(done>0){
					response.sendRedirect("Success.jsp?id="+maxId+"&name="+vo.getFullname());
				} 
			} 

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
