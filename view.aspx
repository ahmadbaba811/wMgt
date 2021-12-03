<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="wasteMgt.view" EnableEventValidation="false" %>

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
                                <h3 class="portfolio-title"><a href="#">View Posts</a></h3>
                                <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
                                <div class="portfolio-excerpt">
                                    <div class="clear"></div>

                                    <div style="max-height: 600px; overflow-y: auto">
                                        <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="true" AutoGenerateColumns="false" >
                                            <Columns>
                                                <asp:TemplateField HeaderText="ID">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblID" runat="server" Text='<%#Eval("ID")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    </asp:TemplateField>
                                                                 <asp:BoundField DataField="postTitle" HeaderText="title" />
                                                    <asp:BoundField DataField="postCategory" HeaderText="Category" />
                                                    <asp:TemplateField HeaderText="Body">
                                                        <itemtemplate>
                                                            <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("postBody").ToString().Length > 15? (Eval("postBody") as string).Substring(0,15) + " ..." : Eval("postBody")  %>' ToolTip='<%# Eval("postBody") %>' NavigateUrl='<%# "view.aspx?c=" + Eval("id")%>'></asp:HyperLink>
                                                        </itemtemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="datePosted" HeaderText="dateAdded" DataFormatString="{0:d}" />
                                                <asp:BoundField DataField="addedBy" HeaderText="AddedBy" />
                                                <asp:BoundField DataField="status" />
                                                <asp:TemplateField HeaderText="Status">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("status").ToString() == "1"? "Active":"Inactive" %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                 <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="btnActivate" runat="server" OnClick="btnActivate_Click">Change Status</asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                 <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="btnUpdate" OnClick="btnUpdate_Click" runat="server" style="color:red" OnClientClick="if (!confirm('Update post?')) return false;"   CommandName="Update">Update</asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="btnDelete" OnClick="btnDelete_Click"  runat="server" style="color:red" OnClientClick="if (!confirm('Are you sure you want delete?')) return false;"   CommandName="Delete">Delete</asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>

                                    <div class="clear"></div>
                                    <br />
                                    <div>
                                        <textarea runat="server" id="fullmsg" cols="100" rows="20" class="input1"></textarea>
                                    </div>
                                    <div class="clear"></div>
                                    <br />
                                    <div>
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
