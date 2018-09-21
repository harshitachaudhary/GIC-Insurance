<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Pannel/admin_master.master" AutoEventWireup="true" CodeFile="insert-gic-details.aspx.cs" Inherits="nyksi_panel_Upload_Main_Product" %>

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
            <h3 class="page-title">Insert GIC Details
                    <%-- <small>form components and widgets</small>--%>
            </h3>
            <ul class="breadcrumb">
                <li><a href="Default.aspx"><i class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
                <li><a href="#">GIC</a><span class="divider">&nbsp;</span></li>
                <li><a href="#">Insert GIC Details</a><span class="divider-last">&nbsp;</span></li>
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

                                    <div class="control-group">
                                        <label class="control-label">Insurance Company Name:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txticn" runat="server" Width="90%"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txticn" ValidationGroup="tt" ErrorMessage="Pls. Enter Insurance Company Name" ForeColor="#cc3300"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>


                                    <div class="control-group">
                                        <label class="control-label">Name:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtname" runat="server" Width="90%"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtname"  ValidationGroup="tt" ErrorMessage="Pls. Enter Name" ForeColor="#cc3300"></asp:RequiredFieldValidator>
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
                                        <label class="control-label">Vehicle Number:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtvehicleno" runat="server" Width="90%"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtvehicleno" ValidationGroup="tt" ErrorMessage="Pls. Enter Vehicle Number" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">Registration Date:</label>
                                        <div class="controls">
                                            <input id="txtregdate"  runat="server" class="m-ctrl-medium date-picker" width="100%"  type="text" value="12-02-2012" />
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtregdate" ValidationGroup="tt" ErrorMessage="Pls. Enter Registration Date" ForeColor="#cc3300"></asp:RequiredFieldValidator>
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
                                            <asp:TextBox ID="txtmodel" runat="server" Width="90%"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmodel" ValidationGroup="tt" ErrorMessage="Pls. Enter Vehicle Model" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">
                                            Address:
                                           <%--<asp:RequiredFieldValidator ID="RequireddFieldValidator5" runat="server" ControlToValidate="Editor1" ValidationGroup="tt" ErrorMessage="Pls. Enter Description. !" Text="*" ForeColor="#cc3300"></asp:RequiredFieldValidator>--%>
                                        </label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Width="90%" Height="100px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtaddress" ValidationGroup="tt" ErrorMessage="Pls. Enter Address" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                </div>

                                <div class="span6">

                                    <div class="control-group">
                                        <label class="control-label">N.C.B.:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtncb" runat="server" Width="90%"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtncb" ValidationGroup="tt" ErrorMessage="Pls. Enter NCB" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>



                                    <div class="control-group" id="divnOSize" runat="server" visible="true">
                                        <label class="control-label">Premium(1st Party):</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtpremium" runat="server" Width="90%"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtpremium" ValidationGroup="tt" ErrorMessage="Pls. Enter Premium" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">Total:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txttotal" runat="server" Width="90%"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txttotal" ValidationGroup="tt" ErrorMessage="Pls. Enter Total Amount" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>


                                    <div class="control-group">
                                        <label class="control-label">Expiry Date:</label>
                                        <div class="controls">
                                            <input id="txtexpirydate"  runat="server" class="m-ctrl-medium date-picker" width="100%"  type="text" value="12-02-2012" />
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtexpirydate" ValidationGroup="tt" ErrorMessage="Pls. Enter Expiry Date" ForeColor="#cc3300"></asp:RequiredFieldValidator>
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
                                            <asp:TextBox ID="txtpolicyno" runat="server" Width="90%"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtpolicyno" ValidationGroup="tt" ErrorMessage="Pls. Enter Policy Number" ForeColor="#cc3300"></asp:RequiredFieldValidator>
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

