<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Pannel/admin_master.master" AutoEventWireup="true" CodeFile="edit-gic.aspx.cs" Inherits="nyksi_panel_Upload_Main_Product" %>

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
            <h3 class="page-title">Edit GIC Details
                    <%-- <small>form components and widgets</small>--%>
            </h3>
            <ul class="breadcrumb">
                <li><a href="Default.aspx"><i class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
                <li><a href="gic-list.aspx">GIC List View</a><span class="divider">&nbsp;</span></li>
                <li><a href="#">Edit GIC Details</a><span class="divider-last">&nbsp;</span></li>
            </ul>
        </div>
    </div>

    <div class="row-fluid">
        <div class="span12">
            <div class="widget">
                <div class="widget-title">
                    <h4><i class="icon-user"></i>Update GIC List Here</h4>
                </div>
                <div class="widget-body">
                    <!--BEGIN ABOUT US-->
                    <form action="#" class="form-horizontal" id="fhgfh" runat="server">

                        <div class="about-us">

                            <div class="row-fluid">
                                <div class="span6">

                                    <div class="control-group">
                                        <label class="control-label">Insurance Company Name:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtediticn" runat="server" Width="90%"></asp:TextBox>                                          
                                        </div>
                                    </div>


                                    <div class="control-group">
                                        <label class="control-label">Name:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txteditname" runat="server" Width="90%"></asp:TextBox>                                           
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">Mobile Number:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txteditmobileno" runat="server" Width="90%"></asp:TextBox>                                          
                                        </div>
                                    </div>
                                  
                                    <div class="control-group">
                                        <label class="control-label">Vehicle Number:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txteditvehicleno" runat="server" Width="90%"></asp:TextBox>                                       
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">Registration Date:</label>
                                        <div class="controls">
                                            <input id="txteditregdate"  runat="server" class="m-ctrl-medium date-picker" width="100%"  type="text" value="12-02-2012" />                                          
                                        </div>
                                    </div>

                                    <%--<div class="control-group">
                                        <label class="control-label">Registration Date:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtregdate" runat="server" Width="90%"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequircvfedFieldValidator9" runat="server" ControlToValidate="txtregdate" ValidationGroup="tt" ErrorMessage="Pls. Enter Offer Percentage" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>--%>

                                    <div class="control-group">
                                        <label class="control-label">Model:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txteditmodel" runat="server" Width="90%"></asp:TextBox>                                           
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">
                                            Address:                                        
                                        </label>
                                        <div class="controls">
                                            <asp:TextBox ID="txteditaddress" runat="server" TextMode="MultiLine" Width="90%" Height="100px"></asp:TextBox>                                           
                                        </div>
                                    </div>

                                </div>

                                <div class="span6">

                                    <div class="control-group">
                                        <label class="control-label">N.C.B.:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txteditncb" runat="server" Width="90%"></asp:TextBox>                                           
                                        </div>
                                    </div>



                                    <div class="control-group" id="divnOSize" runat="server" visible="true">
                                        <label class="control-label">Premium(1st Party):</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txteditpremium" runat="server" Width="90%"></asp:TextBox>                                         
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">Total:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtedittotal" runat="server" Width="90%"></asp:TextBox>                                          
                                        </div>
                                    </div>


                                    <div class="control-group">
                                        <label class="control-label">Expiry Date:</label>
                                        <div class="controls">
                                            <input id="txteditexpirydate"  runat="server" class="m-ctrl-medium date-picker" width="100%"  type="text" value="12-02-2012" />                                       
                                        </div>
                                    </div>

                                   <%-- <div class="control-group">
                                        <label class="control-label">Expiry Date:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtexpirydate" runat="server" Width="90%"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtexpirydate" ValidationGroup="tt" ErrorMessage="Product SrerialNo" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>--%>

                                    <div class="control-group">
                                        <label class="control-label">Policy Number:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txteditpolicyno" runat="server" Width="90%"></asp:TextBox>                                          
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-actions clearfix">
                                <div class="control-group">
                                    <label class="control-label"></label>
                                    <div class="controls">
                                        <asp:Button ID="btnupdate" runat="server" Text="Update" CssClass="btn btn-success" ValidationGroup="tt" onclick="btnupdate_Click"></asp:Button>
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

