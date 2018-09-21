<%@ Page Title="" Language="C#" MasterPageFile="~/frontmaster.master" AutoEventWireup="true" CodeFile="about-us.aspx.cs" Inherits="about_us" %>

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
                            <h1 class="page-title ucap">We're in this Together</h1>
                            <p class="lead">We've been doing well by almost 10 years. We're happy you decided to get to know us better.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-bg imagebg">
                <img class="img-responsive" src="image/banner-aboutus.jpg" alt="" />
            </div>
        </div>
        <!-- End Banner -->

        <!-- Content -->
        <div class="section section-contents bg-light section-pad">
            <div class="container">
                <div class="content row">
                    <div class="wide-sm center">
                        <h2 class="color-primary">
                            <asp:Label ID="lblabtheading1" runat="server"></asp:Label></h2>
                        <p>
                            <asp:Label ID="lblabtheading2" runat="server"></asp:Label>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <!-- End content -->
        <!-- Content -->
        <div class="section section-contents section-pad">
            <div class="container">
                <div class="content row">

                    <div class="row row-column">
                        <div class="col-md-7">
                            <h2 class="heading">
                                <asp:Label ID="lblaboutheading" runat="server" Text="Label"></asp:Label></h2>
                            <p>
                                <asp:Label ID="lblabtpara1" runat="server" Text="Label"></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="lblabtpara2" runat="server" Text="Label"></asp:Label></p>
                        </div>
                        <div class="col-md-5 pad-l">
                            <h2>
                                <asp:Label ID="lblpromisehng" runat="server" Text="Label"></asp:Label></h2>
                            <p>
                                <asp:Label ID="lblpromisepara1" runat="server" Text="Label"></asp:Label></p>
                            <p>
                                <asp:Label ID="lblpromisepara2" runat="server" Text="Label"></asp:Label></p>
                            <div class="quotes quotes-flat">
                                <div class="profile">
                                    <h5>
                                        <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label></h5>
                                    <h6>
                                        <asp:Label ID="lbldesig" runat="server" Text="Label"></asp:Label><br>
                                        <asp:Label ID="lblcomname" runat="server" Text="Label"></asp:Label></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr class="hr-lg">                
                </div>
            </div>
        </div>
        <!-- End content -->
        <!-- Testimonials -->
        <div class="section section-quotes section-pad has-bg1 dark-filter light">
            <div class="container">
                <div class="content row">
                    <h2 class="center">What Our Customers are Saying</h2>
                    <div class="testimonials style-v2">
                        <div id="testimonial" class="quotes-slider wide-sm">
                            <div class="owl-carousel loop has-carousel" data-items="1" data-loop="true" data-dots="true" data-auto="true" data-navs="true">

                                <asp:Repeater ID="Rpttesti" runat="server">
                                    <ItemTemplate>
                                        <div class="item center">
                                            <!-- Each Quotes -->
                                            <div class="quotes">
                                                <div class="quotes-text">
                                                    <p><%# Eval("desc_") %></p>
                                                </div>
                                                <div style="display: block; background: #FFF; width: 100px; height: 100px; display: inline-block; border: 5px solid #FFF;">
                                                    <img src="<%# ResolveUrl(Eval("img").ToString()) %>" width="100" height="100" />
                                                </div>
                                                <h5><%# Eval("name") %></h5>
                                                <h6><%# Eval("degisnation") %></h6>
                                            </div>
                                            <!-- End Quotes -->
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <!-- End Slide -->
                            </div>
                            <!-- End Slide -->
                        </div>
                    </div>
                </div>
            </div>
            <div class="section-bg imagebg">
                <img src="image/plx-quotes.jpg" alt="">
            </div>
        </div>
        <!-- End Section -->
        <!-- Client logo -->
        <div class="section section-logos section-pad-sm">
            <div class="container">
                <div class="content row">
                    <h3 class="heading-sm-lead ucap center">COMPANIES WE REPRESENT</h3>
                    <div class="owl-carousel loop logo-carousel style-v1">

                        <asp:Repeater ID="Rptclientlogos" runat="server">
                            <ItemTemplate>
                                <div class="logo-item">
                                    <img alt="" width="140" height="55" src="<%# ResolveUrl(Eval("image").ToString()) %>" />
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Section -->
    </div>
</asp:Content>

