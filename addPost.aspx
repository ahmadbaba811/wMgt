<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="addPost.aspx.cs" Inherits="wasteMgt.addPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="with-sidebar-content twelve columns">
        <section id="content-section-1">
            <div class="section-container container">
                            <div class="clear"></div>
                            <div class="twelve columns">
                                <div class="greennature-item greennature-portfolio-item greennature-classic-portfolio">
                                    <div class="greennature-ux greennature-classic-portfolio-ux">
                                        <div class="portfolio-classic-content">
                                            <h3 class="portfolio-title"><a href="#">Add New Post</a></h3>
                                            <div class="portfolio-excerpt">
                                                Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Vivamus sagittis lacus vel augue laoreet rutrum faucibus. Integer legentibus erat a ante historiarum dapibus....
                                                                        
                                                <div role="form" class="wpcf7" id="wpcf7-f4-o1" lang="en-US" dir="ltr">
                                                    <div class="quform" action="#" method="post" enctype="multipart/form-data" onclick="">

                                                        <div class="quform-elements">
                                                            <div class="twelve columns">
                                                                <div class="four columns" style="margin-right: 3px">
                                                                    <div class="quform-element">
                                                                        <p>
                                                                            <span class="wpcf7-form-control-wrap your-message">
                                                                                <input id="title" type="text" name="name" size="40" class="input1" aria-required="true" aria-invalid="false" placeholder="Post Title" runat="server">
                                                                            </span>
                                                                        </p>
                                                                    </div>
                                                                </div>

                                                                <div class="four columns" style="margin-right: 3px">
                                                                    <div class="quform-element">
                                                                        <p>
                                                                            <span class="wpcf7-form-control-wrap your-message">
                                                                                <input id="category" type="text" name="category" size="40" class="input1" aria-required="true" aria-invalid="false" placeholder="Post Category" runat="server">
                                                                               
                                                                            </span>
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                                <div class="three columns">
                                                                    <div class="quform-element">
                                                                        <p>
                                                                            <label for="FileUpload1">Upload Picture</label>
                                                                            <span class="wpcf7-form-control-wrap your-message">
                                                                               <asp:FileUpload ID="FileUpload1" Height="40px" CssClass="input1 wpcf7-form-control-wrap" runat="server" placeholder="Upload" />
                                                                            </span>
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </div>


                                                            <div class="quform-element">
                                                                <p>
                                                                    <br>
                                                                    <span class="wpcf7-form-control-wrap your-message">
                                                                        <textarea id="message" name="message" cols="40" rows="10" class="input1" aria-invalid="false" placeholder="Post Body" runat="server"></textarea>
                                                                    </span>
                                                                </p>
                                                            </div>
                                                            <div>
                                                                <!-- Begin Submit button -->
                                                                <div class="quform-submit">
                                                                    <div class="quform-submit-inner">
                                                                        <asp:Button ID="btnAdd" CssClass="submit-button" runat="server" Text="ADD POST" OnClick="btnAdd_Click" />
                                                                    </div>
                                                                    <div class="quform-loading-wrap"><span class="quform-loading"></span>
                                                                        <asp:Label runat="server" ID="lblMsg" Text=""></asp:Label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>
            <div class="clear"></div>
        </section>
    </div>
</asp:Content>
