<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="../sessioncheck.jsp"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>SpAirlines</title>
	</head>
	<body>
		<!-- Header -->
		<%@include file="../files_other/header2.jsp"%>
		
		<!-- Aircraft/Flight Administrative Navigation -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<ul class="nav navbar-nav">
				<li><a href="./aircraftinsert.jsp">Insert Aircraft</a></li>
				<li class="active"><a href="./aircraftsearch.jsp">Update/Delete Aircrafts</a></li>
				<li><a href="../files_flight/flightscheduleinsert.jsp">Insert Flight Schedule</a></li>
				<li><a href="../files_flight/flightschedulesearch.jsp">Update/Delete Flight Schedules</a></li>
				<li><a href="../files_booking/bookingform.jsp">View Flight Bookings</a></li>
				<li><a href="../files_booking/promotions.jsp">Insert/Delete Promotions</a></li>
			</ul>
		</nav>
		
		<!-- Main -->
		<div class="main">
		
			<!-- Admin Navigation -->
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<ul class="nav navbar-nav navbar-left">
						<span class="navbar-text" style="height: 8px;">You are currently viewing as an <span style="color: #ca6f1e; font-weight: bold;">Administrator</span>.</span>
					</ul>
					<ul class="nav navbar-nav navbar-right">
				    	<li style="background-color: #afafaf; margin-right: 20px;"><a href="../files_admin/admin.jsp" style="color: #000000;">Account Default Tools</a></li>
				    	<li style="background-color: #afafaf; margin-right: 20px;"><a href="<%=request.getContextPath()%>/KillSessionServlet" style="color: #000000;">Logout</a></li>
			    	</ul>
		    	</div>
			</nav>
			
			<!-- Article -->
			<article>
				<!-- Title -->
				<h1><strong>SP Airlines Management</strong></h1>
				<h3 style="margin-bottom: 30px;">You can update and delete aircrafts.</h3>
				
				<!-- Search Aircraft Form -->
				<form class="form-horizontal" action="aircraftsearchprocess.jsp?task=displayall" method="POST">
					<h4 class="text-center" style="margin-top: 30px; margin-bottom: 30px; font-weight: bold;">Display all aircrafts</h4>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10" style="margin-left: 100px; text-align:center;">
							<input type="submit" class="btn btn-default" name="btnDisplay" value="Display All Aircrafts">
						</div>
					</div>
				</form>
				<form class="form-horizontal" action="aircraftsearchprocess.jsp?task=search" method="POST">
					<h4 class="text-center" style="margin-top: 30px; margin-bottom: 30px; font-weight: bold;">or search aircrafts with</h4>
					<div class="form-group">
						<label class="col-sm-2 control-label">Aircraft ID</label>
						<div class="col-sm-10">
							<input type="text" style="width:10%" class="form-control" name="searchString"><br>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" style="margin-top: 20px">Aircraft Model</label>
						<div class="col-sm-10">
							<input type="radio" style="margin-right: 10px" name="string2conjunction" value="AND">and
							<input type="radio" style="margin-left: 10px; margin-right: 10px;" name="string2conjunction" value="OR">or
							<input type="text" style="width:70%" class="form-control" name="searchString2"><br>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" style="margin-top: 20px">Flight Number</label>
						<div class="col-sm-10">
							<input type="radio" style="margin-right: 10px" name="string3conjunction" value="AND">and
							<input type="radio" style="margin-left: 10px; margin-right: 10px;" name="string3conjunction" value="OR">or
							<input type="text" style="width:10%" class="form-control" name="searchString3"><br>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" style="margin-top: 20px">Passenger Capacity</label>
						<div class="col-sm-10">
							<input type="radio" style="margin-right: 10px" name="string4conjunction" value="AND">and
							<input type="radio" style="margin-left: 10px; margin-right: 10px;" name="string4conjunction" value="OR">or
							<input type="text" style="width:10%" class="form-control" name="searchString4"><br>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" style="margin-top: 20px">Seat Map Image Path</label>
						<div class="col-sm-10">
							<input type="radio" style="margin-right: 10px" name="string5conjunction" value="AND">and
							<input type="radio" style="margin-left: 10px; margin-right: 10px;" name="string5conjunction" value="OR">or
							<input type="text" style="width:70%" class="form-control" name="searchString5"><br>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" class="btn btn-success" name="btnSearch" value="Search Aircraft" style="margin-right: 20px;">
							<input type="reset" class="btn btn-default">
						</div>
					</div>
				</form>
			</article>
		</div>
		
		<!-- Footer -->
		<%@include file="../files_other/footer.jsp"%>
	</body>
</html>