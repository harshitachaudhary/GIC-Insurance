<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Pannel/admin_master.master" AutoEventWireup="true" CodeFile="lic-list.aspx.cs" Inherits="nyksi_panel_banner" %>

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
            <h3 class="page-title">LIC List
                    <%-- <small>form components and widgets</small>--%>
            </h3>
            <ul class="breadcrumb">
                <li><a href="Default.aspx"><i class="icon-home"></i></a><span class="divider">&nbsp;</span></li>
                <%--<li><a href="#">Home</a><span class="divider">&nbsp;</span></li>--%>
                <li><a href="#">LIC List</a><span class="divider-last">&nbsp;</span></li>
            </ul>
        </div>
    </div>

    <div class="row-fluid">
        <div class="span12">
            <div class="widget">
                <div class="widget-title">
                    <h4><i class="icon-user"></i>Manage LIC List Here</h4>
                </div>
                <div class="widget-body">
                    <!--BEGIN ABOUT US-->
                    <form action="#" class="form-horizontal" id="fhgfh" runat="server">
                        <div class="about-us">

                            <div class="control-group">
                                <label class="control-label">Search by Name:</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtsearchbyname" runat="server" Width="70%"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtsearchbyname" ValidationGroup="ttp" ErrorMessage="*" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                    <asp:Button ID="BtnSearchbyname" runat="server" Text="Search" CssClass="btn btn-success" ValidationGroup="ttp" OnClick="BtnSearchbyname_Click"></asp:Button>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">Search by Policy No.:</label>
                                <div class="controls">
                                    <asp:TextBox ID="txtsearchbypolicyno" runat="server" Width="70%"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtsearchbypolicyno" ValidationGroup="ttpp" ErrorMessage="*" ForeColor="#cc3300"></asp:RequiredFieldValidator>
                                    <asp:Button ID="Btnsearchbypolicyno" runat="server" Text="Search" CssClass="btn btn-success" ValidationGroup="ttpp" OnClick="Btnsearchbypolicyno_Click"></asp:Button>
                                </div>
                            </div>

                            <div class="row-fluid">
                                <asp:GridView ID="grdGic" runat="server" PageIndex="1"
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
                                            <HeaderTemplate>Premium Type</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblicn" runat="server" Text='<%#Eval("premium_type") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                            <HeaderTemplate>Name</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblname" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                            <HeaderTemplate>Policy Number</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblpolicyno" runat="server" Text='<%#Eval("Policy_no") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                            <HeaderTemplate>Premium</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblpremium" runat="server" Text='<%#Eval("Premium") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                            <HeaderTemplate>Plan</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblplan" runat="server" Text='<%#Eval("_Plan") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                            <HeaderTemplate>Term</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblterm" runat="server" Text='<%#Eval("Term") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                            <HeaderTemplate>P.P.T.</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblppt" runat="server" Text='<%#Eval("PPT") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                            <HeaderTemplate>Maturity</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblmaturity" runat="server" Text='<%#Eval("Maturity") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                            <HeaderTemplate>S.B. Payment</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblsbpayment" runat="server" Text='<%#Eval("S_B_Payment") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                            <HeaderTemplate>Mobile Number</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblmobileno" runat="server" Text='<%#Eval("Mobile_no") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                            <HeaderTemplate>Edit</HeaderTemplate>
                                            <ItemTemplate>
                                                <a href="edit-lic.aspx?id_x=<%#Eval("id") %>">View/Edit</a>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                            <HeaderTemplate>Delete</HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lbdelete" runat="server" OnClientClick="return confirm('Do you want to delete this item?')" OnClick="lbdelete_Click">Delete</asp:LinkButton>
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

