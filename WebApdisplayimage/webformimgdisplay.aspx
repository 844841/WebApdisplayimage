<%@ Page Language="C#" MasterpageFile="~/Site.Master" CodeBehind="webformimgdisplay.aspx.cs" Inherits="WebApdisplayimage.webformimgdisplay" %>

<asp:Content ID="id123" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <asp:FileUpload ID="FileUpload1" runat="server"/>
        <br />
        <br />
      
        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Buttonsup" />
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" >
            <ItemTemplate>
                <asp:Image ID="Image1"
                 ImageUrl='<%# Eval("Name","~/Resources/{0}") %>'
                    Width="350px" Height="350px" runat="server" />
                <br />
                <%# Eval("Name")%>
               
                </ItemTemplate>              

        </asp:DataList>    </div>
    </asp:Content>
