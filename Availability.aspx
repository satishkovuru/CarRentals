<%@ Page Title="Models" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Availability.aspx.cs" Inherits="Availability" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Car Availability information is shown below</h1>
    <asp:GridView ID="CarAvilability" runat="server" Width="600px" AutoGenerateColumns="False" >
<Columns>
    <asp:BoundField HeaderStyle-Width="150px" DataField="CarMake" HeaderText="Make" />
    <asp:BoundField HeaderStyle-Width="150px" DataField="CarModel" HeaderText="Model" />
    <asp:BoundField HeaderStyle-Width="150px" DataField="Color" HeaderText="Color" />
    <asp:BoundField HeaderStyle-Width="150px" DataField="Seating" HeaderText="Seating" />
    <asp:BoundField HeaderStyle-Width="150px" DataField="Economy" HeaderText="Economy" />
    <asp:BoundField HeaderStyle-Width="150px" DataField="Price" HeaderText="Price" />
    <asp:BoundField HeaderStyle-Width="150px" DataField="Availability" HeaderText="Availability" />
</Columns>

</asp:GridView>

</asp:Content>
