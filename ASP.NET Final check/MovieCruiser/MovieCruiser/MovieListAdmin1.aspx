<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MovieListAdmin1.aspx.cs" Inherits="MovieCruiser.MovieListAdmin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <b style="font-size: 30px; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Movies</b><br />
    <br />

    <asp:GridView ID="GridView1" runat="server"   GridLines="None" CellPadding="5" CellSpacing="10" HorizontalAlign="Center" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
           <asp:BoundField HeaderText="Active" DataField="Active" ItemStyle-Width="50px" >
<ItemStyle Width="50px"></ItemStyle>
             </asp:BoundField>
              <asp:BoundField HeaderText="DateOfLaunch" DataField="DateOfLaunch" ItemStyle-Width="50px" >
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
            DataNavigateUrlFormatString="~\EditMovie.aspx?id={0}"
            Text="Edit"
            HeaderText="Action" />

        </Columns>
        </asp:GridView>

    <asp:LinqDataSource ID="LinqDataSource1" runat="server" EntityTypeName="">
    </asp:LinqDataSource>

</asp:Content>
