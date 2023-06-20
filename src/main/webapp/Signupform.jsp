<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>validation form</title>
  </head>
  <body>
    <form action="#" method="post" onsubmit="return validate()">
    	<div class="form-group">
    	
   
   			 <label>Full Name:</label>
	   		<input type="text" class="form-control" id="txtfullname" size="20">
        </div>
         <small class="text-danger" id="chkfullname"></small>
         
         <div class="form-group">
				<label>Gender:</label>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"/> 
					<label class="form-check-label" for="inlineRadio1">Male</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"/> 
						<label class="form-check-label" for="inlineRadio2">Female</label>
				</div>
				</div>
			<small class="text-danger" id="selectMF"></small>

       
        <div class="form-group">
                <label>Phone Number:</label>
                <input type="text" class="form-control" id="txtfullnumber" />
		</div>
			<small class="text-danger" id="chkfullnumber"></small>
			
		<div class="form-group">
				<label>Address :</label>
				<textarea rows="5" cols="3" id="fulladdress" class="form-control"></textarea>
			</div>
			<small class="text-danger" id="chkfulladd"></small>



			<div class="form-group">
				<label for="exampleFormControlSelect1">Select City:</label> <select
					class="form-control" id="exampleFormControlSelect1">
					<option>Select City</option>
					<option>Nagpur</option>
					<option>Mumbai</option>
					<option>Chandrapur</option>
					<option>Amrawati</option>
					<option>Gadchiroli</option>
				</select>
			</div>
			<small class="text-danger" id="chkfullcity"></small>
			
			

			<div class="form-group">
			<label>Select Language:</label>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox"
						id="inlineCheckbox1" value="option1"> <label
						class="form-check-label" for="inlineCheckbox1">English</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox"
						id="inlineCheckbox2" value="option2"> <label
						class="form-check-label" for="inlineCheckbox2">Hindi</label>
				</div>
				
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox"
						id="inlineCheckbox3" value="option2"> <label
						class="form-check-label" for="inlineCheckbox2">Marathi</label>
				</div>
			</div>
			<small class="text-danger" id="chkfulllanguage"></small>

				
			
        <div class="form-group">
   			 <label>Email:</label>
	   		 <input type="text" class="form-control" id="txtemail" size="30" >
        </div>
         <small class="text-danger" id="chkemail"></small>
      
        <div class="form-group">
   			 <label>Password:</label>
	   		<input type="password" class="form-control" id="txtpassword"  size="20">
        </div>
         <small class="text-danger" id="chkpassward"></small>
       
       <div class="form-group">
       		<label>Date:</label>
       		<input type="date" class="form-control" id="txtdate">
       </div>
       <small class="text-danger" id="chkdate"></small>
       
      <div class="form-group">
       			 <button type="submit" class="btn btn-success">Submit</button>
       </div>
       
</form>
<script>
		function validate() {
			//name
			var fullname=document.getElementById('txtfullname').value;
		    var letters = /^[A-Za-z\s]+$/;
		    
		  // phone number
			var phone = document.getElementById('txtfullnumber').value;
			var phoneno = /^\d{10}$/;
			
			//for address
			var address=document.getElementById('fulladdress').value;
			var addressletters = /^[0-9a-zA-Z\s]+$/;

			//fordropdown
			var city=document.getElementById('exampleFormControlSelect1').value;
			
			//for male and Female
			var genderM=document.getElementById('inlineRadio1').value;
			var genderF=document.getElementById('inlineRadio2').value;
			
			//check box
			var language1 = document.getElementById('inlineCheckbox1').value;
			var language2 = document.getElementById('inlineCheckbox2').value;
			var language3 = document.getElementById('inlineCheckbox3').value;
			
			
		    //email
			var email=document.getElementById('txtemail').value;
			var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
			
			//password
			var password=document.getElementById('txtpassword').value;
			var passw=  /^[A-Za-z]\w{7,14}$/;
			
			//date
			var date=document.getElementById('txtdate').value;
			var dateformat = /^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/;

			
		
			if(fullname=="" ||  fullname==null)
				{
				    document.getElementById('chkfullname').innerHTML="*full name required";
					document.getElementById('txtfullname').focus;
					return false;
			    }
			else
				if(!fullname.match(letters))
				{
					 document.getElementById('chkfullname').innerHTML="Alpha numeric value should be in letter";
				     document.getElementById('txtfullname').focus;
					return false;
				}
			
		    else
					if(document.getElementById('inlineRadio1').checked==false && document.getElementById('inlineRadio2').checked==false){
						
						document.getElementById('selectMF').innerHTML = "* You must select male or female!";
						return false;
					}
			
					else
						if (phone == "" || phone == null) {
							document.getElementById('chkfullnumber').innerHTML = "* Full Number Required!";

							document.getElementById('txtfullnumber').focus();
							return false;
						}
						else if (!phone.match(phoneno)) {

							document.getElementById('chkfullnumber').innerHTML = "* Enter only 10 digit phone number!";

							document.getElementById('txtfullnumber').focus();
							return false;
							}
			
						else if (address == "" || address == null) {
							document.getElementById('chkfulladd').innerHTML = "* Enter only AlphaNumeric Charachter!";

							document.getElementById('fulladdress').focus();
							return false;
						}
						
						else if (!address.match(addressletters)) {

							document.getElementById('chkfulladd').innerHTML = "* Enter appropriate Address!";

							document.getElementById('fulladdress').focus();
							return false;
                         }
						else
							if(city=='Select City' || city ==""){
								document.getElementById('chkfullcity').innerHTML = "*Please Select City!";
								document.getElementById('exampleFormControlSelect1').focus();
								return false;
							}
								
							else
								if(document.getElementById('inlineCheckbox1').checked==false && document.getElementById('inlineCheckbox2').checked==false &&
										document.getElementById('inlineCheckbox3').checked==false){
									
									document.getElementById('chkfulllanguage').innerHTML = "* Select Atleast One Language!";
									return false;
								}
					
		     else
				   if(email=="" ||  email==null)
				  {
				        document.getElementById('chkemail').innerHTML="* email Id is Requied";
					     document.getElementById('txtemail').focus;
					     return false;
			    }
			
		 	 else
			  		if(!email.match(mailformat))
					{
				     		 document.getElementById('chkemail').innerHTML="Alpha numeric value should be in letter";
					 		 document.getElementById('txtemail').focus;
							return false;
					}
		   
			
			  else
					if(password=="" ||  password==null)
					{
					    document.getElementById('chkpassward').innerHTML="* Password is Requied";
						document.getElementById('txtpassword').focus;
						return false;
				    }
			  else
				  if(!passw.match())
					{
					      document.getElementById('chkpassward').innerHTML="Alpha numeric value should be in letter";
						  document.getElementById('txtpassword').focus;
							return false;
					}
			
				  else
					  if(date=="" || date==null)
						  {
						   			document.getElementById('chkdate').innerHTML="* date requierd";
						   		 document.getElementById('txtdate').focus;
						  }
					  else
						  if(!dateformat.match())
							{
							      document.getElementById('chkdate').innerHTML=" add correct date";
								  document.getElementById('txtdate').focus;
									return false;
							}
			
		      else
				 return true;
			
		}
</script>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>