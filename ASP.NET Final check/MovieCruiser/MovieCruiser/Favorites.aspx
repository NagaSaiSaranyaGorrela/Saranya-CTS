<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Favorites.aspx.cs" Inherits="MovieCruiser.Favorites" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p style="font-size: 25px; font-weight: bold">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Favorites</p>
    <p>
        <asp:Panel ID="notification" Visible="false" runat="server" Font-Bold="true" Font-Size="20px" ForeColor="Green" HorizontalAlign="Center">Movie removed from favorites successfully</asp:Panel>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="10" CellSpacing="10" GridLines="None" HorizontalAlign="Center">
            <Columns>
            <asp:BoundField HeaderText="Id" DataField="Id" ItemStyle-Width="50px" >
            <ItemStyle Width="20px"></ItemStyle>            
             </asp:BoundField>
           
             <asp:BoundField HeaderText="Title" DataField="Title" ItemStyle-Width="50px" >
             <ItemStyle Width="50px"></ItemStyle>
             </asp:BoundField>
             <asp:BoundField HeaderText="BoxOffice" DataField="BoxOffice" ItemStyle-Width="50px" >
             <ItemStyle Width="50px"></ItemStyle>
             </asp:BoundField>
           
              <asp:BoundField HeaderText="Genre" DataField="Genre" ItemStyle-Width="50px" >
              <ItemStyle Width="50px"></ItemStyle>
              </asp:BoundField>
              
             <asp:HyperLinkField
            DataNavigateUrlFields="id"
            DataNavigateUrlFormatString="~\Favorites.aspx?id={0}&ShowPanel=True"
            Text="Delete"
            HeaderText=" " />

        </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" EntityTypeName="">
        </asp:LinqDataSource>
    </p>
    <center><b> No of Favorites: </b><asp:Label ID="NoOfFavorites" runat="server" Text="Label" ></asp:Label></center>
</asp:Content>