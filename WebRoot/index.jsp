<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

		<!-- jQuery CSS-->
		<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">

		<!-- FontAwesome-->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">


		<script src="//code.jquery.com/jquery-1.10.2.min.js"></script>

		<!-- jQuery UI-->
		<script src="//code.jquery.com/ui/1.11.4/jqueryui/1.11.4/jquery-ui.js"></script>

		<!-- Latest compiled and minified JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  </head>
  
  <body>
    <nav class="navbar navbar-default navbar-inverse navbar-static-top" role="navigation">
	<div class="container-fluid"> <!-- 想左填充满-->
		 <div class="navbar-header">  <!--在网页变化时 button 缩在一起 -->
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-Mark-navbar-collapse-1">

				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"> MarkLiu Log
				<!-- <img src="image/2b.png"> -->
			</a>
		 </div>

	<div class="collapse navbar-collapse navbar-right" id="bs-Mark-navbar-collapse-1">
		<ul class="nav navbar-nav">
			<li><a href="index.html">Home</a></li>
			<li><a href="#">Blog</a></li>
			<li><a href="#">Contact</a></li>
		<li class="dropdown">
         	 <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Mark Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Link1</a></li>
            <li><a href="#">Link2</a></li>
            <li><a href="#">Link3</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
      	</li>
		</ul>
	</div>
</div>
</nav>
<!-- End of Navgation Bar-->

<div class="container">
	<div class="col-md-7">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Contact Form</h3>
				</div>
				<div class="panel-body">
					<form class="form-horizontal" onSubmit="return beforeSubmit(this)" id="contactform" method="post" action="test.action" role="form" >
						  <div class="form-group">
								<label for="contactname" class="col-sm-2 control-label">Name</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="contactname" name="information.name"  placeholder="Enter Name">
									<!--<span id="helpBlock" class="help-block">Please enter your first and last name</span -->								</div>
						  </div>

						  <div class="form-group">
							    <label for="contactemail" class="col-sm-2 control-label">Email address</label>
							    <div class="col-sm-10">
							    	<input type="email" class="form-control" id="contactemail" name="information.email" placeholder="Enter email">
								</div>
						  </div>

						   <div class="form-group">
								<label for="contactaddress1" class="col-sm-2 control-label">Address1</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="contactaddress1" name="information.address1" placeholder="Enter Address">
								</div>
						  </div>

						  <div class="form-group">
								<label for="contactaddress2" class="col-sm-2 control-label">Address2</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="contactaddress2" name="information.address2" placeholder="Enter Address">
								</div>
						  </div>



						  <div class="form-group">
								<label for="contactcity" class="col-sm-2 control-label">City</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="contactcity" name="information.city" placeholder="Enter City">
								</div>
						  </div>

						  <div class="form-group">
								<label for="contactstate" class="col-sm-2 control-label">State</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="contactstate" name="information.state"  placeholder="Enter State">
								</div>
						  </div>

						  <div class="form-group">
								<label for="contactzip" class="col-sm-2 control-label">Zip Code</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="contactzip" name="information.zipcode"  placeholder="Enter Zip">
								</div>
						  </div>

						  <div class="form-group">
								<label for="contactcountry" class="col-sm-2 control-label">Country</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="contactcountry" name="information.country"  placeholder="Enter Country">
								</div>
						  </div>


						  <div class="form-group">
						  		<label for="contactmessage" class="col-sm-2 control-label">Message</label>
						  		<div class="col-sm-10">
						  			<textarea class="form-control" id="contactmessage" name="information.message"  rows="6"></textarea>
						  		</div>
						  </div>





						  <!--
						  <div class="form-group">
							    <label for="exampleInputFile" class="col-sm-2 control-label">File input</label>
							    <input type="file" id="exampleInputFile">
							    <p class="help-block">Example block-level help text here.</p> 
						  </div> -->
						  <!--
						  <div class="checkbox">
							    <label>
							      <input type="checkbox"> Check me out
							    </label>
						  </div> -->
						  <div class="col-sm-10 col-md-offset-4">
						  		<button type="submit" id="contactbtn" class="btn btn-default">Submit</button>
						  	</div>
					</form>
				</div>
			</div>

		</div>
</div>

<script>
	function validateText (id) {
		// body...
/*  		if($("#"+id).val()==null || $("#"+id).val()=="")
		{
			var div = $("#"+id).closest("div");
			$("#glypcn"+id).remove();
			div.addClass("has-error has-feedback");
			div.append('<span id="glypcn'+id+'" class="glyphicon glyphicon-remove form-control-feedback" aria-hidden="true"></span>');
			return false;
		}
		else
		{
			var div = $("#"+id).closest("div");
			div.removeClass("has-error");
			div.addClass("has-success has-feedback");
			$("#glypcn"+id).remove();
			div.append('<span id="glypcn'+id+'" class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>');
			return true;
		}  */
		return true;
	}

	$(document).ready(
		function()
		{
			$("#contactbtn").click(function()
			{
				if(!validateText("contactname"))
				{
					return false;
				}
				if(!validateText("contactemail"))
				{
					return false;
				}
				if(!validateText("contactsubject"))
				{
					return false;
				}
				if(!validateText("contactmessage"))
				{
					return false;
				}

				$("form#contactform").submit
			});
		}
	);
</script>
  </body>
</html>
