<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Pannel/admin_master.master" AutoEventWireup="true" CodeFile="contact-query-list.aspx.cs" Inherits="Admin_Pannel_contact_query" %>

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
            <h3 class="page-title">Contact Queries
                    <%-- <small>form components and widgets</small>--%>
            </h3>
            <ul class="breadcrumb">
                <li><a href="Default.aspx"><i class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
                <%--<li><a href="#">Home</a><span class="divider">&nbsp;</span></li>--%>
                <li><a href="#">Contact Queries</a><span class="divider-last">&nbsp;</span></li>
            </ul>
        </div>
    </div>

    <div class="row-fluid">
        <div class="span12">
            <div class="widget">
                <div class="widget-title">
                    <h4><i class="icon-user"></i> Manage Here</h4>
                </div>
                <div class="widget-body">
                    <!--BEGIN ABOUT US-->
                    <div class="about-us">
                        <div class="row-fluid">
                            <form action="#" class="form-horizontal" id="fhgfh" runat="server">
                               <%-- <asp:Button ID="btnExport" runat="server" Text="Export to Excel" OnClick="btnExport_Click" />--%>
                                <div>
                                    <asp:GridView ID="grdquery" runat="server" AllowPaging="true"
                                        AutoGenerateColumns="false" Font-Size="Small"
                                        Style="margin-left: 0%; text-align: center; width: 100%;"
                                        DataKeyNames="id"
                                        EmptyDataText="No Data Found"
                                        EnablePersistedSelection="false"
                                        PageSize="50">
                                        <Columns>
                                            <asp:TemplateField>
                                                <HeaderTemplate>S.No.</HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lblSRNO" runat="server" Text='<%#Container.DataItemIndex+1 %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                                <HeaderTemplate>Name</HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lblname" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                                <HeaderTemplate>Email ID</HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lblemail" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                                <HeaderTemplate>Mobile Number</HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lblphone" runat="server" Text='<%# Eval("phone") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                             <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                                <HeaderTemplate>Address</HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lbladdress" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                                <HeaderTemplate>Query</HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lblquery" runat="server" Text='<%# Eval("query") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                                <HeaderTemplate>Action</HeaderTemplate>
                                                <ItemTemplate>
                                                    <a href="https://www.gmail.com" target="_blank">Reply</a>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                                <HeaderTemplate>Delete</HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lb_delete" runat="server" OnClientClick="return confirm('Do you want to Confirm for delete this item?')" OnClick="lb_delete_Click">Delete</asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                    </asp:GridView>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!--END ABOUT US-->

                </div>
            </div>
        </div>
    </div>










































</asp:Content>

