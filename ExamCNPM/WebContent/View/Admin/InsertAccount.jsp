<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Account</title>

        <meta name="description" content="overview &amp; stats" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

        <!-- bootstrap & fontawesome -->
        <link rel="stylesheet" href="Style/css/bootstrap.min.css" />
        <link rel="stylesheet" href="Style/css/font-awesome.min.css" />


        <!-- page specific plugin styles -->
        <link rel="stylesheet" href="Style/js/jquery-ui.custom.min.css" />
        <link rel="stylesheet" href="Style/css/fullcalendar.min.css" />


        <!-- text fonts -->
        <link rel="stylesheet" href="Style/css/fonts.googleapis.com.css" />

        <!-- ace styles -->
        <link rel="stylesheet" href="Style/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

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
        <script src="Style/js/validation.js"></script>
    </head>


    <body class="no-skin" style="font-size: 14px;">

        <!-- Insert file notification -->
        <jsp:include page="Notification.jsp" /> 

        <div class="main-container ace-save-state" id="main-container">
            <script type="text/javascript">
                try {
                    ace.settings.loadState('main-container')
                } catch (e) {}

            </script>

			<!-- Insert file menu -->
            <jsp:include page="MenuAdmin.jsp" />  

            <div class="main-content">

                <div class="main-content-inner">
                    <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                        <ul class="breadcrumb">
                            <li><i class="ace-icon fa fa-home home-icon"></i> <a href="HomeAdminForWard">Home</a></li>
                            <li class="active">Home Admin</li>
                        </ul>
                        <!-- /.breadcrumb -->

                        <div class="nav-search" id="nav-search">
                            <form class="form-search">
                                <span class="input-icon"> <input type="text"
								placeholder="Search ..." class="nav-search-input"
								id="nav-search-input" autocomplete="off" /> <i
								class="ace-icon fa fa-search nav-search-icon"></i>
							</span>
                            </form>
                        </div>
                        <!-- /.nav-search -->
                    </div>

                    <div class="page-content">
                        <!-- /.ace-settings-container -->

                        <div class="page-header">
                            <h1>
                                Insert Account <small> <i
							class="ace-icon fa fa-angle-double-right"></i> Admin can insert
							user
						</small>
                            </h1>
                        </div>

                        <div class="formInsert" style="margin:30px">
                            <h2>Insert account</h2>
                            <div id="thongbao">
                                <p id="pthongbao"></p>
                            </div>
                            <form action="InsertAccount?pageid=1" method="post" name="frmInsertAcc">
                                <br> Username:
                                <br> <input type="text" name="username" id="username"><br>
                                <br> PassWord:
                                <br> <input type="text" name="pass" id="pass"><br>
                                <br> Fullname:
                                <br> <input type="text" name="fullname" id="fullname"><br>
                                <br> Birthday:
                                <br> <input type="text" name="birthday" id="birthday"><br>
                                <br> Country:
                                <br> <input type="text" name="country" id="country"><br>
                                <br> Phone:
                                <br> <input type="text" name="phone" id="phone"><br>
                                <br> Image:
                                <br> <input type="text" name="image" id="image"><br>
                                <br> Roleid:
                                <br> <select name="roleid" id="roleid">
										<option>Choose roleid for account</option>
		                    			<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
                    				</select><br><br>
                                <input type="submit" value="Save" style="background: skyblue;" onclick="return KiemTraHopLe()"><br>
                            </form>
                        </div>

                    </div>
                </div>
                <!-- /.page-header -->


            </div>
            <!-- /.page-content -->
        </div>


        <!-- /.main-content -->

         <!--     Include file Footer -->
	<jsp:include page="Footer.jsp" />

        <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse"> <i
		class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
	</a>
        </div>
        <!-- /.main-container -->



    </body>

    </html>
