<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Pannel/admin_master.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="nyksi_panel_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row-fluid">
        <div class="span12">
            <!-- BEGIN THEME CUSTOMIZER-->
            <div id="theme-change" class="hidden-phone">
                <i class="icon-cogs"></i>
                <span class="settings">
                    <span class="text">Theme:</span>
                    <span class="colors">
                        <span class="color-default" data-style="default"></span>
                        <span class="color-gray" data-style="gray"></span>
                        <span class="color-purple" data-style="purple"></span>
                        <span class="color-navy-blue" data-style="navy-blue"></span>
                    </span>
                </span>
            </div>
            <!-- END THEME CUSTOMIZER-->
            <h3 class="page-title">Welcome !!!!
                    <%-- <small>form components and widgets</small>--%>
            </h3>
            <ul class="breadcrumb">
                <li>
                    <a href="Default.aspx"><i class="icon-home"></i></a><span class="divider">&nbsp;</span>
                </li>
                <li>
                    <a href="#">Panel</a> <span class="divider">&nbsp;</span>
                </li>
                <li><a href="#">Dashboard</a><span class="divider-last">&nbsp;</span></li>
            </ul>
        </div>
        <div class="widget">
            <div class="widget-title">
                <h4><i class="icon-user"></i>Panel</h4>

            </div>
            <div class="widget-body">
                <!--BEGIN ABOUT US-->


                <div class="about-us">

                    <div class="alert alert-info">
                        <button data-dismiss="alert" class="close">×</button>
                        Welcome to the <strong>GIC Management Pannel</strong>!  
                    </div>


                    <div class="alert alert-info">
                        <button data-dismiss="alert" class="close">×</button>
                        No. Of Online Visitors :  <strong style="color: red;"><%=Application["OnlineVisitors"].ToString()%></strong>
                    </div>


                    <!-- BEGIN OVERVIEW STATISTIC BARS-->
                    <div class="row-fluid circle-state-overview">
                        <div class="span2 responsive clearfix" data-tablet="span3" data-desktop="span2">
                            <div class="circle-wrap">
                                <div class="stats-circle blue-color">
                                    <i class="icon-upload-alt"></i>
                                </div>
                                <p>
                                    <%--<strong>+30</strong>--%>
                                    <a href="insert-gic-details.aspx">Insert GIC Details</a>
                                </p>
                            </div>
                        </div>
                        <div class="span2 responsive clearfix" data-tablet="span3" data-desktop="span2">
                            <div class="circle-wrap">
                                <div class="stats-circle turquoise-color">
                                    <i class="icon-list-alt"></i>
                                </div>
                                <p>
                                    <%--<strong>+30</strong>--%>
                                    <a href="gic-list.aspx">GIC List View/Edit</a>
                                </p>
                            </div>
                        </div>

                        <div class="span2 responsive" data-tablet="span3" data-desktop="span2">
                            <div class="circle-wrap">
                                <div class="stats-circle blue-color">
                                    <i class="icon-upload-alt"></i>
                                </div>
                                <p>
                                    <%--<strong>+970</strong>--%>
                                    <a href="insert-health-details.aspx">Insert Health Details</a>
                                </p>
                            </div>
                        </div>
                        <div class="span2 responsive clearfix" data-tablet="span3" data-desktop="span2">
                            <div class="circle-wrap">
                                <div class="stats-circle turquoise-color">
                                    <i class="icon-list-alt"></i>
                                </div>
                                <p>
                                    <%--<strong>+30</strong>--%>
                                    <a href="health-list.aspx">Health List View/Edit</a>
                                </p>
                            </div>
                        </div>

                        <div class="span2 responsive" data-tablet="span3" data-desktop="span2">
                            <div class="circle-wrap">
                                <div class="stats-circle blue-color">
                                    <i class="icon-upload-alt"></i>
                                </div>
                                <p>

                                    <a href="insert-lic-details.aspx">Insert LIC Details</a>
                                </p>
                            </div>
                        </div>

                        <div class="span2 responsive" data-tablet="span3" data-desktop="span2">
                            <div class="circle-wrap">
                                <div class="stats-circle blue-color">
                                    <i class="icon-list-alt"></i>
                                </div>
                                <p>

                                    <a href="lic-list.aspx">LIC List View/Edit</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- END OVERVIEW STATISTIC BARS-->
                    <div class="alert alert-info">
                        <button data-dismiss="alert" class="close">×</button>
                        Please <strong>don't forget</strong> to check all the pages!  
                    </div>

                    <!-- BEGIN OVERVIEW STATISTIC BARS-->
                    <div class="row-fluid circle-state-overview">
                        <div class="span2 responsive clearfix" data-tablet="span3" data-desktop="span2">
                            <div class="circle-wrap">
                                <div class="stats-circle blue-color">
                                    <i class="icon-upload-alt"></i>
                                </div>
                                <p>
                                    <%--<strong>+30</strong>--%>
                                    <a href="insert-gictax-details.aspx">Insert GIC Tax Details</a>
                                </p>
                            </div>
                        </div>
                        <div class="span2 responsive clearfix" data-tablet="span3" data-desktop="span2">
                            <div class="circle-wrap">
                                <div class="stats-circle turquoise-color">
                                    <i class="icon-list-alt"></i>
                                </div>
                                <p>
                                    <%--<strong>+30</strong>--%>
                                    <a href="gictax-list.aspx">GIC Tax List View/Edit</a>
                                </p>
                            </div>
                        </div>

                        <div class="span2 responsive" data-tablet="span3" data-desktop="span2">
                            <div class="circle-wrap">
                                <div class="stats-circle blue-color">
                                    <i class="icon-upload-alt"></i>
                                </div>
                                <p>
                                    <%--<strong>+970</strong>--%>
                                    <a href="insert-permit-details.aspx">Insert Permit Details</a>
                                </p>
                            </div>
                        </div>
                        <div class="span2 responsive clearfix" data-tablet="span3" data-desktop="span2">
                            <div class="circle-wrap">
                                <div class="stats-circle turquoise-color">
                                    <i class="icon-list-alt"></i>
                                </div>
                                <p>
                                    <%--<strong>+30</strong>--%>
                                    <a href="permit-list.aspx">Permit List View/Edit</a>
                                </p>
                            </div>
                        </div>

                        <div class="span2 responsive" data-tablet="span3" data-desktop="span2">
                            <div class="circle-wrap">
                                <div class="stats-circle blue-color">
                                    <i class="icon-upload-alt"></i>
                                </div>
                                <p>

                                    <a href="insert-fitness-details.aspx">Insert Fitness Details</a>
                                </p>
                            </div>
                        </div>

                        <div class="span2 responsive" data-tablet="span3" data-desktop="span2">
                            <div class="circle-wrap">
                                <div class="stats-circle blue-color">
                                    <i class="icon-list-alt"></i>
                                </div>
                                <p>

                                    <a href="fitness-list.aspx">Fitness List View/Edit</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- END OVERVIEW STATISTIC BARS-->

                    <div class="alert alert-info">
                        <button data-dismiss="alert" class="close">×</button>
                        Please <strong>don't share</strong> your pannel password!  
                    </div>

                    <!-- BEGIN OVERVIEW STATISTIC BARS-->
                    <div class="row-fluid circle-state-overview">
                        <div class="span2 responsive clearfix" data-tablet="span3" data-desktop="span2">
                            <div class="circle-wrap">
                                <div class="stats-circle blue-color">
                                    <i class="icon-key"></i>
                                </div>
                                <p>
                                    <%--<strong>+30</strong>--%>
                                    <a href="change-passowrd.aspx">Change Password</a>
                                </p>
                            </div>
                        </div>
                        <div class="span2 responsive clearfix" data-tablet="span3" data-desktop="span2">
                            <div class="circle-wrap">
                                <div class="stats-circle turquoise-color">
                                    <i class="icon-user"></i>
                                </div>
                                <p>
                                    <%--<strong>+30</strong>--%>

                                    <a href="../login/Default.aspx?coll=colle">Logout</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- END OVERVIEW STATISTIC BARS-->
                </div>
                <!--END ABOUT US-->
            </div>
        </div>
    </div>
</asp:Content>

