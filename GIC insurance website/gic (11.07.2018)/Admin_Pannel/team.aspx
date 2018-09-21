<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Pannel/admin_master.master" AutoEventWireup="true" CodeFile="team.aspx.cs" Inherits="nyksi_panel_Upload_Main_Product" %>

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
            <h3 class="page-title">Team
                    <%-- <small>form components and widgets</small>--%>
            </h3>
            <ul class="breadcrumb">
                <li><a href="Default.aspx"><i class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
                <li><a href="#">Home</a><span class="divider">&nbsp;</span></li>
                <li><a href="#">Team</a><span class="divider-last">&nbsp;</span></li>
            </ul>
        </div>
    </div>
    <div class="row-fluid">
        <div class="span12">
            <div class="widget">
                <div class="widget-title">
                    <h4><i class="icon-user"></i>Manage Here <span style="color: red;">(Note :- Image Width:540px & Height:540px) </span></h4>
                </div>
                <div class="widget-body">
                    <!--BEGIN ABOUT US-->
                    <form action="#" class="form-horizontal" id="fhgfh" runat="server">
                        <div class="about-us">
                            <div class="row-fluid">
                                <asp:Label ID="lblresult" runat="server"></asp:Label>
                                <asp:GridView ID="gvDetails" DataKeyNames="id" runat="server" Width="90%"
                                    AutoGenerateColumns="false" CssClass="Gridview" HeaderStyle-BackColor="#61A6F8"
                                    ShowFooter="true" HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="White"
                                    OnRowCancelingEdit="gvDetails_RowCancelingEdit"
                                    OnRowDeleting="gvDetails_RowDeleting" OnRowEditing="gvDetails_RowEditing"
                                    OnRowUpdating="gvDetails_RowUpdating"
                                    OnRowCommand="gvDetails_RowCommand">
                                    <Columns>
                                        <asp:TemplateField>
                                            <HeaderTemplate>S.No.</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblSRNO" runat="server" Text='<%#Container.DataItemIndex+1 %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Name">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txteditname" runat="server" Text='<%#Eval("name") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblname" runat="server" Text='<%#Eval("name") %>' />
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="txtftrname" runat="server" />
                                                <asp:RequiredFieldValidator ID="rfvname" runat="server" ControlToValidate="txtftrname" Text="*" ValidationGroup="validaiton" />
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Designation">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txteditdegisnation" runat="server" Text='<%#Eval("desig") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblitesmUsr" runat="server" Text='<%#Eval("desig") %>' />
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="txtftdegisnation" runat="server" />
                                                <asp:RequiredFieldValidator ID="rfvdesig" runat="server" ControlToValidate="txtftdegisnation" Text="*" ValidationGroup="validaiton" />
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Mobile Number">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtphone" runat="server" Text='<%#Eval("phone_no") %>' />
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblphone" runat="server" Text='<%#Eval("phone_no") %>' />
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="txtftrphone" runat="server" Width="95%" />
                                                <asp:RequiredFieldValidator ID="rfvphone" runat="server" ControlToValidate="txtftrphone" Text="*" ValidationGroup="validaiton" />
                                            </FooterTemplate>
                                        </asp:TemplateField>


                                         <asp:TemplateField HeaderText="Email Address">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtemail" runat="server" Text='<%#Eval("email") %>' />
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblemail" runat="server" Text='<%#Eval("email") %>' />
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="txtftremail" runat="server" Width="95%" />
                                                <asp:RequiredFieldValidator ID="rfvemail" runat="server" ControlToValidate="txtftremail" Text="*" ValidationGroup="validaiton" />
                                            </FooterTemplate>
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Team Member Photo">
                                            <EditItemTemplate>
                                                <asp:FileUpload ID="fileuploadedit" runat="server" />
                                                <asp:Label ID="lblimg" runat="server" Text='<%#Eval("photo") %>' Visible="false"></asp:Label>
                                                <asp:Image ID="d" runat="server" ImageUrl='<%#Eval("photo") %>' height="100" Width="100"/>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblDesg" runat="server" Text='<%#Eval("photo") %>' Visible="false" />
                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("photo") %>' height="100" Width="100" />
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:FileUpload ID="fileuploadfooter" runat="server" />
                                                <asp:RequiredFieldValidator ID="rfvimage" runat="server" ControlToValidate="fileuploadfooter" Text="*" ValidationGroup="validaiton" />
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <EditItemTemplate>
                                                <asp:ImageButton ID="imgbtnUpdate" CommandName="Update" runat="server" ImageUrl="~/Images/update.jpg" ToolTip="Update" Height="20px" Width="20px" />
                                                <asp:ImageButton ID="imgbtnCancel" runat="server" CommandName="Cancel" ImageUrl="~/Images/Cancel.jpg" ToolTip="Cancel" Height="20px" Width="20px" />
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:ImageButton ID="imgbtnEdit" CommandName="Edit" runat="server" ImageUrl="~/Images/Edit.jpg" ToolTip="Edit" Height="20px" Width="20px" />
                                                <asp:ImageButton ID="imgbtnDelete" CommandName="Delete" Text="Edit" runat="server" ImageUrl="~/Images/delete.jpg" ToolTip="Delete" Height="20px" Width="20px" />
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:ImageButton ID="imgbtnAdd" runat="server" ImageUrl="~/Images/AddNewitem.jpg" CommandName="AddNew" Width="30px" Height="30px" ToolTip="Add new User" ValidationGroup="validaiton" />
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>

                            </div>



                        </div>



                        <!--END ABOUT US-->

                    </form>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

