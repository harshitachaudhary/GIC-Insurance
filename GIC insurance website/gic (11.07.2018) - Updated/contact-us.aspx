<%@ Page Title="" Language="C#" MasterPageFile="~/frontmaster.master" AutoEventWireup="true" CodeFile="contact-us.aspx.cs" Inherits="contact_us" %>

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
                            <h1 class="page-title">Contact LIC Insurance</h1>
                            <p class="lead">Want to work with us or need more details about adipicing elit ncidut labore dolor unde omnis iste.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-bg imagebg">
                <img class="img-responsive" src="image/banner-contacts.jpg" alt="" />
            </div>
        </div>
        <!-- End Banner -->
        <!-- Content -->
        <div class="section section-contents section-contact section-pad">
            <div class="container">
                <div class="content row">
                    <div class="contact-content row">
                        <div class="drop-message col-md-8 pad-r res-m-bttm">
                            <h2>Contact Information</h2>
                            <div class="row">
                                <div class="col-sm-4 res-s-bttm-sm">
                                    <p>
                                        <strong>Insurance GIC Inc.</strong><br>
                                      <i class="fa fa-home"></i>  <asp:Label ID="lbladdress" runat="server" Text="address"></asp:Label>
                                    </p>
                                </div>
                                <div class="col-sm-4 res-s-bttm-sm">
                                    <p>
                                        <strong>Contact Number</strong>
                                        <br>
                                       <i class="fa fa-phone"></i> <asp:Label ID="lblphnoe" runat="server" Text="phone no."></asp:Label><br>
                                        <i class="fa fa-whatsapp"></i> <asp:Label ID="lblwhatsappno" runat="server" Text="email"></asp:Label>
                                    </p>
                                </div>
                                <div class="col-sm-4">
                                    <p>
                                        <strong>Email Address</strong><br>
                                      <i class="fa fa-envelope-o" aria-hidden="true"></i> <asp:Label ID="lblemail" runat="server" Text="email"></asp:Label>
                                    </p>
                                </div>
                            </div>
                            <div class="gaps size-lg"></div>
                            <asp:Label ID="lblquery" runat="server" Text=""></asp:Label>
                            <div class="clear"></div>
                            <h4>Complete and submit the form below -</h4>

                            <div class="form-results"></div>
                            <div class="form-group row">
                                <div class="form-field col-md-6 form-m-bttm">
                                    <input id="txtname" runat="server" name="contact-name" type="text" placeholder="Name *" class="form-control required" required/>
                                </div>
                                <div class="form-field col-md-6">
                                    <input id="txtemail" runat="server" name="contact-email" type="email" placeholder="Email *" class="form-control required email" required />
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="form-field col-md-6 form-m-bttm">
                                    <input id="txtphone" runat="server" name="contact-phone" type="text" placeholder="Mobile No. *" class="form-control required" required />
                                </div>
                                <div class="form-field col-md-6">
                                    <input id="txtaddress" runat="server" name="contact-address" type="text" placeholder="Address *" class="form-control  required" required/>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="form-field col-md-12">
                                    <textarea id="txtareaquery" runat="server" name="contact-message" placeholder="Messages / Question *" cols="40" rows="7" class="txtarea form-control required" required></textarea>
                                </div>
                            </div>
                            <asp:Button ID="Button1" runat="server" class="btn solid-btn sb-h" Text="Submit" OnClick="Button1_Click" />
                        </div>
                        <div class="contact-maps col-md-4">
                            <!-- Map -->
                            <div class="map-holder map-contact-vertical">
                                <div id="gmap"></div>
                                <span class="gaps size-xs"></span>
                                <small><a href="#" class="btn-link">View on google Map &rsaquo;</a></small>
                            </div>
                            <!-- End map -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Content -->
    </div>

</asp:Content>

