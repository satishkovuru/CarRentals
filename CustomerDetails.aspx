<%@ Page Title="CustomerDetails" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="CustomerDetails.aspx.cs" Inherits="CustomerDetails" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Car Availability information is shown below</h1>
    <asp:GridView ID="CustomerDetailsList" runat="server" Width="600px" AutoGenerateColumns="False" >
<Columns>
    <asp:BoundField HeaderStyle-Width="150px" DataField="Name" HeaderText="CustomerName" />
    <asp:BoundField HeaderStyle-Width="150px" DataField="Phone" HeaderText="Phone" />
    <asp:BoundField HeaderStyle-Width="150px" DataField="email" HeaderText="Email" />
    <asp:BoundField HeaderStyle-Width="150px" DataField="PickUpDate" HeaderText="Picking date" />
    <asp:BoundField HeaderStyle-Width="150px" DataField="DropDate" HeaderText="Dropping Date" />
    <asp:BoundField HeaderStyle-Width="150px" DataField="CarModel" HeaderText="Model" />
    <asp:BoundField HeaderStyle-Width="150px" DataField="NoOfDays" HeaderText="DaysofRent" />
    <asp:BoundField HeaderStyle-Width="150px" DataField="Rent" HeaderText="Total Rent" />

</Columns>
</asp:GridView>

</asp:Content>
