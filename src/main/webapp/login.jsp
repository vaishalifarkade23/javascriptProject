<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>form!</title>
  </head>
  <body>
  
   <div class="container">
  <div class="row">
               <div class="col col-lg-2 col-md-6 col-sm-6 col-xs-12">
               </div>
                <div class="col col-lg-8 col-md-6 col-sm-6 col-xs-12">
                <div style="border: thin solid black; padding: 20px">
       	       <div class="form-group">
              <label>User Name:</label>
       	      <input type="text" name="FirstName" class="form-control" id="user" size="20">
       	      </div>
              <div>
                    <div class="form-group">
                    
                    <label> Password:</label>
       	            <input type="password" name="password" class="form-control" id="pass" size="20" >
       	            <span id="error"></span>
       	            </div>
                          
       	             <div class="form-group">
                    <button type="submit" class="btn btn-success" onclick="myfunction()">LOGIN</button>
                    </div>
                    </div>
                    </div>
                    </div>
    		    <div class="col col-lg-2 col-md-6 col-sm-6 col-xs-12">
               </div>
              </div>
               </div>
               
    <script>
    			function myfunction(){
    				var username=document.getElementById("user").value;
    				var password=document.getElementById("pass").value;
    				 var error= document.getElementById("error");
    				if(username == "admin" && password=="admin@123")
    					{
    						alert("login successfully");
    					}
    				else
    					{
    					    error.innerHTML="<span style='color:red';>"+"enter avalid password</span>" 
    					}
    			}
    </script>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>