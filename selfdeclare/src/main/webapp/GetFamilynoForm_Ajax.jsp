<%@page import="com.muthagroup.conUtil.Connection_Util"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AJAX</title>
</head>
<body>
<%
try{
	String str = request.getParameter("q");
	String hid = request.getParameter("hid");
	int noFamily = Integer.valueOf(str);
	Connection con = Connection_Util.getLocalUserConnection();
 	PreparedStatement ps_comp = null;
 	ResultSet rs_comp=null;
 	String no="",name="",relation="",age="",flusympt1="",flusympt2="",travel="",travel1="",closecont="",closecont1="",yes="",nop="";
 	
 	if(hid.equalsIgnoreCase("en")){
 		no="No";
 		name="Name";
 		relation="Relation";
 		age="Age";
 		flusympt1="Having flu-like";
 		flusympt2="symptoms";
 		travel="Travelled before";
 		travel1="14 days";
 		closecont="Close contact with";
 		closecont1="confirmed case of coronavirus";
 		yes="YES";
 		nop="NO";
 	}else{
 		no="क्र";
 		name="नाव";
 		relation="नाते";
 		age="वय";
 		flusympt1="फ्लूसारखी लक्षणे ";
 		flusympt2="आहेत का";
 		travel="14 दिवसांमध्ये /दिवसांपूर्वी";
 		travel1="प्रवास केला होता?";
 		closecont="कोरोना विषाणूची पुष्टी झालेला";
 		closecont1="रुग्ण संपर्कात आला आहे का?";
 		yes="होय";
 		nop="नाही";
 	}
%>	
	<span id="noFamily">
    
    <div class="form-group">
    		
    		<div class="col-lg-12">
     <section class="panel"> 
       <div class="table-responsive">
         <table class="table">
           <thead>
             <tr>
               <th style="text-align: center;color: black;font-family: Arial, Helvetica, sans-serif;"><%=no %></th>
               <th style="text-align: center;color: black;font-family: Arial, Helvetica, sans-serif;"><%=name %><span style="color: red;" class="required">*</span></th>
               <th style="text-align: center;color: black;font-family: Arial, Helvetica, sans-serif;"><%=relation %><span style="color: red;" class="required">*</span></th>
               <th style="text-align: center;color: black;font-family: Arial, Helvetica, sans-serif;"><%=age %><span style="color: red;" class="required">*</span></th>
               <th style="text-align: center;color: black;font-family: Arial, Helvetica, sans-serif;"><%=flusympt1 %><br/><%=flusympt2 %><span style="color: red;" class="required">*</span></th> 
               <th style="text-align: center;color: black;font-family: Arial, Helvetica, sans-serif;"><%=travel %><br/><%=travel1 %><span style="color: red;" class="required">*</span></th>
               <th style="text-align: center;color: black;font-family: Arial, Helvetica, sans-serif;"><%=closecont %> <br/><%=closecont1 %><span style="color: red;" class="required">*</span></th>
             </tr>
           </thead>
           <tbody>
           <%
           for(int fam=1;fam<=noFamily;fam++){
           %>
           
             <tr>
               <td style="text-align: center;color: black;font-family: Arial, Helvetica, sans-serif;"><%=fam%></td>
               <td style="text-align: center;color: black;font-family: Arial, Helvetica, sans-serif;"> <input type="text" style="color: black;" name="nameof_family<%=fam %>" id="nameof_family<%=fam %>" class="form-control" required> </td>
               <td style="text-align: center;color: black;font-family: Arial, Helvetica, sans-serif;">
          <select class="form-control" name="relation_family<%=fam %>" id="relation_family<%=fam %>" style="font-weight: bold;color: black;font-family: Arial, Helvetica, sans-serif;" required>
           <option value=""> - - - - Select - - - - </option>
         <%  
         	ps_comp = con.prepareStatement("SELECT * FROM selfdeclare_Family_rel_tbl where enable=1");
         	rs_comp = ps_comp.executeQuery();
         	while(rs_comp.next()){
         %>                              
             <option value="<%=rs_comp.getInt("id")%>"><%=rs_comp.getString("relationEN") %></option>  
         <%
         	}  
         %>
         </select>  
         </td>
               <td style="text-align: center;color: black;font-family: Arial, Helvetica, sans-serif;">
               <select class="form-control" name="ageofFamily<%=fam %>" id="ageofFamily<%=fam %>" style="font-weight: bold;color: black;font-family: Arial, Helvetica, sans-serif;" required>
                   <option value="0">less than Year</option>
         <%
         for(int i=1;i<111;i++){
         %>                              
             <option value="<%=i%>"><%=i%></option>  
         <%
         	} 
         %>
         
          </select> 
          </td>
               <td align="center" style="text-align: center;color: black;font-family: Arial, Helvetica, sans-serif;">
               <input type="radio" id="flueFamily<%=fam %>" name="flueFamily<%=fam %>" value="yes" required> <%=yes %> &nbsp;&nbsp;
					<input type="radio" id="flueFamily<%=fam %>" name="flueFamily<%=fam %>" value="no" required> <%=nop %>
				</td>
				
               <td align="center" style="text-align: center;color: black;font-family: Arial, Helvetica, sans-serif;">
               <input type="radio" id="travel14Family<%=fam %>" name="travel14Family<%=fam %>" value="yes" required> <%=yes %>  &nbsp;&nbsp;
					<input type="radio" id="travel14Family<%=fam %>" name="travel14Family<%=fam %>" value="no" required> <%=nop %>
				</td>
				
               <td align="center" style="text-align: center;color: black;font-family: Arial, Helvetica, sans-serif;">
					<input type="radio" id="close_contactFamilyMem<%=fam %>" name="close_contactFamilyMem<%=fam %>" value="yes" required> <%=yes %> &nbsp;&nbsp;
					<input type="radio" id="close_contactFamilyMem<%=fam %>" name="close_contactFamilyMem<%=fam %>" value="no" required> <%=nop %> 
				</td> 
             </tr> 
             
           <%
           }
           %>   
             
           </tbody>
         </table>
       </div>

     </section>
   </div>
    		
    		        
    </div>
    
    </span>  	
	
<%
}catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>