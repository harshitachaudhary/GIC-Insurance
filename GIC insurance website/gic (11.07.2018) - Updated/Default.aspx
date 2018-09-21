<%@ Page Title="" Language="C#" MasterPageFile="~/frontmaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
        <!-- Banner/Slider -->
        <div id="slider" class="banner banner-slider carousel slide carousel-fade">
            <!-- Wrapper for Slides -->
            <div class="carousel-inner">
                <!-- // -->
                <div class="item active">
                    <div class="fill" style="background-image: url('image/banner-3.jpg');">
                        <div class="banner-content">
                            <div class="container">
                                <div class="row">
                                    <div class="banner-text light">
                                        <h4 class="title-intro-sub">Insurance your Car with</h4>
                                        <h2 class="title-intro">Insurance GIC</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- // -->
                <div class="item">
                    <div class="fill" style="background-image: url('image/banner-2.jpg');">
                        <div class="banner-content">
                            <div class="container">
                                <div class="row">
                                    <div class="banner-text light">
                                        <h4 class="title-intro-sub">Insurance Your Business With</h4>
                                        <h2 class="title-intro">INSURANCE GIC</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- // -->
                <div class="item">
                    <div class="fill" style="background-image: url('image/banner-1.jpg');">
                        <div class="banner-content">
                            <div class="container">
                                <div class="row">
                                    <div class="banner-text light">
                                        <h4 class="title-intro-sub">Protect almost Anything With</h4>
                                        <h2 class="title-intro">INSURANCE GIC</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- // -->
            </div>
            <!-- Arrow Controls -->
            <a class="left carousel-control" href="#slider" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#slider" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <!-- #end Banner/Slider -->

        <!-- End Header -->
        <!-- Content -->
        <div class="section section-contents section-pad-sm">
            <div class="container">
                <div class="content row center">
                    <!-- Feature Carousel -->
                    <div class="row row-feature row-column feature-s5 boxed-filled has-carousel" data-margin="2" data-navs="1">
                        <asp:Repeater ID="Rptservices" runat="server">
                            <ItemTemplate>
                                <div class="col-sm-4 col-xs-6">
                                    <div class="feature">
                                        <a href="insurance-details.aspx?service-name=<%#Eval("service_name") %>">
                                            <div class="fbox-photo">
                                                <img src="<%# ResolveUrl(Eval("service_image").ToString()) %>" alt="Services" />
                                            </div>
                                            <div class="fbox-over">
                                                <h3 class="title"><%# Eval("service_name") %></h3>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <!-- End Feature Carousel -->
                </div>
            </div>
        </div>
        <!-- End Content -->
        <!-- Content -->
        <div class="section section-contents section-pad">
            <div class="container">
                <div class="content row">
                    <div class="row">
                        <div class="col-sm-6">
                            <h4 class="heading-sm-lead">
                                <asp:Label ID="lblabtheading1" runat="server" Text="Label"></asp:Label></h4>
                            <h2 class="heading-lead">
                                <asp:Label ID="lblabtheading2" runat="server" Text="Label"></asp:Label></h2>
                            <p style="text-align: justify;">
                                <asp:Label ID="lblhomeabt" runat="server" Text="Label"></asp:Label>
                            </p>
                            <p><a href="about.html" class="btn-link focus">More about us</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="imagebg">
                <img src="image/plx-air-a.jpg" alt="">
            </div>
        </div>
        <!-- End content -->
        <!-- Section -->
        <div class="section section-pad-sm has-bg bg-primary light-filter light">
            <div class="container">
                <div class="content row">

                    <div class="col-sm-5 pull-right">
                        <h3 class="mb-x1">How Much Life Insurance Do I Need?</h3>
                        <p>Find the life insurance coverage that best fits your needs.</p>
                        <span class="gaps size-sm"></span>
                        <a href="contact-us.aspx" class="btn btn-light">Contact Us</a>
                    </div>

                </div>
            </div>
            <div class="imagebg">
                <img src="image/plx-life.jpg" alt="">
            </div>
        </div>
        <!-- End Section -->
        <!-- Content Section -->
        <div class="section section-contents section-pad">
            <div class="container">
                <div class="content row">
                    <div class="wide-xs center">
                        <h2>Meet the Staff</h2>
                        <p>Adipiscing elit sed dot eiusmod tempor incididunt labore et dolore. Veniam quis nostrud exercitation ullamco laboris nisiut.</p>
                    </div>
                    <div class="row row-column row-team-member">
                        <asp:Repeater ID="Rptteam" runat="server">
                            <ItemTemplate>
                                <div class="col-md-3 col-xs-6">
                                    <!-- Team Profile -->
                                    <div class="team-member team-s1">
                                        <div class="team-photo">
                                            <img alt="team" src="<%# ResolveUrl(Eval("photo").ToString()) %>" />
                                        </div>
                                        <div class="team-info">
                                            <h4 class="name"><%# Eval("name") %></h4>
                                            <p class="sub-title"><%# Eval("desig") %></p>
                                            <p>
                                                <strong>P:</strong><%# Eval("phone_no") %><br>
                                                <strong>E:</strong> <%# Eval("email") %>
                                            </p>
                                        </div>
                                    </div>
                                    <!-- Team #end -->
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <!-- TeamRow #end -->
                </div>
            </div>
        </div>
        <!-- End Section -->
        <!-- Content -->
        <div class="section section-contents section-pad bg-light">
            <div class="container">
                <div class="content row">

                    <h2>How Insurance Protects You</h2>
                    <div class="row row-column-md mgtop-md">
                        <div class="col-sm-4">
                            <h4 class="color-primary">Preferred rates available</h4>
                            <p>Helps to sed quia non numquam empora incidunt ut lare et dolore magnam aliquam runt mollitia.</p>
                        </div>
                        <!-- // -->
                        <div class="col-sm-4">
                            <h4 class="color-primary">Convenient application process</h4>
                            <p>We helps to protect financially quiuam est qui dolorem ipsum quia dolor sit amet runt molli.</p>
                        </div>
                        <!-- // -->
                        <div class="col-sm-4">
                            <h4 class="color-primary">Commission-free advice</h4>
                            <p>Helps to protect you sit aspeatur aut odit aut conseq uuntur runt mollitia animi magni dolores.</p>
                        </div>
                    </div>

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

