<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Pannel/admin_master.master" AutoEventWireup="true" CodeFile="edit-awards.aspx.cs" Inherits="nyksi_panel_banner" %>

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
            <h3 class="page-title">Edit Awards
                    <%-- <small>form components and widgets</small>--%>
            </h3>
            <ul class="breadcrumb">
                <li><a href="Default.aspx"><i class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
                <li><a href="#">Awards</a><span class="divider">&nbsp;</span></li>
                <li><a href="insert-awards.aspx">Insert Awards</a><span class="divider">&nbsp;</span></li>
                <li><a href="#">Edit Awards</a><span class="divider-last">&nbsp;</span></li>
            </ul>
        </div>
    </div>
    <div class="row-fluid">
        <div class="span12">
            <div class="widget">
                <div class="widget-title">
                    <h4><i class="icon-user"></i>Edit Here <span style="color: red">(Image Size:- Width:1920px & Height:520px)</span></h4>
                </div>
                <div class="widget-body">
                    <!--BEGIN ABOUT US-->
                    <form action="#" class="form-horizontal" id="fhgfh" runat="server">
                        <div class="about-us">
                            <div class="row-fluid" id="dd" runat="server" visible="true">
                                <div class="span12">
                                    <div class="control-group">
                                        <label class="control-label">Award Name:</label>
                                        <div class="controls">
                                            <asp:TextBox ID="txteditawardname" runat="server" Width="50%"></asp:TextBox>                                          
                                        </div>
                                    </div>     
                                    
                                     <div class="control-group">
                                        <label class="control-label">Award Description:</label>
                                        <div class="controls">
                                             <asp:TextBox ID="txteditawarddesc" runat="server" Width="340" Height="100" TextMode="MultiLine"></asp:TextBox>                        
                                        </div>
                                    </div>        
                                                            
                                    <div class="control-group">
                                        <label class="control-label">Choose Award Image:</label>
                                        <div class="controls">
                                            <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                                            <asp:Image ID="Image1" runat="server" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-actions clearfix">
                                <asp:Button ID="ntnAddCategory" runat="server" Text="Update" CssClass="btn btn-success" ValidationGroup="tt" OnClick="ntnAddCategory_Click"></asp:Button>
                                <asp:Label ID="lblcatcode" runat="server" Visible="false"></asp:Label>
                            </div>
                        </div>
                        <!--END ABOUT US-->
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

