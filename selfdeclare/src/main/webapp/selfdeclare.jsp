<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.muthagroup.conUtil.Connection_Util"%>
<%@page import="java.sql.Connection"%>
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
  <title>Self-Declaration Form</title>

  <!-- Bootstrap CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome.min.css" rel="stylesheet" />
  <link href="css/daterangepicker.css" rel="stylesheet" />
  <link href="css/bootstrap-datepicker.css" rel="stylesheet" />
  <link href="css/bootstrap-colorpicker.css" rel="stylesheet" />
  <!-- date picker -->
  <!--   <script src="files/jquery.min.js"></script> -->
   <!--  <script src="files/main.js"></script> -->
<script type="text/javascript">
    $(".form_datetime").datetimepicker({format: 'yyyy-mm-dd hh:ii'});
     
    function validateForm() {
    	var yes_travel = document.getElementById('travel_14Yes');
    	var noTravel = document.getElementById('travel_14No');
    	
    	var name_cityTravel = document.getElementById('name_cityTravel');
    	var dp1 = document.getElementById('dp1');
    	var dp2 = document.getElementById('dp2');
    	var email=document.getElementById('email').value;
    	
    	if (yes_travel.checked == true && (name_cityTravel.value == "" || dp2.value == "" || dp3.value == ""))
    	{ 
    		alert("4 Please list the country/cities you have Traveled to in the last 14 days prior to arriving at Mutha Group Premises Required..!!!");
    		document.getElementById("Save").disabled = false;
    		return false;	 
    	}
    	if(email !="" && email.includes("@")==false){
    		alert("Proper E-Mail ID Required...!!!");
    		document.getElementById("Save").disabled = false;
    		return false; 
    	}
    	 
    	
    	document.getElementById("Save").disabled = true;
    	return true;
    } 
    
    function changeLang(str) {
    	var hid = document.getElementById("hid");
    	
    	
    	var asetu = document.getElementById("asetu");
    	var setuapp = document.getElementById("setuapp");
    	var setu_info = document.getElementById("setu_info");
    	var declare = document.getElementById("declare");
    	var note = document.getElementById("note");
    	var mustfill = document.getElementById("mustfill");
    	var fullname = document.getElementById("fullname");
    	var contactNo = document.getElementById("contactNo");
    	var contact_address = document.getElementById("contact_address");
    	var emergency_contNo = document.getElementById("emergency_contNo");
    	var email = document.getElementById("email");
    	var working_in = document.getElementById("working_in");
    	var emp_id = document.getElementById("emp_id");
    	var haveFlu = document.getElementById("haveFlu");
    	var fev_radio = document.getElementById("fev_radio");
    	var cough = document.getElementById("cough");
    	var breathlessness = document.getElementById("breathlessness");
    	var sore_throat = document.getElementById("sore_throat");
    	var other_fev = document.getElementById("other_fev");
    	var anyTrav14Days = document.getElementById("anyTrav14Days");
    	var travel_14Yes = document.getElementById("travel_14Yes");
    	var name_cityTravel = document.getElementById("name_cityTravel");
    	var arrivalDate_cityTravel = document.getElementById("arrivalDate_cityTravel");
    	var departDate_cityTravel = document.getElementById("departDate_cityTravel");
    	var closelead14 = document.getElementById("closelead14");
    	var close_contact = document.getElementById("close_contact");
    	var fam_head = document.getElementById("fam_head");
    	var no_ofFamily = document.getElementById("no_ofFamily");
    	var notePlease = document.getElementById("notePlease");
    	var notepls = document.getElementById("notepls");
    	var prvNote = document.getElementById("prvNote");
    	var artNote = document.getElementById("artNote");
    	var otbreak = document.getElementById("otbreak");
    	var also = document.getElementById("also");
    	var impNote = document.getElementById("impNote");
    	var declfinal = document.getElementById("declfinal");
    	var iconfirm = document.getElementById("iconfirm");
    	var yesAns = document.getElementById("yesAns");
    	var yesAns1 = document.getElementById("yesAns1");
    	var yesAns2= document.getElementById("yesAns2");
    	var yesAns3 = document.getElementById("yesAns3");
    	var yesAns4 = document.getElementById("yesAns4");
    	var yesAns5 = document.getElementById("yesAns5");
    	var yesAns6 = document.getElementById("yesAns6");
    	var noAns = document.getElementById("noAns");    	
    	var noAns1 = document.getElementById("noAns1");
    	var noAns2 = document.getElementById("noAns2");
    	var noAns3 = document.getElementById("noAns3");
    	var noAns4 = document.getElementById("noAns4");
    	var noAns5 = document.getElementById("noAns5");
    	var noAns6 = document.getElementById("noAns6");
    	var majkurTip = document.getElementById("majkurTip"); 
    	var agree_Travel = document.getElementById("agree_Travel");
    	var nostopIntravel = document.getElementById("nostopIntravel");

    if(str=='en'){    
    	hid.value = str;
    	
    	
    	declare.textContent = "Corona virus Self-Declaration Form";
    	note.textContent = "Due to the ongoing and rapidly changing situation with the novel corona-virus (COVID-19), we are requiring all visitors to  the Mutha Group Premises, to fill-out the self-declaration form below. Mutha Group will make a decision on access to the school based on the answers provided below.";
    	mustfill.textContent = "1 Each visitor must complete this form :";
    	fullname.textContent = "Full Name";
    	contactNo.textContent = "Contact No";
    	contact_address.textContent = "Contact Address";
    	emergency_contNo.textContent = "Emergency contact No";
    	email.textContent = "Email Id";
    	working_in.textContent = "Work at";
    	emp_id.textContent = "Employee Id (If Any)";
    	haveFlu.textContent = "3 Do you have any of the following flu-like symptoms:";
    	fev_radio.textContent = "Fever (38 Degree or higher)";
    	cough.textContent = "Cough";
    	breathlessness.textContent = "Breathlessness";
    	sore_throat.textContent = "Sore Throat";
    	other_fev.textContent = "Others: Please specify";
    	anyTrav14Days.textContent = "4 Please list the country/cities you have travelled to in the last 14 days prior to arriving at Mutha Group Premises";
    	travel_14Yes.textContent = "Travelled before 14 days..?";
    	name_cityTravel.textContent = "Name of Country / Cities (Saparated by Commas)";
    	arrivalDate_cityTravel.textContent = "Date of arrival (Home Place)";
    	departDate_cityTravel.textContent = "Date of departure (Last Place Visited)";
    	closelead14.textContent = "5 Have you or an immediate family member come in close contact with a confirmed case of the coronavirus in the last 14 days..? (Close contact : means being at a distance of less than one metre for more than 15 minutes.)";
    	close_contact.textContent = "I have been in close contact with a confirmed case of corona virus in the last 14 days";
    	fam_head.textContent = "5.1 Family Details Required ";
    	no_ofFamily.textContent = "Total Family Members";
    	notePlease.textContent = "Please Note :";
    	notepls.textContent = "This document will be retained confidentially by the company for one month after submission. The health and well being of our community is our first priority therefore Mutha Group reserves the right to deny entry to the premises.";
    	prvNote.textContent = "Private Data Protection notice :";
    	artNote.textContent = "We are collecting and processing this personal data on the basis of Art. 6 (1)(f) and Art.9 (2)(i) Regulation (EU) 2016/679 (GDPR) being necessary for the purposes of the legitimate interests pursued by Mutha Group Satara and necessary for protecting against serious cross-border threats to health. ";
    	otbreak.textContent = "We do this as preventive measures for our community to mitigate the risk of a novel Coronavirus disease (COVID-19) outbreak in our premises.";
    	also.textContent = "Also,";
    	impNote.textContent = "we are collecting personal data to be able to support local authorities in case of an outbreak in Pune, Maharashtra, India. In such a case, this data will help the authorities to trace a human-to-human transmission of the Virus. This data will be stored in our HR office and is not shared with any third party, unless there will be an official request by the local authorities for reasons of public interest in the area of public health. The data sheet will be deleted one month after collection, unless a longer period is required by the public authorities. Thank you for your cooperation!";
    	declfinal.textContent = "DECLARATION :";
    	iconfirm.textContent = " I confirm that the information given in this form is true, complete and accurate.";
    	yesAns.textContent = "YES";    	
    	yesAns1.textContent = "YES";
    	yesAns2.textContent = "YES";
    	yesAns3.textContent = "YES";
    	yesAns4.textContent = "YES";
    	yesAns5.textContent = "YES";
    	yesAns6.textContent = "YES";
    	noAns.textContent = "NO";
    	noAns1.textContent = "NO";
    	noAns2.textContent = "NO";
    	noAns3.textContent = "NO";
    	noAns4.textContent = "NO";
    	noAns5.textContent = "NO";
    	noAns6.textContent = "NO";
    	
    	agree_Travel.textContent = "6 Tracking point";
    	nostopIntravel.textContent = "No stopping on the way to office or company";
    	
    	majkurTip.textContent = "Note : Please update form data in English Language only..Marathi selection is for Label Only..!!!";

    	
    	asetu.textContent = "2 Install and Register with Aarogya Setu Mobile App"; 
    	setuapp.textContent = "Did you install and register with Aarogya Setu Mobile App ?"; 
    	setu_info.textContent = "Aarogya Setu is a mobile application developed by the Government of India to connect essential health services with the people of India in our combined fight against COVID-19. The App is aimed at augmenting the initiatives of the Government of India, particularly the Department of Health, in proactively reaching out to and informing the users of the app regarding risks, best practices and relevant advisories pertaining to the containment of COVID-19."; 
    
    }else if(str=='ru'){ 
    	hid.value = str;
    	
    	declare.textContent = "कोरोना विषाणूचा स्व-घोषणा फॉर्म";
    	note.textContent = "नोवेल कोरोना-विषाणू (COVID-19)च्या चालू असलेल्या आणि वेगाने बदलणार्‍या परिस्थितीमुळे मुथा ग्रुप परिसरात येणाऱ्या सर्व (Visitors)अभ्यागतांनी खाली दिलेला स्वयं-घोषणा फॉर्म भरण्याची आवश्यकता आहे. खाली दिलेल्या उत्तरांच्या आधारे मुथा ग्रुप कंपनी मधे प्रवेश देण्याचा निर्णय घेईल.";
    	mustfill.textContent = "1 प्रत्येक (Visitors)अभ्यागताने हा फॉर्म पूर्ण भरणे आवश्यक आहे";
    	fullname.textContent = "पूर्ण नाव";
    	contactNo.textContent = "मोबाईल नंबर";
    	contact_address.textContent = "संपर्काचा पत्ता";
    	emergency_contNo.textContent = "आपत्कालीन मोबाइल क्रमांक";
    	email.textContent = "ई-मेल";
    	working_in.textContent = "कार्यरत कंपनी";
    	emp_id.textContent = "कर्मचारी आयडी ( असल्यास )";
    	haveFlu.textContent = "3 आपल्यास फ्लूसारखी खालील कोणतीही लक्षणे आहेत का :";
    	fev_radio.textContent = "ताप (38 अंश किंवा त्याहून अधिक)";
    	cough.textContent = "खोकला";
    	breathlessness.textContent = "धाप लागणे";
    	sore_throat.textContent = "घसा खवखवणे";
    	other_fev.textContent = "इतर: कृपया स्पष्ट करा";
    	anyTrav14Days.textContent = "4 कृपया मुथा ग्रुपच्या आवारात पोचण्यापूर्वी आपण गेल्या 14 दिवसांमध्ये /दिवसांपूर्वी प्रवास केलेल्या देश / शहरांची नोंद करा";
    	travel_14Yes.textContent = "ह्या 14 दिवसांमध्ये प्रवास केला होता?";
    	name_cityTravel.textContent = "देश / शहरांची नावे (स्वल्पविराम वापरून नोंद करा)";
    	arrivalDate_cityTravel.textContent = "घरी येण्याची तारीख";
    	departDate_cityTravel.textContent = "शेवटच्या ठिकाणी भेट दिलेली तारीख";
    	closelead14.textContent = "5 आपण किंवा आपल्या कुटुंबातील एखादा जवळचा सदस्य, गेल्या 14 दिवसात कोरोना व्हायरसच्या पुष्टी/प्रमाणीत  झालेल्या प्रकरणात जवळच्या संपर्कात आला आहे का..? (जवळचा संपर्क: म्हणजे 15 मिनिटांपेक्षा जास्त काळ एक मीटरपेक्षा कमी अंतरावर असणे)";
    	close_contact.textContent = "मी गेल्या 14 दिवसात कोरोना विषाणूच्या पुष्टी झालेल्या रुग्णाशी जवळचा संपर्क साधला आहे";
    	fam_head.textContent = "5.1 कौटुंबिक तपशील आवश्यक";
    	no_ofFamily.textContent = "एकूण कुटुंब सदस्य";
    	notePlease.textContent = "कृपया नोंद घ्या:";
    	notepls.textContent = "सदर कागदपत्र सबमिशननंतर एका महिन्यासाठी कंपनीकडून गुप्तपणे राखून ठेवले जाईल.आपल्या समुदायाचे आरोग्य हे आमचे प्राथमिक प्राधान्य आहे. त्यान्वये मुथा ग्रुपला, संबंधीत व्यक्तीस मुथा ग्रुपच्या आवारात प्रवेश नाकारण्याचा अधिकार आहे.";
    	prvNote.textContent = "खाजगी डेटा संरक्षण सूचना:";
    	artNote.textContent = "Art.6(1)(f)आणि Art.9(2)(i) च्या आधारावर आम्ही हा वैयक्तिक डेटा संकलित करीत आहोत आणि त्यावर प्रक्रिया करीत आहोत. मुथा ग्रुप सातारा यांनी घेतलेल्या कायदेशीर हिताच्या हेतूंसाठी आवश्यक असलेले नियमन (EU)2016/679 (GDPR)-आरोग्यासाठी असलेल्या सीमापार धोक्यांपासून संरक्षण करण्यासाठी आवश्यक आहे";
    	otbreak.textContent = "आमच्या परिसरामध्ये नोवेल कोरोना-विषाणू (COVID-19)चा प्रादुर्भाव कमी होण्यास प्रतिबंधित उपाय म्हणून आम्ही हे करत आहोत .";
    	also.textContent = "महत्वाचे,";
    	impNote.textContent = "आम्ही पुणे महाराष्ट्र भारत येथे नोवेल कोरोना-विषाणू (COVID-19) उद्रेक झाल्यास स्थानिक अधिकार्‍यांना मदत करण्यास सक्षम होण्यासाठी वैयक्तिक डेटा गोळा करीत आहोत. अशा परिस्थितीत,  हा डेटा अधिका-यांना व्हायरसच्या मानवी-मानव-संक्रमणाचा शोध घेण्यात मदत करेल.हा डेटा आमच्या मानव संसाधन कार्यालयात संग्रहित केला जाईल आणि लोकांच्या आरोग्याच्या क्षेत्रात लोकांच्या हिताच्या कारणास्तव स्थानिक अधिकार्‍यांकडून अधिकृत विनंती केली जात नाही तोपर्यंत कोणत्याही तृतीय पक्षाशी सामायिक केला जाणार नाही.जोपर्यंत सार्वजनिक अधिकार्‍यांकडून दीर्घ मुदतीची आवश्यकता नसेल, तोपर्यंत डेटा पत्रक संग्रहानंतर एका महिन्यानंतर हटविला जाईल. तुमच्या सहकार्यासाठी धन्यवाद !";
    	declfinal.textContent = "अस्वीकरण / DECLARATION:";
    	iconfirm.textContent = "मी पुष्टी करतो की या फॉर्ममध्ये दिलेली माहिती सत्य, पूर्ण आणि अचूक आहे.";
    	yesAns.textContent = "होय";
    	yesAns1.textContent = "होय";
    	yesAns2.textContent = "होय";
    	yesAns3.textContent = "होय";
    	yesAns4.textContent = "होय";
    	yesAns5.textContent = "होय";
    	yesAns6.textContent = "होय";
    	noAns.textContent = "नाही";
    	noAns1.textContent = "नाही";
    	noAns2.textContent = "नाही";
    	noAns3.textContent = "नाही";
    	noAns4.textContent = "नाही";
    	noAns5.textContent = "नाही";
    	noAns6.textContent = "नाही";
    	majkurTip.textContent = "टीप: कृपया फक्त इंग्रजी भाषेत फॉर्म डेटा भरा..मराठी निवड केवळ मजकुरासाठी आहे...!!!";

    	agree_Travel.textContent = "6 ट्रॅकिंग पॉईंट ";
    	nostopIntravel.textContent = "ऑफिस किंवा कंपनीच्या प्रवासादरम्यान आपल्याला थांबण्याची परवानगी नाही";
    	
    	asetu.textContent = "2 आरोग्य सेतू मोबाइल अ‍ॅप स्थापित(Install) आणि नोंदणी(Register) करा"; 
       	setuapp.textContent = "आपण आरोग्य सेतू मोबाइल अ‍ॅप स्थापित (install) करुन नोंदणी केली आहे का ?"; 
       	setu_info.textContent = "आर्योग्या सेतू हा COVID-19 विरूद्ध एकत्रित लढा देत,अत्यावश्यक आरोग्य सेवा भारतीय लोकांशी जोडण्यासाठी भारत सरकारने विकसित केलेला मोबाइल अनुप्रयोग आहे.COVID-19 च्या नियंत्रणासंदर्भात जोखीम,सर्वोत्तम पद्धती आणि संबंधित सल्लाांविषयी अ‍ॅपच्या वापरकर्त्यांना कृतीशीलपणे माहिती देणे आणि त्याबद्दल भारत सरकारच्या,विशेषत: आरोग्य विभागाच्या पुढाकारांना वाढविणे हे या अ‍ॅपचे लक्ष्य आहे."; 
     } 
     
    }
    
    function getFamilyDetails(str) {
    	
    	var hid = document.getElementById("hid").value; 
		var xmlhttp;
		if (window.XMLHttpRequest) {
			// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {
			// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				var a = null;
				document.getElementById("noFamily").innerHTML = xmlhttp.responseText; 
			}
		};
		xmlhttp.open("POST", "GetFamilynoForm_Ajax.jsp?q=" + str + "&hid=" + hid, true);  
		xmlhttp.send();
	};
	
	

