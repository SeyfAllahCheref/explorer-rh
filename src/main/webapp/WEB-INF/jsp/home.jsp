<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->


<!-- BEGIN HEAD -->
<head>
    <meta charset="UTF-8" />
    <title>Explorer RH | Dashboard </title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <![endif]-->
    <!-- GLOBAL STYLES -->
    <link href="plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
    <link rel="stylesheet" href="plugins/magic/magic.css"/>
    <link href="css/core.css" rel="stylesheet" media="screen" />
    <link rel="stylesheet" href="css/main.css"/>
    <link rel="stylesheet" href="css/theme.css" />
    <link rel="stylesheet" href="css/MoneAdmin.css" />
    <link rel="stylesheet" href="plugins/Font-Awesome/css/font-awesome.css"/>
    <link rel="stylesheet" href="plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css"/>
    <link rel="stylesheet" href="plugins/fullcalendar-1.6.2/fullcalendar/fullcalendar.css"/>
    <link rel="stylesheet" href="css/calendar.css"/>
    <link href="plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker-bs3.css" />
    <link rel="stylesheet" href="plugins/datepicker/css/datepicker.css" />
    <link rel="stylesheet" href="plugins/timepicker/css/bootstrap-timepicker.min.css" />
    <!--END GLOBAL STYLES -->

    <!-- PAGE LEVEL STYLES -->
    <link href="css/layout2.css" rel="stylesheet" />
    <link rel="stylesheet" href="plugins/timeline/timeline.css"/>
    <link href="plugins/flot/examples/examples.css" rel="stylesheet" />
    <!-- END PAGE LEVEL  STYLES -->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->
<body class="padTop53 " >

