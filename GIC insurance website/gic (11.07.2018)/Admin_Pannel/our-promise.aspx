<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Pannel/admin_master.master" AutoEventWireup="true" CodeFile="our-promise.aspx.cs" Inherits="nyksi_panel_Upload_Main_Product" %>

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
            <h3 class="page-title">Update About Us Content
                    <%-- <small>form components and widgets</small>--%>
            </h3>
            <ul class="breadcrumb">
                <li><a href="Default.aspx"><i class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
                <li><a href="#">About Us</a><span class="divider">&nbsp;</span></li>
                <li><a href="#">Update About Us Content</a><span class="divider-last">&nbsp;</span></li>
            </ul>
        </div>
    </div>

    <div class="row-fluid">
        <div class="span12">
            <div class="widget">
                <div class="widget-title">
                    <h4><i class="icon-user"></i>Update Here</h4>
                </div>
                <div class="widget-body">
                    <!--BEGIN ABOUT US-->
                    <form action="#" class="form-horizontal" id="fhgfh" runat="server">
                        <div class="about-us">
                            <div class="row-fluid">
                                <div class="row-fluid">
                                    <div class="span6">
                                       
                                         <div class="control-group">
                                            <label class="control-label">
                                                Heading :                                          
                                            </label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtheading1" runat="server" Width="50%"></asp:TextBox>
                                            </div>
                                            <br />
                                        </div>
                                         <div class="control-group">
                                            <label class="control-label">
                                                Name :                                          
                                            </label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtname" runat="server" Width="50%"></asp:TextBox>
                                            </div>
                                            <br />
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label">
                                                Content Paragraph 1 :                          
                                            </label>
                                            <div class="controls">
                                                <cc1:Editor ID="Editorpara1" runat="server" Height="200px" Width="300px" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="span6">
                                         <div class="control-group">
                                            <label class="control-label">
                                               Designation :                                          
                                            </label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtdesig" runat="server" Width="50%"></asp:TextBox>
                                            </div>
                                            <br />
                                        </div>
                                         <div class="control-group">
                                            <label class="control-label">
                                                Company Name :                                          
                                            </label>
                                            <div class="controls">
                                                <asp:TextBox ID="txtcomname" runat="server" Width="50%"></asp:TextBox>
                                            </div>
                                            <br />
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label">
                                                Content Paragraph 2 :                          
                                            </label>
                                            <div class="controls">
                                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                                <cc1:Editor ID="Editorpara2" runat="server" Height="200px" Width="300px" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-actions clearfix">
                                    <div class="control-group">
                                        <label class="control-label"></label>
                                        <div class="controls">
                                            <asp:Button ID="Button1" runat="server" Text="Update" CssClass="btn btn-success" ValidationGroup="tt" OnClick="Button1x_Click"></asp:Button>
                                        </div>
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