</script>            
  <!-- color picker -->

  <!-- Custom styles -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />
 
</head>

<body style="color: black;font-family: Arial, Helvetica, sans-serif;">  
     <%
     try{
    	 Connection con = Connection_Util.getLocalUserConnection();
     	PreparedStatement ps_comp = null;
     	ResultSet rs_comp=null;
     %>
    <div class="row"> 
          <div class="col-lg-12">
            <section class="panel">  
                  <div class="panel-heading"><b style="color: black;font-family: Arial, Helvetica, sans-serif;">Display Language :</b>
                  <div class="btn-group">
                  <button class="btn btn-default lang" type="button" id="en" onclick="changeLang('en')">ENGLISH</button>
                      <button class="btn btn-default lang" type="button" id="ru"  onclick="changeLang('ru')">MARATHI</button> 
                      <input type="hidden" id="hid" value="en">
                   </div>  
                  </div>  
			<div class="panel panel-primary"> 
                  <h4 class="panel-title panel-heading">
                                      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                         <b id="declare">Corona virus Self-Declaration Form</b>
                                      </a>
<span id="majkurTip" style="font-size:12px;font-weight:bold;background-color:yellow; color: black;margin-left: 50px;"> Note : Please update form data in English Language only..Marathi selection is for Label Only..!!!</span>
                                  </h4> 
                <div id="collapseOne" class="panel-collapse collapse in">
                  <div class="panel-body">
                 <span id="note" style="color: black;">Due to the ongoing and rapidly changing situation with the novel corona-virus (COVID-19), 
                   we are requiring all visitors to  the Mutha Group Premises, to fill-out the self-declaration form below.
				   Mutha Group will make a decision on access to the school based on the answers provided below.</span>  
                  </div>
                </div>
                
              </div>
              
              
              
               <form class="form-horizontal" action="SelfDeclare_Control" method="post" onsubmit="return validateForm()">
   			<div class="panel panel-primary"> 
             <h4 class="panel-title panel-heading" id="mustfill" style="font-weight: bold;">1 Each visitor must complete this form :</h4> 
            </div>      
          <div class="panel-body"> 
                  <div class="form-group">
                    <label class="col-sm-2 control-label"><span id="fullname" style="color: black;">Full Name</span><span style="color: red;" class="required">*</span></label>
                    <div class="col-sm-10">
                      <input type="text" style="color: black;" onkeypress="return (event.charCode > 64 &&  event.charCode < 91) || (event.charCode > 96 && event.charCode < 123)" name="fullname" id="fullname" class="form-control" required>
                    </div>
                  </div>
                  
                   <div class="form-group">
                    <label class="col-sm-2 control-label"><span id="contactNo" style="color: black;">Contact No</span><span style="color: red;" class="required">*</span></label>
                    <div class="col-sm-10">
                      <input type="text" style="color: black;" name="contactNo" id="contactNo"  oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');" maxlength="10" class="form-control" required>
                    </div>
                  </div>
                  
                  
                  
                  <div class="form-group">
                    <label class="col-sm-2 control-label"><span id="contact_address" style="color: black;">Contact Address</span><span style="color: red;" class="required">*</span></label>
                    <div class="col-sm-10">
                      <input type="text" style="color: black;" name="contact_address" id="contact_address" class="form-control" required>
                    </div>
                  </div>
                  
                  
                   <div class="form-group">
                    <label class="col-sm-2 control-label"><span id="emergency_contNo" style="color: black;">Emergency contact No</span><span style="color: red;" class="required">*</span></label>
                    <div class="col-sm-10">
                      <input type="text" style="color: black;" name="emergency_contNo" id="emergency_contNo"  oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');" maxlength="10" class="form-control" required>
                    </div>
                  </div>
                  
                  <div class="form-group">
                    <label class="col-sm-2 control-label"><span id="email" style="color: black;">Email Id</span></label>
                    <div class="col-sm-10">
                      <input style="color: black;" type="text" name="email" id="email" class="form-control">
                    </div>
                  </div>
                  
                  
                  
                  <div class="form-group">
                    <label class="col-sm-2 control-label"><span id="working_in" style="color: black;">Work at</span><span style="color: red;" class="required">*</span></label>
                    <div class="col-sm-10">
                    
                <select class="form-control" name="working_in" id="working_in" style="font-weight: bold;color: black;" required>
                                              <option value=""> - - - - Select - - - - </option>
                <%  
                	ps_comp = con.prepareStatement("SELECT * from user_tbl_company where enable=1");
                	rs_comp = ps_comp.executeQuery();
                	while(rs_comp.next()){
                %>                              
                    <option value="<%=rs_comp.getInt("Company_Id")%>"><%=rs_comp.getString("Company_Name") %></option>  
                <%
                	}  
                %>
	            </select> 
                    </div>
                  </div>
                   
                  
                  <div class="form-group">
                    <label class="col-sm-2 control-label"><span id="emp_id" style="color: black;">Employee Id (If Any)</span></label>
                    <div class="col-sm-10">
                      <input style="color: black;" type="text" name="emp_id" id="emp_id" class="form-control">
                    </div>
                  </div> 
              </div>    
              
              
              
              
              
              
              
              <div class="panel panel-primary"> 
             <h4 class="panel-title panel-heading"  style="font-weight: bold;"><span id="asetu">2 Install and Register with Aarogya Setu Mobile App</span>               
             </h4> 
             
            </div>      
          <div class="panel-body"> 
                  <div class="panel panel-primary">  
 			<span id="setu_info" style="font-weight:bold; font-family: "Times New Roman", Times, serif;">
             Aarogya Setu is a mobile application developed by the Government of India to connect essential health services with the people of India in our 
             combined fight against COVID-19. The App is aimed at augmenting the initiatives of the Government of India, 
             particularly the Department of Health, in proactively reaching out to and informing the users of the app regarding risks,
              best practices and relevant advisories pertaining to the containment of COVID-19.
             </span> 
                  </div> 
                  <div class="form-group">
                    <label class="col-sm-2 control-label"><span id="setuapp">Did you install and register with Aarogya Setu Mobile App ?</span><span style="color: red;" class="required">*</span></label>
                    <div class="col-sm-10"> 
  						<input type="radio" id="aSetuReg" name="aSetuReg" value="yes" required> <span id="yesAns" style="color: black;">YES</span>  &nbsp;&nbsp;&nbsp;&nbsp;
  						<input type="radio" id="aSetuReg" name="aSetuReg" value="no" required> <span id="noAns" style="color: black;">NO</span> 
                    </div>
                  </div>  
              </div>    
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
          <div class="panel panel-primary"> 
             <h4 class="panel-title panel-heading"  style="font-weight: bold;"><span id="haveFlu" style="color: black;"> 3 Do you have any of the following flu-like symptoms:</span></h4> 
            </div>      
          <div class="panel-body"> 
                  <div class="form-group">
                    <label class="col-sm-2 control-label"><span id="fev_radio" style="color: black;">Fever (38 Degree or higher)</span><span style="color: red;" class="required">*</span></label>
                    <div class="col-sm-10"> 
  						<input type="radio" id="fev_radio" name="fev_radio" value="yes" required> <span id="yesAns1" style="color: black;">YES</span>  &nbsp;&nbsp;&nbsp;&nbsp;
  						<input type="radio" id="fev_radio" name="fev_radio" value="no" required> <span id="noAns1" style="color: black;">NO</span> 
                    </div>
                  </div> 
                   
                  <div class="form-group">
                    <label class="col-sm-2 control-label"><span id="cough" style="color: black;">Cough</span><span style="color: red;" class="required">*</span></label>
                    <div class="col-sm-10"> 
  						<input type="radio" id="cough" name="cough" value="yes" required> <span id="yesAns2" style="color: black;">YES</span>  &nbsp;&nbsp;&nbsp;&nbsp;
  						<input type="radio" id="cough" name="cough" value="no" required> <span id="noAns2" style="color: black;">NO</span> 
                    </div>
                  </div> 
                   
                   
                   <div class="form-group">
                    <label class="col-sm-2 control-label"><span id="breathlessness" style="color: black;">Breathlessness</span><span style="color: red;" class="required">*</span></label>
                    <div class="col-sm-10"> 
  						<input type="radio" id="breathlessness" name="breathlessness" value="yes" required> <span id="yesAns3" style="color: black;">YES</span>  &nbsp;&nbsp;&nbsp;&nbsp;
  						<input type="radio" id="breathlessness" name="breathlessness" value="no" required> <span id="noAns3" style="color: black;">NO</span> 
                    </div>
                  </div> 
                  
                  <div class="form-group">
                    <label class="col-sm-2 control-label"><span id="sore_throat" style="color: black;">Sore Throat</span><span style="color: red;" class="required">*</span></label>
                    <div class="col-sm-10"> 
  						<input type="radio" id="sore_throat" name="sore_throat" value="yes" required> <span id="yesAns4" style="color: black;">YES</span>  &nbsp;&nbsp;&nbsp;&nbsp;
  						<input type="radio" id="sore_throat" name="sore_throat" value="no" required> <span id="noAns4" style="color: black;">NO</span> 
                    </div>
                  </div> 
                   
                   <div class="form-group">
                    <label class="col-sm-2 control-label"><span id="other_fev" style="color: black;">Others: Please specify</span></label>
                    <div class="col-sm-10">  
                    <input type="text" style="color: black;" name="other_fev" id="other_fev" class="form-control">
                    </div>
                  </div>                  
                   
              </div>     
              
          <div class="panel panel-primary"> 
             <h4 class="panel-title panel-heading"  style="font-weight: bold;"><span id="anyTrav14Days" style="color: black;">4 Please list the country/cities you have Traveled to in the last 14 days prior to arriving at Mutha Group Premises</span> </h4> 
            </div>      
            
            <div class="form-group">
                    <label class="col-sm-2 control-label"><span id="travel_14Yes" style="color: black;">Traveled before 14 days..?</span><span style="color: red;" class="required">*</span></label>
                    <div class="col-sm-10"> 
  						<input type="radio" id="travel_14Yes" name="travel_14" value="yes" required> <span id="yesAns5" style="color: black;">YES</span>  &nbsp;&nbsp;&nbsp;&nbsp;
  						<input type="radio" id="travel_14No" name="travel_14" value="no" required> <span id="noAns5" style="color: black;">NO</span> 
                    </div>
                  </div> 
            
          <div class="panel-body"> 
                  <div class="form-group">
                    <label class="col-sm-2 control-label"><span id="name_cityTravel" style="color: black;">Name of Country / Cities (Saparated by Comma's)</span></label>
                    <div class="col-sm-10"> 
  						<input type="text" style="color: black;" name="name_cityTravel" id="name_cityTravel" class="form-control">
                    </div>
                  </div>
           </div>
            
            <div class="panel-body"> 
                  <div class="form-group">
                    <label class="col-sm-2 control-label"><span id="arrivalDate_cityTravel" style="color: black;">Date of arrival (Home Place)</span></label>
                    <div class="col-sm-10">  
  						<input id="dp2" style="color: black;" name="arrivalDate_cityTravel" data-date-format="dd-mm-yyyy" type="text"  size="16" class="form-control" readonly="readonly">
                    </div>
                  </div>
           </div>
            
           <div class="panel-body"> 
                  <div class="form-group">
                    <label class="col-sm-2 control-label"><span id="departDate_cityTravel" style="color: black;">Date of departure (Last Place Visited)</span></label>
                    <div class="col-sm-10">  
  						<input id="dp3" style="color: black;" name="departDate_cityTravel" data-date-format="dd-mm-yyyy" type="text"  size="16" class="form-control" readonly="readonly">
                    </div>
                  </div>
           </div>
              
              
              
              <div class="panel panel-primary"> 
             <h4 class="panel-title panel-heading"  style="font-weight: bold;"><span id="closelead14" style="color: black;">5 Have you or an immediate family member come in close contact with a confirmed case of the coronavirus in the last 14 days..? (Close contact : means being at a distance of less than one metre for more than 15 minutes.)</span></h4> 
            </div>      
            
            <div class="form-group">
                    <label class="col-sm-2 control-label"><span id="close_contact" style="color: black;">I have been in close contact with a confirmed case of corona virus in the last 14 days</span><span style="color: red;" class="required">*</span></label>
                    <div class="col-sm-10">  
  						<input type="radio" id="close_contact" name="close_contact" value="yes" required> <span id="yesAns6" style="color: black;">YES</span>  &nbsp;&nbsp;&nbsp;&nbsp;
  						<input type="radio" id="close_contact" name="close_contact" value="no" required> <span id="noAns6" style="color: black;">NO</span> 
                    </div>
             </div> 
                  
           
           <div class="panel panel-primary"> 
             <h4 class="panel-title panel-heading tr" style="font-weight: bold;"><span id="fam_head" style="color: black;">5.1 Family Details Required </span></h4> 
            </div> 
           
           <div class="form-group">
               <label class="col-sm-2 control-label"><span id="no_ofFamily" style="color: black;">Total Family Members</span><span style="color: red;" class="required">*</span></label>
               <div class="col-sm-10"> 
                    <select class="form-control" onchange="getFamilyDetails(this.value)" name="no_ofFamily" id="no_ofFamily" style="font-weight: bold;color: black;font-family: Arial, Helvetica, sans-serif;" required>
                                              <option value=""> - - - - Select - - - - </option>
                <%
                for(int i=1;i<21;i++){
                %>                              
                    <option value="<%=i%>"><%=i%></option>  
                <%
                	} 
                %>
                
                 </select> 
              </div>
            </div>
            
           <span id="noFamily"></span>      
           
           
           
           
             <div class="panel panel-primary"> 
             <h4 class="panel-title panel-heading"  style="font-weight: bold;"><span id="agree_Travel" style="color: black;">6 Tracking Point</span></h4> 
            </div>      
             <div class="panel-body">  
 			<span id="nostopIntravel" style="font-family: "Times New Roman", Times, serif;">
            No stopping on the way to office or company
            </span>  
              </div> 
           
           
           
           
                  
           <div class="panel panel-primary" style="margin-left: 5px;margin-right: 5px;">  
                  <!-- <button data-dismiss="alert" class="close close-sm" type="button"> <i class="icon-remove"></i> </button> --><br>
                  <strong id="notePlease">Please Note :</strong><br/> <span id="notepls" style="color: black;">This document will be retained confidentially by the company for one month after submission. The health and well being of our community is our first priority therefore Mutha Group reserves the right to deny entry to the premises.</span>
                <br/><br/>
                 <strong id="prvNote">Private Data Protection notice :</strong><br/><span id="artNote" style="color: black;">We are collecting and processing this personal data on the basis of Art. 6 (1)(f) and Art.9 (2)(i) Regulation (EU) 2016/679 ("GDPR") being necessary for the purposes of the legitimate interests pursued by Mutha Group Satara and necessary for protecting against serious cross-border threats to health.</span>
               <br/><br/>
                <span id="otbreak" style="color: black;">We do this as preventive measures for our community to mitigate the risk of a novel Coronavirus disease (COVID-19) outbreak in our premises.</span> <br/>
                <br/><span id="also" style="color: black;">Also,</span> <br/>
				<span id="impNote" style="color: black;"> we are collecting personal data to be able to support local authorities in case of an outbreak in Pune, Maharashtra, India. In such a case, this data will help the authorities to trace a human-to-human transmission of the Virus.
				This data will be stored in our HR office and is not shared with any third party, unless there will be an official request by the local authorities for reasons of public interest in the area of public health.
				The data sheet will be deleted one month after collection, unless a longer period is required by the public authorities. Thank you for your cooperation!</span>
 				<br/><br/>
                 <strong id="declfinal">DECLARATION :</strong><br/>
                &nbsp;&nbsp;&nbsp; <input type="checkbox" id="declaration" name="declaration" required> 
              <span id="iconfirm" style="color: black;"> I confirm that the information given in this form is true, complete and accurate.</span>   <br/>
             
            </div>      
              <div class="form-group">
                      <div class="col-lg-offset-2 col-lg-10">  
                        
 <input type="submit" class="btn btn-primary" id="Save" name="submit" style="font-weight: bold;" value="Submit Data"/>                       
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="selfdeclare.jsp" style="font-weight: bold;color: yellow;" class="btn btn-primary">Clear Data</a>             
                       </div>
                      <br/><br/><br/>
                    </div> 
               </form>
 <%
     }catch(Exception e){
    	e.printStackTrace(); 
     }
 %>              
 </section>
 </div>
  <!-- javascripts -->
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/jquery.nicescroll.js" type="text/javascript"></script>

  <!-- jquery ui -->
  <script src="js/jquery-ui-1.9.2.custom.min.js"></script>

  <!--custom checkbox & radio-->
  <script type="text/javascript" src="js/ga.js"></script>
  <!--custom switch-->
  <script src="js/bootstrap-switch.js"></script>
  <!--custom tagsinput-->
  <script src="js/jquery.tagsinput.js"></script>

  <!-- colorpicker -->

  <!-- bootstrap-wysiwyg -->
  <script src="js/jquery.hotkeys.js"></script>
  <script src="js/bootstrap-wysiwyg.js"></script>
  <script src="js/bootstrap-wysiwyg-custom.js"></script>
  <script src="js/moment.js"></script>
  <script src="js/bootstrap-colorpicker.js"></script>
  <script src="js/daterangepicker.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <!-- ck editor -->
  <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
  <!-- custom form component script for this page-->
  <script src="js/form-component.js"></script>
  <!-- custome script for all page -->
  <script src="js/scripts.js"></script>

</body>
</html>