<!-- MAIN WRAPPER -->
<div id="wrap" >


    <!-- HEADER SECTION -->
    <div id="top">

        <nav class="navbar navbar-inverse navbar-fixed-top " style="padding-top: 10px;">
            <a data-original-title="Show/Hide Menu" data-placement="bottom" data-tooltip="tooltip" class="accordion-toggle btn btn-primary btn-sm visible-xs" data-toggle="collapse" href="#menu" id="menu-toggle">
                <i class="icon-align-justify"></i>
            </a>
            <!-- LOGO SECTION -->
            <header class="navbar-header">

                <a href="/" class="navbar-brand">
                    <img height="50" width="200" src="images/logo.png"alt="" />

                </a>
            </header>
            <!-- END LOGO SECTION -->
            <ul class="nav navbar-top-links navbar-right">

                <!-- MESSAGES SECTION -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <span class="label label-success">2</span>    <i class="icon-envelope-alt"></i> <i class="icon-chevron-down"></i>
                    </a>

                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                        <span class="pull-right text-muted">
                                            <em>Today</em>
                                        </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing.
                                    <br />
                                    <span class="label label-primary">Important</span>

                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>Raphel Jonson</strong>
                                        <span class="pull-right text-muted">
                                            <em>Yesterday</em>
                                        </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing.
                                    <br />
                                    <span class="label label-success"> Moderate </span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>Chi Ley Suk</strong>
                                        <span class="pull-right text-muted">
                                            <em>26 Jan 2014</em>
                                        </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing.
                                    <br />
                                    <span class="label label-danger"> Low </span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="/messages">
                                <strong>Read All Messages</strong>
                                <i class="icon-angle-right"></i>
                            </a>
                        </li>
                    </ul>

                </li>
                <!--END MESSAGES SECTION -->

                <!--TASK SECTION -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <span class="label label-danger">5</span>   <i class="icon-tasks"></i> <i class="icon-chevron-down"></i>
                    </a>

                    <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong> Profile </strong>
                                        <span class="pull-right text-muted">40% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong> Pending Tasks </strong>
                                        <span class="pull-right text-muted">20% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            <span class="sr-only">20% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong> Work Completed </strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong> Summary </strong>
                                        <span class="pull-right text-muted">80% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Tasks</strong>
                                <i class="icon-angle-right"></i>
                            </a>
                        </li>
                    </ul>

                </li>
                <!--END TASK SECTION -->

                <!--ALERTS SECTION -->
                <li class="chat-panel dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <span class="label label-info">8</span>   <i class="icon-comments"></i> <i class="icon-chevron-down"></i>
                    </a>

                    <ul class="dropdown-menu dropdown-alerts">

                        <li>
                            <a href="#">
                                <div>
                                    <i class="icon-comment" ></i> New Comment
                                    <span class="pull-right text-muted small"> 4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="icon-twitter info"></i> 3 New Follower
                                    <span class="pull-right text-muted small"> 9 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="icon-envelope"></i> Message Sent
                                    <span class="pull-right text-muted small" > 20 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="icon-tasks"></i> New Task
                                    <span class="pull-right text-muted small"> 1 Hour ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="icon-upload"></i> Server Rebooted
                                    <span class="pull-right text-muted small"> 2 Hour ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
                                <i class="icon-angle-right"></i>
                            </a>
                        </li>
                    </ul>

                </li>
                <!-- END ALERTS SECTION -->

                <!--ADMIN SETTINGS SECTIONS -->

                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="icon-user "></i> <i class="icon-chevron-down "></i>
                    </a>

                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="icon-user"></i> User Profile </a>
                        </li>
                        <li><a href="#"><i class="icon-gear"></i> Settings </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="/logout"><i class="icon-signout"></i> Logout </a>
                         	<form action="/logout" method="post">
                         			<input type="submit" class="button red big" value="Sign Out" /> <input
                         				type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                         		</form>
                        </li>
                    </ul>

                </li>
                <!--END ADMIN SETTINGS -->
            </ul>

        </nav>

    </div>
    <!-- END HEADER SECTION -->



    <!-- MENU SECTION -->
    <div id="left" >
        <div class="media user-media well-small">
            <a class="user-link" href="#">
                <img class="media-object img-thumbnail user-img"
                     alt="User Picture" src="images/user.gif"
                     src="images/user.gif"/>
            </a>
            <br />
            <div class="media-body">
                <h5 class="media-heading">
                     <span>${employee.name}</span>
                     <span>${employee.lastName}</span>
                </h5>
                <ul class="list-unstyled user-info">

                    <li>
                        <a class="btn btn-success btn-xs btn-circle" style="width: 10px;height: 12px;"></a> Online

                    </li>

                </ul>
            </div>
            <br />
        </div>

        <ul id="menu" class="collapse">
            <li class="panel active">
                <a href="index.html" ><i class="icon-table"></i> Dashboard</a>
            </li>
            <li class="panel ">
                <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#component-nav">
                    <i class="icon-tasks"> </i> Tasks
	                    <span class="pull-right">
                          <i class="icon-angle-left"></i>
                        </span>
                     <span class="label label-default">10</span>
                </a>
                <ul class="collapse" id="component-nav">

                    <li class=""><a href="button.html"><i class="icon-angle-right"></i> Done </a></li>
                    <li class=""><a href="icon.html"><i class="icon-angle-right"></i> Waiting </a></li>
                </ul>
            </li>
            <li class="panel ">
                <a href="#" data-parent="#menu" data-toggle="collapse" class="collapsed" data-target="#form-nav">
                    <i class="icon-pencil"></i> Messages
	   
                        <span class="pull-right">
                            <i class="icon-angle-left"></i>
                        </span>
                     <span class="label label-success">5</span>
                </a>
            </li>

            <li class="panel">
                <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#pagesr-nav">
                    <i class="icon-table"></i> Tickets
	   
                        <span class="pull-right">
                            <i class="icon-angle-left"></i>
                        </span>
                     <span class="label label-info">6</span>
                </a>
                <ul class="collapse" id="pagesr-nav">
                    <li class=""><a href="button.html"><i class="icon-angle-right"></i> In progress </a></li>
                    <li class=""><a href="icon.html"><i class="icon-angle-right"></i> Closed </a></li>
                    <li class=""><a href="progress.html"><i class="icon-angle-right"></i> Refused </a></li>
                </ul>
            </li>
            <li class="panel">
                <a href="/holidays" data-parent="#menu" data-toggle="collapse"
                   class="" data-target="#chart-nav">
                    <i class="icon-bar-chart"></i> Requests
	   
                        <span class="pull-right">
                            <i class="icon-angle-left"></i>
                        </span>
                     <span class="label label-danger">4</span>
                </a>
            </li>
            <li><a href="login.html"><i class="icon-signin"></i> Login Page </a></li>

        </ul>

    </div>
    <!--END MENU SECTION -->



    <!--PAGE CONTENT -->
    <div id="content">

        <div class="inner" style="min-height: 700px;">
            <div class="row">
                <div class="col-lg-12">
