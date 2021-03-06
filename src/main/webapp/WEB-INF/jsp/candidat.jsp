<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<html>
<head>
<meta charset="UTF-8" />
<title>Explorer RH | Holidays</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <![endif]-->
<!-- GLOBAL STYLES -->
<!-- GLOBAL STYLES -->
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" href="css/main.css" />
<link rel="stylesheet" href="css/theme.css" />
<link rel="stylesheet" href="css/MoneAdmin.css" />
<link rel="stylesheet" href="plugins/Font-Awesome/css/font-awesome.css" />
<!--END GLOBAL STYLES -->
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
<link rel="stylesheet" href="plugins/datepicker/css/datepicker.css" />
<link rel="stylesheet"
	href="plugins/timepicker/css/bootstrap-timepicker.min.css" />

<title>Add Candidat</title>
</head>
<!-- BEGIN BODY -->
<body class="padTop53 ">

	<!-- MAIN WRAPPER -->
	<div id="wrap">


		<!-- HEADER SECTION -->
		<div id="top">

			<nav class="navbar navbar-inverse navbar-fixed-top "
				style="padding-top: 10px;">
				<a data-original-title="Show/Hide Menu" data-placement="bottom"
					data-tooltip="tooltip"
					class="accordion-toggle btn btn-primary btn-sm visible-xs"
					data-toggle="collapse" href="#menu" id="menu-toggle"> <i
					class="icon-align-justify"></i>
				</a>
				<!-- LOGO SECTION -->
				<header class="navbar-header">

					<a href="/" class="navbar-brand"> <img height="50" width="200"
						src="images/logo.png" alt="" />
					</a>
				</header>
				<!-- END LOGO SECTION -->
				<ul class="nav navbar-top-links navbar-right">

					<!-- MESSAGES SECTION -->
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"> <span
							class="label label-success">2</span> <i class="icon-envelope-alt"></i>&nbsp;
							<i class="icon-chevron-down"></i>
					</a>

						<ul class="dropdown-menu dropdown-messages">
							<li><a href="#">
									<div>
										<strong>John Smith</strong> <span
											class="pull-right text-muted"> <em>Today</em>
										</span>
									</div>
									<div>
										Lorem ipsum dolor sit amet, consectetur adipiscing. <br /> <span
											class="label label-primary">Important</span>

									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<strong>Raphel Jonson</strong> <span
											class="pull-right text-muted"> <em>Yesterday</em>
										</span>
									</div>
									<div>
										Lorem ipsum dolor sit amet, consectetur adipiscing. <br /> <span
											class="label label-success"> Moderate </span>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<strong>Chi Ley Suk</strong> <span
											class="pull-right text-muted"> <em>26 Jan 2014</em>
										</span>
									</div>
									<div>
										Lorem ipsum dolor sit amet, consectetur adipiscing. <br /> <span
											class="label label-danger"> Low </span>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a class="text-center" href="#"> <strong>Read
										All Messages</strong> <i class="icon-angle-right"></i>
							</a></li>
						</ul></li>
					<!--END MESSAGES SECTION -->

					<!--TASK SECTION -->
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"> <span
							class="label label-danger">5</span> <i class="icon-tasks"></i>&nbsp;
							<i class="icon-chevron-down"></i>
					</a>

						<ul class="dropdown-menu dropdown-tasks">
							<li><a href="#">
									<div>
										<p>
											<strong> Profile </strong> <span
												class="pull-right text-muted">40% Complete</span>
										</p>
										<div class="progress progress-striped active">
											<div class="progress-bar progress-bar-success"
												role="progressbar" aria-valuenow="40" aria-valuemin="0"
												aria-valuemax="100" style="width: 40%">
												<span class="sr-only">40% Complete (success)</span>
											</div>
										</div>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<p>
											<strong> Pending Tasks </strong> <span
												class="pull-right text-muted">20% Complete</span>
										</p>
										<div class="progress progress-striped active">
											<div class="progress-bar progress-bar-info"
												role="progressbar" aria-valuenow="20" aria-valuemin="0"
												aria-valuemax="100" style="width: 20%">
												<span class="sr-only">20% Complete</span>
											</div>
										</div>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<p>
											<strong> Work Completed </strong> <span
												class="pull-right text-muted">60% Complete</span>
										</p>
										<div class="progress progress-striped active">
											<div class="progress-bar progress-bar-warning"
												role="progressbar" aria-valuenow="60" aria-valuemin="0"
												aria-valuemax="100" style="width: 60%">
												<span class="sr-only">60% Complete (warning)</span>
											</div>
										</div>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<p>
											<strong> Summary </strong> <span
												class="pull-right text-muted">80% Complete</span>
										</p>
										<div class="progress progress-striped active">
											<div class="progress-bar progress-bar-danger"
												role="progressbar" aria-valuenow="80" aria-valuemin="0"
												aria-valuemax="100" style="width: 80%">
												<span class="sr-only">80% Complete (danger)</span>
											</div>
										</div>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a class="text-center" href="#"> <strong>See
										All Tasks</strong> <i class="icon-angle-right"></i>
							</a></li>
						</ul></li>
					<!--END TASK SECTION -->

					<!--ALERTS SECTION -->
					<li class="chat-panel dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"> <span
							class="label label-info">8</span> <i class="icon-comments"></i>&nbsp;
							<i class="icon-chevron-down"></i>
					</a>

						<ul class="dropdown-menu dropdown-alerts">

							<li><a href="#">
									<div>
										<i class="icon-comment"></i> New Comment <span
											class="pull-right text-muted small"> 4 minutes ago</span>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<i class="icon-twitter info"></i> 3 New Follower <span
											class="pull-right text-muted small"> 9 minutes ago</span>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<i class="icon-envelope"></i> Message Sent <span
											class="pull-right text-muted small"> 20 minutes ago</span>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<i class="icon-tasks"></i> New Task <span
											class="pull-right text-muted small"> 1 Hour ago</span>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<i class="icon-upload"></i> Server Rebooted <span
											class="pull-right text-muted small"> 2 Hour ago</span>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a class="text-center" href="#"> <strong>See
										All Alerts</strong> <i class="icon-angle-right"></i>
							</a></li>
						</ul></li>
					<!-- END ALERTS SECTION -->

					<!--ADMIN SETTINGS SECTIONS -->

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"> <i class="icon-user "></i>&nbsp;
							<i class="icon-chevron-down "></i>
					</a>

						<ul class="dropdown-menu dropdown-user">
							<li><a href="#"><i class="icon-user"></i> User Profile </a>
							</li>
							<li><a href="#"><i class="icon-gear"></i> Settings </a></li>
							<li class="divider"></li>
							<li><a href="login.html"><i class="icon-signout"></i>
									Logout </a></li>
						</ul></li>
					<!--END ADMIN SETTINGS -->
				</ul>

			</nav>

		</div>
		<!-- END HEADER SECTION -->



		<!-- MENU SECTION -->
		<div id="left">
			<div class="media user-media well-small">
				<a class="user-link" href="#"> <img
					class="media-object img-thumbnail user-img" alt="User Picture"
					src="images/user.gif" src="images/user.gif" />
				</a> <br />
				<div class="media-body">
					<h5 class="media-heading">
						<span>${employee.name}</span> <span>${employee.lastName}</span>
					</h5>
					<ul class="list-unstyled user-info">

						<li><a class="btn btn-success btn-xs btn-circle"
							style="width: 10px; height: 12px;"></a> Online</li>

					</ul>
				</div>
				<br />
			</div>

			<ul id="menu" class="collapse">
				<li class="panel active"><a href="index.html"><i
						class="icon-table"></i> Dashboard</a></li>
				<li class="panel "><a href="#" data-parent="#menu"
					data-toggle="collapse" class="accordion-toggle"
					data-target="#component-nav"> <i class="icon-tasks"> </i> Tasks
						<span class="pull-right"> <i class="icon-angle-left"></i>
					</span> <span class="label label-default">10</span>
				</a>
					<ul class="collapse" id="component-nav">

						<li class=""><a href="button.html"><i
								class="icon-angle-right"></i> Done </a></li>
						<li class=""><a href="icon.html"><i
								class="icon-angle-right"></i> Waiting </a></li>
					</ul></li>
				<li class="panel "><a href="#" data-parent="#menu"
					data-toggle="collapse" class="collapsed" data-target="#form-nav">
						<i class="icon-pencil"></i> Messages <span class="pull-right">
							<i class="icon-angle-left"></i>
					</span> <span class="label label-success">5</span>
				</a></li>

				<li class="panel"><a href="#" data-parent="#menu"
					data-toggle="collapse" class="accordion-toggle"
					data-target="#pagesr-nav"> <i class="icon-table"></i> Tickets <span
						class="pull-right"> <i class="icon-angle-left"></i>
					</span> <span class="label label-info">6</span>
				</a>
					<ul class="collapse" id="pagesr-nav">
						<li class=""><a href="button.html"><i
								class="icon-angle-right"></i> In progress </a></li>
						<li class=""><a href="icon.html"><i
								class="icon-angle-right"></i> Closed </a></li>
						<li class=""><a href="progress.html"><i
								class="icon-angle-right"></i> Refused </a></li>
					</ul></li>
				<li class="panel"><a href="/holidays" data-parent="#menu"
					data-toggle="collapse" class="" data-target="#chart-nav"> <i
						class="icon-bar-chart"></i> Requests <span class="pull-right">
							<i class="icon-angle-left"></i>
					</span> <span class="label label-danger">4</span>
				</a></li>

				<li class="panel"><a href="/candidat" data-parent="#menu"
					data-toggle="collapse" class="" data-target="#chart-nav"> <i
						class="icon-bar-chart"></i> Candidat <span class="pull-right">
							<i class="icon-angle-left"></i>
					</span> <span class="label label-danger">5</span>
				</a></li>


				<li><a href="login.html"><i class="icon-signin"></i> Login
						Page </a></li>

			</ul>

		</div>
		<!--END MENU SECTION -->
		<!-- Page Content -->
		<div id="content">
			<div class="inner">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">Add a candidate</h1>
					</div>
				</div>
				
				<form:form modelAttribute="candidat" commandName="candidat"
					action="/addCandidat" method="POST">
					
					<div class="row">
						<div class="col-lg-12">
							<div class="panel panel-default">
	
								<div class="panel-heading">Candidate's information</div>
	
								<div class="panel-body">
									<div class="row">
										<div class="col-lg-6">
											<div class="form-group">
												
													<label for="firstName">First Name:</label> 
													<input name="firstName" type="text" class="form-control"
														id="firstName" placeholder="Enter first name"
														required="required" />
											</div>
											
											<div class="form-group">
													<label for="name">Name:</label> 
													<input name="name" type="text" class="form-control"
																	id="name" placeholder="Enter name"
																	required="required" />
												
											</div>
											
											<div class="form-group">
												<label for="cv"> <!--  <span class="glyphicon glyphicon-user"></span> -->CV:
													</label> <input name="cv" type="file" class="form-control"
														id="cv" placeholder="Enter cv" required="required" />
											</div>
											
											<div class="form-group">
												<label for="photo"> <!--  <span class="glyphicon glyphicon-user"></span> -->Picture:
													</label> <input name="photo" type="file" class="form-control"
														id="photo" placeholder="Enter photo" required="required" />
											</div>
											
											<div class="form-group">
												<label for="niveau"> <!--  <span class="glyphicon glyphicon-user"></span> -->Degree:
													</label> <input name="niveau" type="text" class="form-control"
														id="niveau" placeholder="Enter niveau" required="required" />
											</div>
											
											<div class="form-group">
												<label for="post"> <!--  <span class="glyphicon glyphicon-user"></span> -->Post:
													</label> <input name="post" type="text" class="form-control"
														id="post" placeholder="Enter post" required="required" />
											</div>
											
											<div class="form-group">
												<label for="statut"> <!--  <span class="glyphicon glyphicon-user"></span> -->Statut:
													</label>
													<textarea name="statut" type="text" class="form-control"
														id="statut" placeholder="Enter status" required="required"
														rows="4">
                        							</textarea>
											</div>
										
										</div>	
									</div>
								</div>
	
							</div>
							
							
							<div class="panel panel-default">
	
								<div class="panel-heading">Interview's information</div>
	
								<div class="panel-body">
									<div class="row">
										<div class="col-lg-6">
										
												<div class="form-group">
													<label for="mailEmployee"> <!--  <span class="glyphicon glyphicon-user"></span> -->Interviewer's email:
													</label> <input name="mailEmployee" type="email" class="form-control"
														id="mailEmployee" placeholder="Enter Mail Interviewer" required="required" />
												</div>
												
												<div class="form-group">
													<label for="level"> <!--  <span class="glyphicon glyphicon-user"></span> -->Level:
													</label> <input name="level" type="text" class="form-control"
														id="level" placeholder="Enter level interview" required="required" />
												</div>
												
												<div class="form-group">
													<label for="dateInterview"> <!--  <span class="glyphicon glyphicon-user"></span> -->Date:
													</label> <input name="dateInterview" type="date" class="form-control"
														id="dateInterview" placeholder="Enter date" required="required" />
												</div>
												
												<div class="form-group">
													<label for="timeInterview"> <!--  <span class="glyphicon glyphicon-user"></span> -->Time:
													</label> <input name="timeInterview" type="time" class="form-control"
														id="timeInterview" placeholder="Enter time" required="required" />
												</div>
										
										</div>
									</div>
								</div>
							</div>
							
							
							<div class="panel panel-default">
								<div class="panel-body">
									<div class="row">
										<div class="col-lg-6">
										
											<button type="submit" class="btn btn-primary">
													<span class="glyphicon glyphicon-send"></span> Add candidate
											</button>
											<button type="reset" class="btn btn-primary">
													<span class="glyphicon glyphicon-send"></span> Reset
											</button>
										</div>
									</div>
								</div>
							
							</div>
							
							
						</div>
					</div>
					
				</form:form>

				

			</div>
		</div>
		<!-- End Page Content -->
</body>
</html>