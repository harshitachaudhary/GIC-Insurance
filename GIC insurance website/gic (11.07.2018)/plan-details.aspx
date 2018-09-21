<%@ Page Title="" Language="C#" MasterPageFile="~/frontmaster.master" AutoEventWireup="true" CodeFile="plan-details.aspx.cs" Inherits="plan_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
        <!-- Banner -->
        <div class="banner banner-static has-bg">
            <div class="banner-cpn">
                <div class="container">
                    <div class="content row">
                        <div class="banner-text">
                            <h1 class="page-title">
                                <asp:Label ID="lblplanhng1" runat="server"></asp:Label></h1>
                            <p class="lead">
                                <asp:Label ID="lblplanhng2" runat="server"></asp:Label></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-bg imagebg">
                <asp:Image ID="imgplanbanner" runat="server" class="img-responsive" />
            </div>
        </div>
        <!-- End Banner -->
        <!-- Content -->
        <div class="section section-contents section-pad">
            <div class="container">
                <div class="content row">
                    <h2>
                        <asp:Label ID="lblplanname" runat="server"></asp:Label></h2>
                    <p>
                        <asp:Image ID="imgservice" runat="server" class="alignright col-md-4" alt="" />
                        <asp:Label ID="lblplancontent" runat="server"></asp:Label>
                    </p>
                </div>
            </div>
        </div>
        <!-- End Content -->
    </div>

</asp:Content>

