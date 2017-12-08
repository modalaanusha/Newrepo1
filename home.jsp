<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Final_Project</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"
	integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r"
	crossorigin="anonymous">



<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous"></script>
<!-- Custom styles for this template -->
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- Latest compiled and minified JavaScript -->
<link href="resources/CSS/stylesheethome.css" rel="stylesheet">

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    <!-- Custom styles for this template -->
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
  <script>
  $( function() {
    $( "#datepicker1" ).datepicker();
  } );
  </script>
  <script>
function search(){
	
	$.ajax({
			type: "POST",
            url:  "ajaxsearch",
            data: "srccity=" +$("#srccity").val(),
		   success: funcion(res){
			var result = "<thead><tr><td>ID</td><td>id</td><td>destcity</td></tr></thead>";
			result += "<tbody>";
			$each(res, function(k,v){
				result += "<tr>";
				result += "<td>";
				result += v.id;
				result += "</td>";
				result += "<td>";
				result += v.destCity;
				result += "</td>";
				result += "</tr>";
			});
			result += "</tbody>";
			$("#result").html(result);
		},
		error: function(){
			alert('Error while request');
		}
	});
	
}

</script>
   
  </head>

  <body>

    <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        <img src="resources/images/logo.gif" alt="logo" height="90" width="300">
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a href="flights.htm"> <br>Flights</a></li>
            <li><a href=""><br>Hotels</a></li>
            <li><a href=" "><br>Things to do</a></li>
            <li><a href="#about"><br>Cars</a></li>
          </ul>
		 
          <ul class="nav navbar-nav navbar-right">
           
            <li><a href="login.htm"><img src="resources/images/login.png" alt="login" height="60" width="60"></a></li>
            <li><a href="../navbar-static-top/"></a></li>
          </ul>
        </div>
      </div>
    </nav>

    <div class="container">

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
        
        <div class="container" id="#topleft">
<form>
<fieldset>
<!-- Text input-->
<div class="row" style="margin-bottom:20px;">
<div class="form-group" style="margin-bottom:0px;">
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
  <input  placeholder="Source City" class="form-control" type="text"
  id="srccity" />
    </div>
  </div>
</div>
<div class="form-group">
  <div class="col-md-6">
    <button type="button" class="btn btn-warning" style="font-weight:bold" 
    onclick="search();">
    Search Flights <span class="glyphicon glyphicon-search"></span></button>
  </div>
</div>
</div>
</fieldset>
<button type="button"  
    onclick="search();">
    Search Flights </button>
</form>
    
<table id="result">
<thead>
<tr>
<td>ID</td>
<td>srccity</td>
<td>destcity</td>
</tr>
</thead>
</table>
</div>
</div>
      </div>

     <!-- /container -->
	<div class="row">
	<div class="col-md-4">
	<img src="resources/images/first.JPG" alt="image" height="300" width="450">
	</div>
	<div class="col-md-4">
	<img src="resources/images/second.JPG" alt="image" height="300" width="400">
	</div>
	<div class="col-md-4">
	<img src="resources/images/Capture3.JPG" alt="image" height="300" width="350">
	</div>
	
	</div>
	


  </body>
</html>

