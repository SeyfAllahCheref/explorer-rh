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
    <title>Explorer RH | Holidays </title>
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
    <link rel="stylesheet" href="plugins/timepicker/css/bootstrap-timepicker.min.css" />

</head>
<!-- END HEAD -->

<!-- BEGIN BODY -->
<body class="padTop53 " >

<!-- MAIN WRAPPER -->
<div id="wrap">


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
                        <span class="label label-success">2</span>    <i class="icon-envelope-alt"></i>&nbsp; <i class="icon-chevron-down"></i>
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
                            <a class="text-center" href="#">
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
                        <span class="label label-danger">5</span>   <i class="icon-tasks"></i>&nbsp; <i class="icon-chevron-down"></i>
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
                        <span class="label label-info">8</span>   <i class="icon-comments"></i>&nbsp; <i class="icon-chevron-down"></i>
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
                        <i class="icon-user "></i>&nbsp; <i class="icon-chevron-down "></i>
                    </a>

                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="icon-user"></i> User Profile </a>
                        </li>
                        <li><a href="#"><i class="icon-gear"></i> Settings </a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i class="icon-signout"></i> Logout </a>
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

        <div class="inner">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Demander un congé</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Basic Elements
                        </div>
                        <div class="panel-body">
                            <div class="row">

                                <div class="col-lg-6">
                                <label for="typeHoliday">Veuillez
                                    choisir votre type de demande</label>
                                    <select id="typeHoliday"
                                            class="form-control">
                                        <option value=""></option>
                                        <option
                                                value="authorization">Autorisation
                                        </option>
                                        <option
                                                value="disease">Maladie
                                        </option>
                                        <option
                                                value="holiday">Congé
                                        </option>
                                    </select>

                                </div>
                                <div class="col-lg-6" id="holidayRequest" >
                                    <form:form action="request-holiday"
                                               modelAttribute="holiday" method="post">
                                        <form:input path="typeHoliday"
                                                    cssClass="hidden"
                                                    value="holiday"/>
                                        <div class="form-group">
                                        <br/>
                                        <span class="">Vous avez
                                            <strong>${employee.accruedHolidaysDays}</strong>
                                            jour(s) de congé(s) cumulé(s)</span>
                                        <br/>
                                        <div class="alert-danger" id="alert" style="display: none;">
                                            <strong></strong>

                                            <p></p>
                                        </div>
                                        <table class="table">
                                            <thead>
                                            <tr>
                                                <th>
                                                    <a href="#"
                                                       class="btn btn-default" id="date-start-holiday" data-date-format="dd-mm-yyyy"
                                                       data-date=""> <i class="icon-calendar"></i></a>
                                                    <input type="text"
                                                        name="startDtHoliday"
                                                        id="startDateHoliday"
                                                        class="form-control"
                                                        placeholder="Date début congé"

                                                        required="required"/></th>
                                                <th>
                                                    <a href="#"
                                                       class="btn btn-default" id="date-end-holiday" data-date-format="dd-mm-yyyy"
                                                       data-date=""><i class="icon-calendar"></i></a>
                                                <input type="text"
                                                        name="endDtHoliday"
                                                        id="endDateHoliday"
                                                        class="form-control"
                                                        placeholder="Date fin congé"

                                                        required="required"/></th>
                                            </tr>
                                            </thead>
                                        </table>
                                    </div>
                                    <div class="form-group">
                                        <label>Description</label>
                                        <form:textarea path="description"
                                          rows="5"  cols="50"  required="required"
                                                       class="form-control"/>
                                    </div>
                                        <div class="form-group">
                                            <button class="btn btn-default" type="reset">
                                                Initialiser
                                            </button>
                                            <button class="btn btn-success" type="submit">
                                                Envoyer
                                            </button>
                                        </div>
                                    </form:form>
                                </div>
                                <div class="col-lg-6"
                                     id="autorisationRequest" >
                                    <form:form action="request-autorisation"
                                               modelAttribute="holiday" method="post">
                                        <form:input path="typeHoliday"
                                            value="authorization" cssClass="hidden"/>
                                        <h3>autorisation</h3>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="box">
                                                    <header>
                                                        <div class="icons"><i class="icon-time"></i></div>
                                                        <h5>Time Picker</h5>
                                                    </header>
                                                    <div class="body">
                                                        <form  class="form-horizontal">
                                                            <div class="row">
                                                                <div  class="col-lg-3">

                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="form-group">
                                                                    <div class="col-lg-6">
                                                                    <label class="control-label col-lg-4">Date d'authorsation</label>
                                                                        <br/>
                                                                        <div class="input-group input-append date" id="dp3" data-date="12-02-2012"
                                                                             data-date-format="dd-mm-yyyy">
                                                                            <input class="form-control" type="text" value="12-02-2012" readonly="" />
                                                                            <span class="input-group-addon add-on"><i class="icon-calendar"></i></span>
                                                                        </div>

                                                                        <br/>
                                                                        <label class="control-label col-lg-2">Date d'authorsation</label>
                                                                        <br/>
                                                                        <div class="input-group bootstrap-timepicker">
                                                                            <input class="form-control timepicker-default" type="text" />
                                                                            <span class="input-group-addon add-on"><i class="icon-time"></i></span>
                                                                        </div>
                                                                        <br/>
                                                                        <label class="control-label col-lg-2">Date d'authorsation</label>
                                                                        <br/>
                                                                        <div class="input-group bootstrap-timepicker">
                                                                            <input class="form-control timepicker-default" type="text" />
                                                                            <span class="input-group-addon add-on"><i class="icon-time"></i></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form:form>
                                </div>
                                    <div class="col-lg-6"
                                         id="diseaseRequest" >
                                        <form:form action="request-disease"
                                                   modelAttribute="holiday" method="post">
                                        <form:input path="typeHoliday"
                                           value="disease" cssClass="hidden"/>
                                        <h3>disease</h3>
                                        </form:form>
                                    </div>

                        </div>
                    </div>
                </div>
            </div>

        </div>




    </div>
    <!--END PAGE CONTENT -->

