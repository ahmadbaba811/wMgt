<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="wasteMgt.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="form-group">
                <div class="top" style="margin-top:100px">
                    <label for="fname">Post Title</label>
                    <input class="form-control" style="width:250px" type="text" id="fname" runat="server" required="required" />
                    <br />
                    <label for="pwrod">Post Subtitle</label>
                    <input class="form-control" style="width:250px" type="text" id="pwrod" runat="server" required="required" />
                    <br />
                    <button type="submit" id="btsub" class="btn btn-success">Submit</button>
                    <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Submit" OnClick="Button1_Click"/>
                </div>
            </div>
            <br />
            <br />
            <asp:GridView ID="GridView1" AutoGenerateColumns="false" CssClass="table table-bordered" runat="server" ShowHeaderWhenEmpty="true">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" />
                    <asp:BoundField DataField="title" HeaderText="Title" />
                    <asp:BoundField DataField="subtitle" HeaderText="Subtitle" />
                    <asp:BoundField DataField="body" HeaderText="post Body"/>
                    <asp:BoundField DataField="datePosted" DataFormatString="{0:d}" />
                </Columns>
            </asp:GridView>
            </div>
    </form>
</body>
</html>
