<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert Question</title>


<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="Style/css/bootstrap.min.css" />
<link rel="stylesheet" href="Style/css/font-awesome.min.css" />


<!-- page specific plugin styles -->
<link rel="stylesheet" href="Style/js/jquery-ui.custom.min.css" />
<link rel="stylesheet" href="Style/css/fullcalendar.min.css" />


<!-- text fonts -->
<link rel="stylesheet" href="Style/css/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet" href="Style/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style" />

<link rel="stylesheet" href="Style/css/ace-skins.min.css" />
<link rel="stylesheet" href="Style/css/ace-rtl.min.css" />

<!-- ace settings handler -->
<script src="Style/js/ace-extra.min.js"></script>

<link rel="stylesheet " href="Style/css/template.css" type="text/css ">

<script src="Style/js/jquery-2.1.4.min.js"></script>

<script src="Style/js/bootstrap.min.js"></script>

<!-- ace scripts -->
<script src="Style/js/ace-elements.min.js"></script>
<script src="Style/js/ace.min.js"></script>


</head>
<body class="no-skin" style="font-size: 14px;">

<jsp:include page="Notification.jsp"></jsp:include>

    <div class="main-container ace-save-state" id="main-container">
        <script type="text/javascript">
            try {
                ace.settings.loadState('main-container')
            } catch (e) {}

        </script>

<jsp:include page="MenuQuestion.jsp"></jsp:include>

        <div class="main-content">

            <div class="main-content-inner">
                <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                    <ul class="breadcrumb">
                        <li>
                            <i class="ace-icon fa fa-home home-icon"></i>
                            <a href="HomeQuestion">Home</a>
                        </li>
                         <li class="active">
                        	<a href="">Question Types</a>
                        </li>
                         <li class="active">
                        	<a href="">Insert Question Types</a>
                        </li>
                    </ul>
                    <!-- /.breadcrumb -->

                    <div class="nav-search" id="nav-search">
                        <form class="form-search">
                            <span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
                        </form>
                    </div>
                    <!-- /.nav-search -->
                </div>

                <div class="page-content">
                    <!-- /.ace-settings-container -->


                    <div class="page-header">
                        <h1>
                           Insert Question Types
                            <small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									overview &amp; stats
								</small>
                        </h1>
                    </div>
					<div class="">
						<form method="POST" action="UploadQuestion?pageid=1">

							File to upload: <input type="file" name="file" >
							<br>
							Question type:<br><select name="questionstype">
                    			<option>OOP</option>
								<option>Lap Trinh Windows</option>
								<option>Lap Trinh Web</option>
								<option>Thuong mai dien tu</option>
                    		</select><br><br>
							<input type="submit" value="Import" Style="background:skyblue">
						</form>
					</div>
					
                </div>
            </div>
            <!-- /.page-header -->
            
        </div>
        <!-- /.page-content -->
    </div>


    <!-- /.main-content -->

    <div class="footer">
        <div class="footer-inner">
            <div class="footer-content">
                <span class="bigger-120">
							<span class="blue bolder">HCMUTE</span> Application &copy; 2016-2017
                </span>

                &nbsp; &nbsp;
                <span class="action-buttons">
							<a href="#">
								<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-rss-square orange bigger-150"></i>
							</a>
						</span>
            </div>
        </div>
    </div>

    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
    </div>
    <!-- /.main-container -->
</body>
</html>