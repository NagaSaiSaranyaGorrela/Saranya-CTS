<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CustomerHeader.ascx.cs" Inherits="MovieCruiser.WebUserControl1" %>
<header style="background-color: darkblue; color: #FFFFFF; padding-top: 10px; padding-bottom: 10px; font-size: 30px;">Movie Cruiser&nbsp;
    <asp:Image ID="Image1" runat="server" Height="28px" ImageUrl="~/Images/mviimage.jpeg" Width="25px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:HyperLink ID="HyperLink3" Font-Size="22px" runat="server" ForeColor="White" NavigateUrl="~/AdminLogin.aspx">Login</asp:HyperLink>
    &nbsp; &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" Font-Size="22px" ForeColor="White" NavigateUrl="~/MovieListCustomer.aspx">Movies</asp:HyperLink>
    &nbsp;
    <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="22px" ForeColor="White" NavigateUrl="~/Favorites.aspx">Favorites</asp:HyperLink>
</header>
