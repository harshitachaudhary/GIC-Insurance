<%@ Page Title="" Language="C#" MasterPageFile="~/frontmaster.master" AutoEventWireup="true" CodeFile="insurance-details.aspx.cs" Inherits="insurance_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
        <!-- Banner -->
        <div class="banner banner-static has-bg light-filter">
            <div class="banner-cpn">
                <div class="container">
                    <div class="content row">
                        <div class="banner-text">
                            <h1 class="page-title">
                                <asp:Label ID="lblservicehng1" runat="server"></asp:Label>
                            </h1>
                            <p class="lead">
                                <asp:Label ID="lblservicehng2" runat="server"></asp:Label>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-bg imagebg">
                <asp:Image ID="imgbanner" runat="server" class="img-responsive" />
                <%--<img id="imgbanner" runat="server" class="img-responsive" src="<%#(Eval("service_banner").ToString()) %>" alt="" />--%>
            </div>
        </div>
        <!-- End Banner -->
        <!-- Content -->
        <div class="section section-contents section-pad">
            <div class="container">
                <div class="content row">
                    <h2>
                        <asp:Label ID="lblservicename" runat="server"></asp:Label></h2>
                    <p>
                        <asp:Image ID="imgservice" runat="server" class="alignright col-md-5" alt="" />
                        <%-- <img id="imgservice" runat="server" src="<%#(Eval("service_image").ToString()) %>" />--%>
                        <asp:Label ID="lblservicecontent" runat="server"></asp:Label>
                    </p>
                </div>
            </div>
        </div>
        <!-- End content -->
        <!-- Content -->
        <div class="section section-contents section-pad bg-light">
            <div class="container">
                <div class="content row">
                    <h2>Plans Available</h2>               
                    <div class="row row-column-md mgtop-md">
                        <asp:Repeater ID="Rptplan" runat="server">
                            <ItemTemplate>
                                <div class="col-sm-3">
                                    <a href="plan-details.aspx?plan-name=<%#Eval("plan_name") %>">
                                        <div class="image">
                                            <img src="<%# ResolveUrl(Eval("short_image").ToString()) %>" alt="" />
                                        </div>
                                        <h5><%# Eval("plan_name") %></h5>
                                        <p><%# Eval("short_content") %></p>
                                    </a>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <!-- // -->
                    </div>
                </div>
            </div>
        </div>
        <!-- End content -->
    </div>

</asp:Content>