<%--                     <h2 th:text="${date}"> </h2> --%>
                </div>
            </div>
            <hr />
            <!--BLOCK SECTION -->
            <div class="row">
                <div class="col-lg-12">
                    <div style="text-align: center;">

                        <a class="quick-btn" href="alo">
                            <i class="icon-check icon-2x"></i>
                            <span> Products</span>
                            <span class="label label-danger">2</span>
                        </a>

                        <a class="quick-btn" href="/messages">
                            <i class="icon-envelope icon-2x"></i>
                            <span>Messages</span>
                            <span class="label label-success">${msgCount}</span>
                        </a>
                        <a class="quick-btn" href="#">
                            <i class="icon-signal icon-2x"></i>
                            <span>Profit</span>
                            <span class="label label-warning">+25</span>
                        </a>
                        <a class="quick-btn" href="#">
                            <i class="icon-lemon icon-2x"></i>
                            <span>tasks</span>
                            <span class="label btn-metis-4">${fn:length(tasks)}</span>
                        </a>
                        <a class="quick-btn" href="/tickets">
                            <i class="icon-bolt icon-2x"></i>
                            <span>Tickets</span>
                            <span class="label label-default">${ticketsCount}</span>
                        </a>



                    </div>

                </div>

            </div>
            <!--END BLOCK SECTION -->
            <hr />
            <!-- CHART  CHAT  SECTION -->
            <div class="row">

                <div id="calendar" class="col-lg-8"></div>

                <div class="col-lg-4">

                    <div class="chat-panel panel panel-primary">
                        <div class="panel-heading">
                            <i class="icon-comments"></i>
                            Chat
                            <div class="btn-group pull-right">
                                <button type="button" data-toggle="dropdown">
                                    <i class="icon-chevron-down"></i>
                                </button>
                                <ul class="dropdown-menu slidedown">
                                    <li>
                                        <a href="#">
                                            <i class="icon-refresh"></i> Refresh
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class=" icon-comment"></i> Available
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="icon-time"></i> Busy
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="icon-tint"></i> Away
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="#">
                                            <i class="icon-signout"></i> Sign Out
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="panel-body">
                            <ul class="chat">
                                <li class="left clearfix">
                                        <span class="chat-img pull-left">
                                            <img src="images/1.png" src="images/1.png"
                                                 alt="User Avatar" class="img-circle" />
                                        </span>
                                    <div class="chat-body clearfix">
                                        <div class="header">
                                            <strong class="primary-font"> Jack Sparrow </strong>
                                            <small class="pull-right text-muted">
                                                <i class="icon-time"></i> 12 mins ago
                                            </small>
                                        </div>
                                        <br />
                                        <p>
                                        text
                                        </p>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <div class="panel-footer">
                            <div class="input-group">
                                <input id="Text1" type="text" class="form-control input-sm" placeholder="Type your message here..." />
                                    <span class="input-group-btn">
                                        <button class="btn btn-warning btn-sm" id="Button1">
                                            Send
                                        </button>
                                    </span>
                            </div>
                        </div>

                    </div>


                </div>
            </div>
            <div class="row">


            </div>
            <br/>
            <!--END CHAT  CHAT SECTION -->
            <!-- COMMENT AND NOTIFICATION  SECTION -->
            <div class="row">
                <div class="col-lg-12">

                    <div class="chat-panel panel panel-success">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <i class="glyphicon glyphicon-tasks"></i>
                                Tasks List
                                <div class="btn-group pull-right">
                                    <button type="button" id="addTask"
                                            data-toggle="modal"  data-target="#newTaskEmployee">
                                        <i class="glyphicon glyphicon-plus"></i>
                                    </button>
                                </div>
                            </div>

                            <table
                                    class="table table-striped table-bordered table-hover" id="tasks-lists">
                                <thead>
                                <tr >
                                    <th>#</th>
                                    <th>Task</th>
                                    <th>Date</th>
                                    <th>Statut</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${tasks}" var="task">
                                    <tr data-toggle="modal" data-id="${task.idtasks}" onclick="openDetails(${task.idtasks})" class="taskDetails">
                                        <td>${task.idtasks}</td>
                                        <td>${task.taskName}</td>
                                        <td>${task.taskTime}</td>
                                        <td>${task.statut}</td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>

                    </div>


                </div>
            </div>
            <!-- END COMMENT AND NOTIFICATION  SECTION -->
        </div>

    </div>
    <!--END PAGE CONTENT -->

    <!-- RIGHT STRIP  SECTION -->
    <div id="right">


        <div class="well well-small">
            Current task

        </div>
        <div class="well well-small">
            List users online
            <ul>
                <li>Atef</li>
                <li>Ahmed</li>
                <li>Achref</li>
                <li>Mohamed</li>
                <li>Ali</li>
                <li>Imed</li>
                <li>Issam</li>
                <li>Zied</li>


            </ul>
        </div>
     </div>
    <!-- END RIGHT STRIP  SECTION -->
</div>

<!--END MAIN WRAPPER -->

<!-- FOOTER -->
<div id="footer">
    <p>copy;  binarytheme 2014 </p>
</div>
<!--END FOOTER -->

