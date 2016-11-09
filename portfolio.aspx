<%@ Page Title="" Language="C#" MasterPageFile="~/akshara.master" AutoEventWireup="true" CodeFile="portfolio.aspx.cs" Inherits="preview_dotnet_templates_akshara_multi_master_portfolio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="banner">
        <div class="container">
            <h1>
                100% Free Fully Responsive HTML5 Bootstrap Template.
                <br />
                Grab it now for free!
            </h1>
            <h3>
                This is a Fully Responsive and Modern App Landing Page Template.</h3>
        </div>
    </div>
    <!-- ======================================== Portfolio ======================================== -->
    <section id="portfolio" class="bg-light-gray"> 
        <div class="container">
          <!-- Heading -->
            <div class="section-header">
                <div class="row section-title text-center">
                <div class="col-sm-8 col-sm-offset-2">
                    <h1 class="wow zoomIn animated" data-wow-duration="1500ms" data-wow-delay="100ms">
                        <span>Pop-Up</span> Portfolio</h1>
                 </div>
                </div>
                <p class="wow zoomIn animated text-center" data-wow-duration="1500ms" data-wow-delay="100ms">We work in some of the world’s toughest situations where we offer bold, practical  and innovative solutions where there is real need.<br /> Our focus is on the next generation, current and future leaders and enhancing collaboration between faith communities.</p>
            </div>
              <!-- ./Heading -->           
            <div class="row">  
                <!-- Box-1 -->  
                <div class="col-md-4 col-sm-6 portfolio-item wow zoomIn animated" data-wow-duration="1500ms" data-wow-delay="100ms">
                    <a href="#portfolioModal1" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-chain fa-2x"></i>
                            </div>
                        </div>
                        <img src="img/portfolio/item01.jpg" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Round Icons</h4>
                        <p class="text-muted">Graphic Design</p>
                    </div>
                </div>
                <!-- Box-2 -->
                <div class="col-md-4 col-sm-6 portfolio-item wow zoomIn animated" data-wow-duration="1500ms" data-wow-delay="100ms">
                    <a href="#portfolioModal2" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-chain fa-2x"></i>
                            </div>
                        </div>
                        <img src="img/portfolio/item02.jpg" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Startup Framework</h4>
                        <p class="text-muted">Website Design</p>
                    </div>
                </div>
                <!-- Box-3 -->
                <div class="col-md-4 col-sm-6 portfolio-item wow zoomIn animated" data-wow-duration="1500ms" data-wow-delay="100ms">
                    <a href="#portfolioModal3" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-chain fa-2x"></i>
                            </div>
                        </div>
                        <img src="img/portfolio/item03.jpg" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Treehouse</h4>
                        <p class="text-muted">Website Design</p>
                    </div>
                </div>
                <!-- Box-4 -->
                <div class="col-md-4 col-sm-6 portfolio-item wow zoomIn animated" data-wow-duration="1500ms" data-wow-delay="100ms">
                    <a href="#portfolioModal4" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-chain fa-2x"></i>
                            </div>
                        </div>
                        <img src="img/portfolio/item04.jpg" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Golden</h4>
                        <p class="text-muted">Website Design</p>
                    </div>
                </div>
                <!-- Box-5 -->
                <div class="col-md-4 col-sm-6 portfolio-item wow zoomIn animated" data-wow-duration="1500ms" data-wow-delay="100ms">
                    <a href="#portfolioModal5" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-chain fa-2x"></i>
                            </div>
                        </div>
                        <img src="img/portfolio/item05.jpg" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Escape</h4>
                        <p class="text-muted">Website Design</p>
                    </div>
                </div>
                <!-- Box-6 -->
                <div class="col-md-4 col-sm-6 portfolio-item wow zoomIn animated" data-wow-duration="1500ms" data-wow-delay="100ms">
                    <a href="#portfolioModal6" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-chain fa-2x"></i>
                            </div>
                        </div>
                        <img src="img/portfolio/item06.jpg" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Dreams</h4>
                        <p class="text-muted">Website Design</p>
                    </div>
                </div>            
            </div>
    </div><!--/.container-->
 </section>
    <!-- ======================================== Portfolio Modals ======================================== -->
    <!-- Use the modals below to showcase details about your portfolio projects! -->
    <!-- Portfolio Modal 1 -->
    <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog"
        aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="modal-body">
                            <!-- Project Details Go Here -->
                            <h2>
                                Project Name</h2>
                            <p class="item-intro text-muted">
                                Project Subheading Comes Here.</p>
                            <div class="col-lg-6">
                                <img class="img-responsive img-centered" src="img/portfolio/item01.jpg" alt="">
                            </div>
                            <div class="col-lg-6">
                                <p>
                                    Use this area to describe your project. The most remarkable feature of time is its
                                    preciousness. Its value is unfathomable and its power is inestimable.The most remarkable
                                    feature of time is its preciousness. Its value is unfathomable and its power is
                                    inestimable.</p>
                                <p>
                                    <strong>Want these icons in this portfolio item sample?</strong>You can download
                                    60 of them for free, courtesy of <a href="http://aspxtemplates.com/html-templates.aspx">
                                        RoundIcons.com</a>, or you can purchase the 1500 icon set <a href="https://getdpd.com/cart/hoplink/18076?referrer=bvbo4kax5k8ogc">
                                            here</a>.</p>
                                <ul class="list-inline">
                                    <li>Date: July 2014</li>
                                    <li>Client: Round Icons</li>
                                    <li>Category: Graphic Design</li>
                                </ul>
                                <button type="button" class="btn btn-primary" data-dismiss="modal">
                                    Close Project</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Portfolio Modal 2 -->
    <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog"
        aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="modal-body">
                            <h2>
                                Project Heading</h2>
                            <p class="item-intro text-muted">
                                Project Subheading Comes Here.</p>
                            <div class="col-lg-6">
                                <img class="img-responsive img-centered" src="img/portfolio/item02.jpg" alt="">
                            </div>
                            <div class="col-lg-6">
                                <p>
                                    <a href="http://aspxtemplates.com/html-templates.aspx">Startup Framework</a> is
                                    a website builder for professionals. Startup Framework contains components and complex
                                    blocks (PSD+HTML Bootstrap themes and templates) which can easily be integrated
                                    into almost any design. All of these components are made in the same style, and
                                    can easily be integrated into projects, allowing you to create hundreds of solutions
                                    for your future projects.</p>
                                <p>
                                    You can preview Startup Framework <a href="http://aspxtemplates.com/html-templates.aspx">
                                        here</a>.</p>
                                <button type="button" class="btn btn-primary" data-dismiss="modal">
                                    Close Project</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Portfolio Modal 3 -->
    <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog"
        aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="modal-body">
                            <!-- Project Details Go Here -->
                            <h2>
                                Project Name</h2>
                            <p class="item-intro text-muted">
                                Project Subheading Comes Here.</p>
                            <div class="col-lg-6">
                                <img class="img-responsive img-centered" src="img/portfolio/item03.jpg" alt="">
                            </div>
                            <div class="col-lg-6">
                                <p>
                                    Treehouse is a free PSD web template built by <a href="#">Mathavan Jaya</a>. This
                                    is bright and spacious design perfect for people or startup companies looking to
                                    showcase their apps or other projects.</p>
                                <p>
                                    You can download the PSD template in this portfolio sample item at <a href="http://aspxtemplates.com/html-templates.aspx">
                                        FreebiesXpress.com</a>.</p>
                                <button type="button" class="btn btn-primary" data-dismiss="modal">
                                    Close Project</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Portfolio Modal 4 -->
    <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog"
        aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="modal-body">
                            <!-- Project Details Go Here -->
                            <h2>
                                Project Name</h2>
                            <p class="item-intro text-muted">
                                Project Subheading Comes Here.</p>
                            <div class="col-lg-6">
                                <img class="img-responsive img-centered" src="img/portfolio/item04.jpg" alt="">
                            </div>
                            <div class="col-lg-6">
                                <p>
                                    Start Bootstrap's Agency theme is based on Golden, a free PSD website template built
                                    by <a href="http://aspxtemplates.com/html-templates.aspx">Mathavan Jaya</a>. Golden
                                    is a modern and clean one page web template that was made exclusively for Best PSD
                                    Freebies. This template has a great portfolio, timeline, and meet your team sections
                                    that can be easily modified to fit your needs.</p>
                                <p>
                                    You can download the PSD template in this portfolio sample item at <a href="http://aspxtemplates.com/html-templates.aspx">
                                        FreebiesXpress.com</a>.</p>
                                <button type="button" class="btn btn-primary" data-dismiss="modal">
                                    Close Project</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Portfolio Modal 5 -->
    <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog"
        aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="modal-body">
                            <!-- Project Details Go Here -->
                            <h2>
                                Project Name</h2>
                            <p class="item-intro text-muted">
                                Project Subheading Comes Here.</p>
                            <div class="col-lg-6">
                                <img class="img-responsive img-centered" src="img/portfolio/item05.jpg" alt="">
                            </div>
                            <div class="col-lg-6">
                                <p>
                                    Escape is a free PSD web template built by <a href="http://aspxtemplates.com/html-templates.aspx">
                                        Mathavan Jaya</a>. Escape is a one page web template that was designed with
                                    agencies in mind. This template is ideal for those looking for a simple one page
                                    solution to describe your business and offer your services.</p>
                                <p>
                                    You can download the PSD template in this portfolio sample item at <a href="http://aspxtemplates.com/html-templates.aspx">
                                        FreebiesXpress.com</a>.</p>
                                <button type="button" class="btn btn-primary" data-dismiss="modal">
                                    Close Project</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Portfolio Modal 6 -->
    <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog"
        aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="modal-body">
                            <!-- Project Details Go Here -->
                            <h2>
                                Project Name</h2>
                            <p class="item-intro text-muted">
                                Project Subheading Comes Here.</p>
                            <div class="col-lg-6">
                                <img class="img-responsive img-centered" src="img/portfolio/item06.jpg" alt="">
                            </div>
                            <div class="col-lg-6">
                                <p>
                                    Dreams is a free PSD web template built by <a href="http://aspxtemplates.com/html-templates.aspx">
                                        Mathavan Jaya</a>. Dreams is a modern one page web template designed for almost
                                    any purpose. It’s a beautiful template that’s designed with the Bootstrap framework
                                    in mind.</p>
                                <p>
                                    You can download the PSD template in this portfolio sample item at <a href="http://aspxtemplates.com/html-templates.aspx">
                                        FreebiesXpress.com</a>.</p>
                                <button type="button" class="btn btn-primary" data-dismiss="modal">
                                    Close Project</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

