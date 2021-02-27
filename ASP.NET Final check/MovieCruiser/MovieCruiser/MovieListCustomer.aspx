<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="MovieListCustomer.aspx.cs" Inherits="MovieCruiser.MovieListCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p><b style="font-size: 25px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Movies</b></p>
    <p>
        <asp:Panel ID="notification" Visible="false" runat="server" Font-Bold="true" Font-Size="20px" ForeColor="Green" HorizontalAlign="Center">Movie added to Favorites successfully<br /></asp:Panel>
        <asp:GridView ID="GridView1" runat="server"  CellPadding="10" CellSpacing="10" GridLines="None" HorizontalAlign="Center" AutoGenerateColumns="False">
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
              <asp:BoundField HeaderText="HasTeaser" DataField="HasTeaser" ItemStyle-Width="50px" >
            
              <ItemStyle Width="50px"></ItemStyle>
              </asp:BoundField>
            
             <asp:HyperLinkField
            DataNavigateUrlFields="id"
            DataNavigateUrlFormatString="~\MovieListCustomer.aspx?id={0}&ShowPanel=True"
            Text="Add to Favorite"
            HeaderText="Action" />

        </Columns>


        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" EntityTypeName="">
        </asp:LinqDataSource>
    </p>


</asp:Content>