<!-- MODAL -->
<div class="modal fade"  role="dialog" id="newTaskEmployee">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header" style="padding:35px 50px;">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4><span class="glyphicon glyphicon-task"></span> Add new Task</h4>

            </div>
            <div class="modal-body" style="padding:40px 50px;">
                <form:form  modelAttribute="task" commandName="task" action="/addTask"  method="POST">
                    <div class="form-group">
                        <label for="taskTitle"><span class="glyphicon glyphicon-user"></span> Task Title</label>
                        <form:input path="taskName" name="taskTitle" type="text" class="form-control" id="taskTitle" placeholder="Enter Task title"  required="required"/>
                    </div>

                    <div class="form-group">
                        <label for="taskDescription">
                            <span class="glyphicon glyphicon-eye-open"></span> Task Description</label>
                        <form:textarea path="taskDescrption" name="taskDescription"  class="form-control" rows="5" id="taskDescription"  required="required"></form:textarea>
                    </div>
                    <div class="form-group">

                    </div>
                    <div class="row">
                        <div class="form-group col-xs-6">
                            <input id="timeTask" class="form-control input-group-lg reg_name" type="time" name="timeTask"
                                    required="required"/>
                        </div>
                        <div class="form-group col-xs-6">
                            <input id="taskDate" class="form-control input-group-lg reg_name" type="date" name="taskDate"
                                    required="required"/>
                        </div>
                        </div>
                    <%--<form:input path="taskTime" type="hidden"/>--%>
                    <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-cloud-upload"></span> Ajouter Tâche</button>
                </form:form>
            </div>
        </div>
    </div>
</div>

<!--  details Employee task-->
     <!-- Modal content-->
        <div class="modal-content" id="detailsTaskEmployee">
            <div class="modal-header" style="padding:35px 50px;">
                <h3>TASK: <span id="id-task"></span> </h3>
            </div>
            <div class="modal-body" style="padding:40px 50px;">
                <form:form  modelAttribute="task" commandName="task" action="/addTask"  method="POST">
                    <div class="form-group">
                        <label for="taskName"><span class="glyphicon glyphicon-user"></span> Task Title</label>
                        <form:input path="taskName" name="taskTitle" type="text" class="form-control" id="taskName" readonly="true"  placeholder="Enter Task title"  required="required"/>
                    </div>

                    <div class="form-group">
                        <label for="taskDescription">
                            <span class="glyphicon glyphicon-eye-open"></span> Task Description</label>
                        <form:textarea path="taskDescrption" name="taskDescription"  class="form-control" rows="5" id="taskDescrption" readonly="true" required="required"></form:textarea>
                    </div>
                    <div class="form-group">

                    </div>
                    <div class="row">
                        <div class="form-group col-xs-6">
                            <input id="timeTaskEditon" class="form-control input-group-lg reg_name" readonly="true"  name="timeTask"
                                   required="required"/>
                        </div>
                        <div class="form-group col-xs-6">
                            <input id="taskDateEditon" class="form-control input-group-lg reg_name" readonly="true"  name="taskDate"
                                   required="required"/>
                        </div>
                    </div>
                    <%--<form:input path="taskTime" type="hidden"/>--%>
                    <button type="submit"  class="btn btn-success btn-block hidden"><span class="glyphicon glyphicon-cloud-upload"></span> Ajouter Tâche</button>
                </form:form>
            </div>
        </div>

<!-- END MODAL -->
<!-- GLOBAL SCRIPTS -->
<script src="js/jquery-2.0.3.min.js" src="js/jquery-2.0.3.min.js"></script>
<script src="js/jquery-ui.min.js" src="js/jquery-ui.min.js"></script>
<script src="plugins/bootstrap/js/bootstrap.min.js" src="plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="js/modernizr-2.6.2-respond-1.1.0.min.js" src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
<script src="plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js" src="plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>

<!-- END GLOBAL SCRIPTS -->

<!-- PAGE LEVEL SCRIPTS -->
<script src="plugins/flot/jquery.flot.js" src="plugins/flot/jquery.flot.js"></script>
<script src="plugins/flot/jquery.flot.resize.js" src="plugins/flot/jquery.flot.resize.js"></script>
<script src="plugins/flot/jquery.flot.time.js" src="plugins/flot/jquery.flot.time.js"></script>
<script  src="plugins/flot/jquery.flot.stack.js" src="plugins/flot/jquery.flot.stack.js"></script>
<script src="plugins/fullcalendar-1.6.2/fullcalendar/fullcalendar.min.js"  src="plugins/fullcalendar-1.6.2/fullcalendar/fullcalendar.min.js"></script>
<script src="js/calendarInit.js" src="js/calendarInit.js"></script>
<script src="plugins/dataTables/jquery.dataTables.js"></script>
<script src="plugins/dataTables/dataTables.bootstrap.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<script src="plugins/daterangepicker/moment.min.js"></script>
<script src="plugins/datepicker/js/bootstrap-datepicker.js"></script>
<script src="plugins/timepicker/js/bootstrap-timepicker.min.js"></script>
<script src="js/formsInit.js"></script>
<script src="js/main.js"></script>
<script>

        </script>
<!-- END PAGE LEVEL SCRIPTS -->

</body>

<!-- END BODY -->
</html>