<%@ Page Title="" Language="C#" MasterPageFile="~/frontmaster.master" AutoEventWireup="true" CodeFile="testimonial.aspx.cs" Inherits="testimonial" %>

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
                            <h1 class="page-title">Tesimonials</h1>
                            <p class="lead">Our client talk about us. Vitae dicta suntadi picing elit ncidut labore dolor unde omnis iste.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-bg imagebg">
                <img class="img-responsive" src="image/banner-testimonial.png" alt="" />
            </div>
        </div>
        <!-- End Banner -->
        <!-- Content -->
        <div class="section section-contents section-pad">
            <div class="container">
                <div class="content row">
                    <div class="row row-quotes">
                        <div class="col-md-6">
                            <asp:Repeater ID="RpttestiLEFT" runat="server">
                                <ItemTemplate>
                                    <div class="quotes quotes-flat">
                                        <div class="quotes-text">
                                            <p><%# Eval("desc_") %></p>
                                        </div>
                                        <div class="profile">
                                            <div style="display: block; background: #FFF; display: inline-block; border: 5px solid #FFF;">
                                                <img src="<%# ResolveUrl(Eval("img").ToString()) %>" width="100" height="100" />
                                            </div>
                                            <h5><%# Eval("name") %></h5>
                                            <h6><%# Eval("degisnation") %></h6>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <!-- // -->                         
                        </div>

                        <div class="col-md-6">

                            <asp:Repeater ID="RpttestiRight" runat="server">
                                <ItemTemplate>
                                    <div class="quotes quotes-flat">
                                        <div class="quotes-text">
                                            <p><%# Eval("desc_") %></p>
                                        </div>
                                        <div class="profile">
                                            <div style="display: block; background: #FFF; display: inline-block; border: 5px solid #FFF;">
                                                <img src="<%# ResolveUrl(Eval("img").ToString()) %>" width="100" height="100" />
                                            </div>
                                            <h5><%# Eval("name") %></h5>
                                            <h6><%# Eval("degisnation") %></h6>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <!-- // -->                          
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- End Content -->
    </div>

</asp:Content>

