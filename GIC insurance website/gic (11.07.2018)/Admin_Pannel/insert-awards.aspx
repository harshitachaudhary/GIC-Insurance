<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Pannel/admin_master.master" AutoEventWireup="true" CodeFile="insert-awards.aspx.cs" Inherits="nyksi_panel_banner" %>

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
            <h3 class="page-title">Insert Awards
                    <%-- <small>form components and widgets</small>--%>
            </h3>
            <ul class="breadcrumb">
                <li><a href="Default.aspx"><i class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
                <li><a href="#">Awards</a><span class="divider">&nbsp;</span></li>
                <li><a href="#">Insert Awards</a><span class="divider-last">&nbsp;</span></li>
            </ul>
        </div>
    </div>

    <div class="row-fluid">
        <div class="span12">
            <div class="widget">
                <div class="widget-title">
                    <h4><i class="icon-user"></i>Add Here <span style="color: red">(Image Size:- Width:730px & Height:485px)</span></h4>
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
                                            <asp:TextBox ID="txtawardname" runat="server" Width="50%"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtawardname" ValidationGroup="tt" ErrorMessage="*" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div> 
                                    
                                     <div class="control-group">
                                        <label class="control-label">Award Description:</label>
                                        <div class="controls">
                                             <asp:TextBox ID="txtawarddesc" runat="server" Width="340" Height="100" TextMode="MultiLine"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtawarddesc" ValidationGroup="tt" ErrorMessage="*" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>                                                                    
                                                                     
                                    <div class="control-group">
                                        <label class="control-label">Choose Award Image:</label>
                                        <div class="controls">
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="FileUpload1" ValidationGroup="tt" ErrorMessage="*" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-actions clearfix" id="ede" runat="server" visible="true">
                                <asp:Button ID="ntnAddCategory" runat="server" Text="Submit" CssClass="btn btn-success" ValidationGroup="tt" OnClick="ntnAddCategory_Click"></asp:Button>
                                <asp:Label ID="lblcatcode" runat="server" Visible="false"></asp:Label>
                            </div>

                            <div class="row-fluid">
                                <asp:GridView ID="grdcategory" runat="server" PageIndex="1"
                                    AutoGenerateColumns="false" Font-Size="Small"
                                    Style="margin-left: 0%; text-align: center; width: 100%;"
                                    DataKeyNames="id"
                                    EmptyDataText="No Data Found"
                                    EnablePersistedSelection="false">
                                    <Columns>
                                        <asp:TemplateField>
                                            <HeaderTemplate>S.No.</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblSRNO" runat="server" Text='<%#Container.DataItemIndex+1 %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>


                                        <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                            <HeaderTemplate>Award Name</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblawardname" runat="server" Text='<%#Eval("award_name") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>


                                         <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                            <HeaderTemplate>Award Description</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblawarddesc" runat="server" Text='<%#Eval("award_desc") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                  
                                        <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                            <HeaderTemplate>Award Image</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("award_image") %>' Width="200px" Height="100px" />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                            <HeaderTemplate>Edit</HeaderTemplate>
                                            <ItemTemplate>
                                                <a href="edit-awards.aspx?id_x=<%#Eval("id") %>">Edit</a>
                                            </ItemTemplate>
                                        </asp:TemplateField>    
                                          <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                            <HeaderTemplate>Delete</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lb_Edit" runat="server" OnClientClick="return confirm('Do you want to Confirm for this action?')" OnClick="lb_Edit_Click">Delete</asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>                                  
                                    </Columns>
                                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
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

