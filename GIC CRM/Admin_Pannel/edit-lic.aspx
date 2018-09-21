<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Pannel/admin_master.master" AutoEventWireup="true" CodeFile="edit-lic.aspx.cs" Inherits="nyksi_panel_Upload_Main_Product" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor" TagPrefix="cc1" %>
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
            <h3 class="page-title">Edit LIC Details
                    <%-- <small>form components and widgets</small>--%>
            </h3>
            <ul class="breadcrumb">
                <li><a href="Default.aspx"><i class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
                <li><a href="gic-list.aspx">GIC List View</a><span class="divider">&nbsp;</span></li>
                <li><a href="#">Edit LIC Details</a><span class="divider-last">&nbsp;</span></li>
            </ul>
        </div>
    </div>

    <div class="row-fluid">
        <div class="span12">
            <div class="widget">
                <div class="widget-title">
                    <h4><i class="icon-user"></i>Update LIC List Here</h4>
                </div>
                <div class="widget-body">
                    <!--BEGIN ABOUT US-->
                    <form action="#" class="form-horizontal" id="fhgfh" runat="server">

                        <div class="about-us">

                            <div class="row-fluid">
                                <div class="span6">

                                    <div class="control-group">
                                        <label class="control-label">
                                            Choose Premium Type :
                                          
                                        </label>
                                        <div class="controls">
                                            <asp:DropDownList ID="ddleditpremiumtype" runat="server" Width="94%">
                                                <asp:ListItem Value="0">------------------------------- Select ---------------------------</asp:ListItem>
                                                <asp:ListItem>ECS</asp:ListItem>
                                                <asp:ListItem>Quarterly</asp:ListItem>
                                                <asp:ListItem>Half-Yearly</asp:ListItem>
                                                <asp:ListItem>Yearly</asp:ListItem>
                                            </asp:DropDownList>

                                        </div>
                                    </div>


                                    <div class="control-group">
                                        <label class="control-label">Name:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txteditname" runat="server" Width="90%"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">Policy Number:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txteditpolicyno" runat="server" Width="90%"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="control-group" id="divnOSize" runat="server" visible="true">
                                        <label class="control-label">Premium:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txteditpremium" runat="server" Width="90%"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">Plan:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txteditplan" runat="server" Width="90%"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="span6">

                                    <div class="control-group">
                                        <label class="control-label">Term:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txteditterm" runat="server" Width="90%"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">P.P.T.:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txteditppt" runat="server" Width="90%"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">Mobile Number:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txteditmobileno" runat="server" Width="90%"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">Maturity:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txteditmaturity" runat="server" Width="90%"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">S.B.Payment:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txteditsbpayment" runat="server" Width="90%"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-actions clearfix">
                            <div class="control-group">
                                <label class="control-label"></label>
                                <div class="controls">
                                    <asp:Button ID="btnupdate" runat="server" Text="Update" CssClass="btn btn-success" ValidationGroup="tt" OnClick="btnupdate_Click"></asp:Button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <!--END ABOUT US-->

            </div>
        </div>
    </div>
</asp:Content>

