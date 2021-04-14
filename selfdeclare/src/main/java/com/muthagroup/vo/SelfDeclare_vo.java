package com.muthagroup.vo;

import java.sql.Date;
import java.sql.Timestamp;

public class SelfDeclare_vo {
	String fullname = "", contactNo = "", contact_address = "",
			emergency_contNo = "", email = "", emp_id = "", fev_radio = "",
			cough = "", breathlessness = "", sore_throat = "", other_fev = "",
			travel_14 = "", name_cityTravel = "", close_contact = "",
			aSetuReg = "";
	int working_in = 0, no_ofFamily = 0;
	Date sql_arrivalDate_cityTravel = null, sql_departDate_cityTravel = null;

	Timestamp sys_date;

	public String getaSetuReg() {
		return aSetuReg;
	}

	public void setaSetuReg(String aSetuReg) {
		this.aSetuReg = aSetuReg;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getName_cityTravel() {
		return name_cityTravel;
	}

	public void setName_cityTravel(String name_cityTravel) {
		this.name_cityTravel = name_cityTravel;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public String getContact_address() {
		return contact_address;
	}

	public void setContact_address(String contact_address) {
		this.contact_address = contact_address;
	}

	public String getEmergency_contNo() {
		return emergency_contNo;
	}

	public void setEmergency_contNo(String emergency_contNo) {
		this.emergency_contNo = emergency_contNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}

	public String getFev_radio() {
		return fev_radio;
	}

	public void setFev_radio(String fev_radio) {
		this.fev_radio = fev_radio;
	}

	public String getCough() {
		return cough;
	}

	public void setCough(String cough) {
		this.cough = cough;
	}

	public String getBreathlessness() {
		return breathlessness;
	}

	public void setBreathlessness(String breathlessness) {
		this.breathlessness = breathlessness;
	}

	public String getSore_throat() {
		return sore_throat;
	}

	public void setSore_throat(String sore_throat) {
		this.sore_throat = sore_throat;
	}

	public String getOther_fev() {
		return other_fev;
	}

	public void setOther_fev(String other_fev) {
		this.other_fev = other_fev;
	}

	public String getTravel_14() {
		return travel_14;
	}

	public void setTravel_14(String travel_14) {
		this.travel_14 = travel_14;
	}

	public String getClose_contact() {
		return close_contact;
	}

	public void setClose_contact(String close_contact) {
		this.close_contact = close_contact;
	}

	public int getNo_ofFamily() {
		return no_ofFamily;
	}

	public void setNo_ofFamily(int no_ofFamily) {
		this.no_ofFamily = no_ofFamily;
	}

	public int getWorking_in() {
		return working_in;
	}

	public void setWorking_in(int working_in) {
		this.working_in = working_in;
	}

	public Date getSql_arrivalDate_cityTravel() {
		return sql_arrivalDate_cityTravel;
	}

	public void setSql_arrivalDate_cityTravel(Date sql_arrivalDate_cityTravel) {
		this.sql_arrivalDate_cityTravel = sql_arrivalDate_cityTravel;
	}

	public Date getSql_departDate_cityTravel() {
		return sql_departDate_cityTravel;
	}

	public void setSql_departDate_cityTravel(Date sql_departDate_cityTravel) {
		this.sql_departDate_cityTravel = sql_departDate_cityTravel;
	}

	public Timestamp getSys_date() {
		return sys_date;
	}

	public void setSys_date(Timestamp sys_date) {
		this.sys_date = sys_date;
	}

}
