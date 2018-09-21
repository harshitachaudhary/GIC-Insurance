<%@ Page Title="" Language="C#" MasterPageFile="~/frontmaster.master" AutoEventWireup="true" CodeFile="awards.aspx.cs" Inherits="awards" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
        <!-- Banner -->
        <div class="banner banner-static has-bg no-filter">
            <div class="banner-cpn">
                <div class="container">
                    <div class="content row">
                        <div class="banner-text">
                            <h1 class="page-title">Awards & Recognition Achieved by Insurance GIC </h1>
                            <p class="lead">Want to work with us or need more details about adipicing elit ncidut labore dolor unde omnis iste.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-bg imagebg">
                <img class="img-responsive" src="image/banner-awards.jpeg" alt="" />
            </div>
        </div>
        <!-- End Banner -->
        <!-- Content -->
        <div class="section section-services section-pad bdr-top">
            <div class="container">
                <div class="content row">
                    <!-- Feture Row -->
                    <div class="row row-feature row-column">
                        <asp:Repeater ID="Rptawards" runat="server">
                            <ItemTemplate>
                                <div class="col-md-4 col-sm-4">
                                    <!-- featured box -->
                                    <div class="feature boxed feature-s6">
                                        <a href="#">
                                            <div class="fbox-photo">
                                                <img src="<%# ResolveUrl(Eval("award_image").ToString()) %>" alt="">
                                            </div>
                                        </a>
                                        <div class="fbox-content">
                                            <h3 class="lead"><a href="#"><%# Eval("award_name") %></a></h3>
                                            <p style="text-align: justify;"><%# Eval("award_desc") %></p>
                                        </div>
                                    </div>
                                    <!-- End Feature box -->
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <!-- Feture Row  #end -->
                </div>
            </div>
        </div>
        <!-- End Content -->
    </div>
</asp:Content>

