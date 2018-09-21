<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Pannel/admin_master.master" AutoEventWireup="true" CodeFile="plan-details.aspx.cs" Inherits="nyksi_panel_Upload_Main_Product" %>

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
            <h3 class="page-title">Plan Details
                    <%-- <small>form components and widgets</small>--%>
            </h3>
            <ul class="breadcrumb">
                <li><a href="Default.aspx"><i class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
                <li><a href="#">Plan</a><span class="divider">&nbsp;</span></li>
                <li><a href="#">Plan Details</a><span class="divider-last">&nbsp;</span></li>
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
                                        <label class="control-label">
                                            <span class="droptextcolor"> Choose Service First : </span>                                       
                                        </label>
                                        <div class="controls">
                                            <asp:DropDownList ID="ddlservice" runat="server" Width="68%"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="ddlservice" ValidationGroup="tt" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">Plan Name :</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtplanname" runat="server" Width="80%"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtplanname" ValidationGroup="tt" ErrorMessage="*" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>



                                    <div class="control-group">
                                        <label class="control-label">Banner Heading 1 :</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtbannerheading1" runat="server" Width="80%"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtbannerheading1" ValidationGroup="tt" ErrorMessage="*" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>



                                    <div class="control-group">
                                        <label class="control-label">Banner Heading 2 :</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txtbannerheading2" runat="server" Width="80%"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtbannerheading2" ValidationGroup="tt" ErrorMessage="*" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>


                                    <div class="control-group">
                                        <label class="control-label">Choose Plan Image :<span style="color: red">(Image Size:- Width:730px & Height:485px)</span></label>
                                        <div class="controls">
                                            <asp:FileUpload ID="FileUpload2" runat="server" />
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FileUpload2" ValidationGroup="tt" ErrorMessage="*" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">Choose Plan Banner :<span style="color: red">(Image Size:- Width:1920px & Height:520px)</span></label>
                                        <div class="controls">
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="FileUpload1" ValidationGroup="tt" ErrorMessage="*" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">Choose Plan Short Image :<span style="color: red">(Image Size:- Width:555px & Height:285px)</span></label>
                                        <div class="controls">
                                            <asp:FileUpload ID="FileUpload3" runat="server" />
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="FileUpload3" ValidationGroup="tt" ErrorMessage="*" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label">
                                            Content :                                          
                                        </label>
                                        <div class="controls">
                                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                            <cc1:Editor ID="Editor1" runat="server" Height="400px" Width="400px" />
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Editor1" ValidationGroup="tt" ErrorMessage="*" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>


                                </div>


                                <div class="span6">


                                    <div class="control-group">
                                        <label class="control-label">
                                            Short Content :                                          
                                        </label>
                                        <div class="controls">

                                            <cc1:Editor ID="Editorshortcontent" runat="server" Height="400px" Width="350px" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="Editorshortcontent" ValidationGroup="tt" ErrorMessage="*" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
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

                        <!--END ABOUT US-->
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

