<%@ Page Title="Updation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Updation.aspx.cs" Inherits="Updation" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div position: "absolute;" allign="left" style="background-color: transparent; background-image: url('Images/carsss.jpeg');height: 910px;
    width: 1690px;
    margin-left: -365px;
    margin-top: -67px;
    background-size: 100%" class="text-center">
     

    <div>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="24pt"
            Text="UPDATION"></asp:Label><br />
        <br />
    </div>
        <div>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="14pt" Text="TO ADD A NEW CITY"></asp:Label><br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Enter A New City"></asp:Label>
            &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click"
                Text="INSERT" />
            </br>
            <asp:Label ID="Update" runat="server" Font-Bold="True" Text="City Name Inserted Successfully"></asp:Label>

            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="14pt" Text="TO ADD A NEW VEHICLE"
                Width="409px"></asp:Label><br />
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="12pt" Text="Type"></asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
            <br />
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="12pt" Text="Make"></asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
            <br />
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="12pt" Text="Model"></asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="12pt" Text="Color"></asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="12pt" Text="Seating"></asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="12pt" Text="Economy"></asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; <br />
            <br />
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="12pt" Text="Rate"></asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>&nbsp;&nbsp; &nbsp; <br />
            <br />
            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="12pt" Text="Available"></asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            &nbsp;&nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp;
            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="12pt" Text="1 for Available"></asp:Label><br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;&nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:Button
                ID="Button2" runat="server" Font-Bold="True" OnClick="Button2_Click" Text="INSERT" /><br />
                        <asp:Label ID="VehicleDetails" runat="server" Font-Bold="True" Text="Vehicle Details Inserted Successfully"></asp:Label>

            <br />
            <br />
    </div>
    </div>
    </asp:Content>
