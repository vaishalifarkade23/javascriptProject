<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>gender</title>
  </head>
  <body>
           <form action="test.jsp" method="post" onsubmit="return validate()">
      <div class="form-group">
       <label>Gender:</label>
       <div class="form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="rmale" value="option1"/>
			<label class="form-check-label" for="inlineRadio1">Male</label>
        </div>
        <div class="form-check-inline">
			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="rfemale" value="option2"/>
			<label class="form-check-label" for="inlineRadio2">FeMale</label>
        </div>
       </div>
       <small class="text-danger" id="chkgender"></small>
       
       <div class="form-group">
       			 <button type="submit" class="btn btn-success">Submit</button>
       </div>
       
       
       <script>
		function validate() {
			 if(document.getElementById('rmale').checked==false && document.getElementById('rfemale').checked==false)
			 {
			 	alert("Please Select Gender");
			 	return false;
			 }
      else
		 return true;
    
</script>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>