</div>

<!--END MAIN WRAPPER -->

<!-- FOOTER -->
<div id="footer">
    <p>&copy;  binarytheme &nbsp;2014 &nbsp;</p>
</div>
<!--END FOOTER -->


<!-- GLOBAL SCRIPTS -->
<script src="plugins/jquery-2.0.3.min.js"></script>
<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="plugins/modernizr-2.6.2-respond-1.1.0.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="plugins/datepicker/js/bootstrap-datepicker.js"></script>
<script src="plugins/timepicker/js/bootstrap-timepicker.min.js"></script>
<!-- END GLOBAL SCRIPTS -->

    <script type="application/javascript">
        $(document).ready(function () {
            var startDateHoliday = new Date();
            var endDateHoliday = new Date();
            $('#date-start-holiday').datepicker({
                        "setDate": new Date()
            })
                    .on('changeDate', function (ev) {
                        if (ev.date.valueOf() > endDateHoliday.valueOf()) {
                            $('#alert').show().find('strong').text('The start date can not be greater then the end date');
                        } else {
                            $('#alert').hide();
                            startDateHoliday = new Date(ev.date);
                            $('#startDateHoliday').val($('#date-start-holiday').data('date'));
                        }
                        $('#date-start-holiday').datepicker('hide');
                    });
            $('#date-end-holiday').datepicker({
                        "setDate": new Date()
            })
                    .on('changeDate', function (ev) {
                        if (ev.date.valueOf() < startDateHoliday.valueOf()) {
                            $('#alert').show().find('strong').text('The end date can not be less then the start date');
                        } else {
                            $('#alert').hide();
                            endDateHoliday = new Date(ev.date);
                            $('#endDateHoliday').val($('#date-end-holiday').data('date'));
                        }
                        $('#date-end-holiday').datepicker('hide');
                    });

            $("#holidayRequest").hide();
            $("#autorisationRequest").hide();
            $("#diseaseRequest").hide();


            $("#typeHoliday").on('change', function () {
                console.log(this.value);
                switch (this.value) {
                    case 'authorization':
                        $("#holidayRequest").hide('drop');
                        $("#autorisationRequest").show('drop');
                        $("#diseaseRequest").hide('drop');

                        break;
                    case 'disease':
                        $("#holidayRequest").hide('drop');
                        $("#autorisationRequest").hide('drop');
                        $("#diseaseRequest").show('drop');
                        break;
                    case 'holiday':
                        $("#holidayRequest").show('drop');
                        $("#autorisationRequest").hide('drop');
                        $("#diseaseRequest").hide('drop');

                        break;
                    default:
                        $("#holidayRequest").hide();
                        $("#autorisationRequest").hide();
                        $("#diseaseRequest").hide();
                }
            });

            $('.timepicker-default').timepicker();

            $('.timepicker-24').timepicker({
                minuteStep: 1,
                showSeconds: true,
                showMeridian: false
            });
        });

    </script>

</body>
<!-- END BODY -->
</html>
