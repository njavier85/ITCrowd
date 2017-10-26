<%@ page session="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
	<title>SkyMira GPS Login</title>
	<link rel="stylesheet" href="resources/css/reset.css">
	<link rel="stylesheet" href="resources/css/styles.css">
	<link rel="stylesheet" href="resources/css/print.css">
	<link rel="stylesheet" href="resources/css/slidetabs.css">
	<link rel="stylesheet" href="resources/css/styles(1).css">
  </head>
  
  <body style="background-position: 50px 0px;" class="interior">
    <div id="container" style="background-position: 0px -25px">
      <div id="header" style="height: auto">
	
	<div id="ctl00_Header1_pnlSearch" onkeypress="javascript:return WebForm_FireDefaultButton(event, &#39;ctl00_Header1_btnSearch&#39;)">
	  													    
	  <a id="logo" href="http://www.skymira.com/index.htm"><img src="/resources/images/top_logo.gif" alt="Image of SkyMira logo" title="SkyMira"></a>
	  <ul id="utilities">
	    <li>Client Login</li>
	    <li>|</li>
	    <li>Contact Us</li>
	    <li>|</li>

	    <li> </li>
	    <li><strong>866.521.0540</strong></li>
	  </ul>
	</div>       
	<div id="topNav">
	  <div id="tagline">
	    <img src="./SkyMira GPS Login_files/tagline.gif" alt="">
	  </div>
	    
	  <!--START MENU-->
	    
	    
	</div>
	  
	  
	<div id="sectionalGraphic" style="height: 182px; overflow: hidden;">
	<img border="0" alt="" src="/resources/images/header_login.jpg">
	
	
	</div>
    </div>


    <div id="main5" style="text-align: center; margin-left: 0 auto; margin-right: 0 auto; margin-top: 30px; margin-bottom: 50px;border-bottom: 0px solid #AEB6C1">
	<table cellpadding="0" cellspacing="0" border="0" style="text-align: left; margin: 0 auto">
	  <tbody><tr>
	    <td valign="top" id="content">
	      <h1>Insert a new Item</h1>
	      <p>Please enter the description of the item:</p>
	      <form:form action='saveItem' method="post" name="myForm" onsubmit="return validateItem()" commandName="item">
	      		<form:input path="id" type="hidden" id="id" />
				<table width="20%" border="0">
				  <tbody>
					  <tr> 
					    <td class="form-label">Description: </td>
					    <td class="form">
					    	<form:input path="description" type="text" onclick="onclickCleanField('descriptionerror')" id="description" placeholder="Description" />
							<form:errors path="description" style="color:red" />
						    <p id="descriptionerror" style="color:red"></p>
					    </td>
					  </tr>
					  <tr> 
					    <td>&nbsp;</td>
					    <td align="right" valign="center"> 
					      <input type="submit" name="login" value="add/update" width="100%">
					    </td>
					  </tr>
				 </tbody>
				</table>
				<br>
	      </form:form>
	    </td>
	  </tr>
	</tbody></table>
	<div >
					<a href="<c:url value='/' />" >
                        <button>Atras</button>
                    </a>
				</div>
      </div>
      <!--	<div class="clear" style="border-top: 0px solid #376095"></div> -->
      
      <div id="footer" style="float: none; background: none; border-top: 1px solid #CCCCCC; border-width: 1px 0px 0px 0px; padding-bottom: 20px;">
	<ul style="float: right;background-color: #376095; padding: 9px 3px 9px 11px; margin-top:0px;border-color: #CCCCCC; border-width: 1px">
	  <li>Home</li>
	  <li>|</li>
	  <li>Privacy Policy</li>
	  <li>|</li>
	  <li>Site Map</li>
	  <li>|</li>
	  <li>Copyright 2013</li>
	  <li>|</li>
	  <li>866.521.0540</li>
	</ul>
      </div>
    </div>
  

  
</body>
<script src="resources/js/jquery.js"></script>
	
	<script>
		function onclickCleanField(idfield){
	      document.getElementById(idfield).style.display="none";
	    }
			
		function validateItem() {
			var descriptionNullText = "Description must not Empty!";
	        var description = document.forms["myForm"]["description"].value;
	        if (description == null || description == "") {
	            document.getElementById("descriptionerror").innerHTML = descriptionNullText;
	            $('#descriptionerror').show();
	            return false;
	        }
	        if(description.length > 25){
	        	document.getElementById("descriptionerror").innerHTML = "The description must be less than 25 chars";
	            $('#descriptionerror').show();
	            return false;
	        }
	        document.getElementById("mySubmitButton").disabled = true; 
		}
	</script>	

</html>