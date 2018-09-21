<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Pannel/admin_master.master" AutoEventWireup="true" CodeFile="insert-lic-details.aspx.cs" Inherits="nyksi_panel_Upload_Main_Product" %>

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
            <h3 class="page-title">Insert LIC Details
                    <%-- <small>form components and widgets</small>--%>
            </h3>
            <ul class="breadcrumb">
                <li><a href="Default.aspx"><i class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
                <li><a href="#">LIC</a><span class="divider">&nbsp;</span></li>
                <li><a href="#">Insert LIC Details</a><span class="divider-last">&nbsp;</span></li>
            </ul>
        </div>
    </div>

    <div class="row-fluid">
        <div class="span12">
            <div class="widget">
                <div class="widget-title">
                    <h4><i class="icon-user"></i>Insert Here</h4>
                </div>
                <div class="widget-body">
                    <!--BEGIN ABOUT US-->
                    <form action="#" class="form-horizontal" id="fhgfh" runat="server">

                        <div class="about-us">

                            <div class="row-fluid">
                                <div class="span6">


                                    <div class="row-fluid">
                                        <div class="control-group">
                                            <label class="control-label">
                                                Choose Premium Type :
                                          
                                            </label>
                                            <div class="controls">
                                                <asp:DropDownList ID="ddlpremiumtype" runat="server"  Width="94%">
                                                    <asp:ListItem Value="0">------------------------------- Select ---------------------------</asp:ListItem>
                                                    <asp:ListItem>ECS</asp:ListItem>
                                                    <asp:ListItem>Quarterly</asp:ListItem>
                                                    <asp:ListItem>Half-Yearly</asp:ListItem>
                                                    <asp:ListItem>Yearly</asp:ListItem>                                                 
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator InitialValue="0"  
                                                    ValidationGroup="tt" runat="server" ControlToValidate="ddlpremiumtype"
                                                    ForeColor="#cc3300" ErrorMessage="Pls. Select Premium Type"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">Name:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtname" runat="server" Width="90%"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtname" ValidationGroup="tt" ErrorMessage="Pls. Enter Name" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">Policy Number:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtpolicyno" runat="server" Width="90%"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpolicyno" ValidationGroup="tt" ErrorMessage="Pls. Enter Policy Number" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="control-group" id="divnOSize" runat="server" visible="true">
                                        <label class="control-label">Premium:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtpremium" runat="server" Width="90%"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtpremium" ValidationGroup="tt" ErrorMessage="Pls. Enter Premium" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">Plan:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtplan" runat="server" Width="90%"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtplan" ValidationGroup="tt" ErrorMessage="Pls. Enter Plan" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    
                                </div>

                                <div class="span6">

                                    <div class="control-group">
                                        <label class="control-label">Term:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtterm" runat="server" Width="90%"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtterm" ValidationGroup="tt" ErrorMessage="Pls. Enter Term" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">P.P.T.:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtppt" runat="server" Width="90%"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtppt" ValidationGroup="tt" ErrorMessage="Pls. Enter P.P.T." ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">Mobile Number:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtmobileno" runat="server" Width="90%"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtmobileno" ValidationGroup="tt" ErrorMessage="Pls. Enter Mobile Number" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">Maturity:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtmaturity" runat="server" Width="90%"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtmaturity" ValidationGroup="tt" ErrorMessage="Pls. Enter Maturity" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">S.B.Payment:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtsbpayment" runat="server" Width="90%"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtsbpayment" ValidationGroup="tt" ErrorMessage="Pls. Enter S.B. Payment" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-actions clearfix">
                                <div class="control-group">
                                    <label class="control-label"></label>
                                    <div class="controls">
                                        <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="btn btn-success" ValidationGroup="tt" OnClick="btnsubmit_Click1"></asp:Button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--END ABOUT US-->
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

