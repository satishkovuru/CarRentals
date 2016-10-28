<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <div position: "absolute;" allign="left" style="background-color: transparent; background-image: url('Images/priv-background.jpg');height: 690px;
    width: 1690px;
    margin-left: -365px;
    margin-top: -67px;
    background-size: 100%" class="text-center">
     

  

        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/images.jpeg" /><h1 Font-Bold="True" Font-Names="Times New Roman"
            Font-Size="32pt" Height="52px" Style="background-color: transparent; text-align: center;" Width="283px">CAR RENTAL</h1>
        
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="Red"
            NavigateUrl="~/Models.aspx">**SERVICES**</asp:HyperLink>
       
      
        <br />
        
        <asp:ImageButton ID="ImageButton2" runat="server" Height="30px" ImageUrl="~/images/administrator-icon.png" OnClick="ImageButton2_Click" Width="30px" />
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" Width="87px" Font-Bold="True" Font-Size="16pt" style="color: black">Administrator</asp:LinkButton><br />
                   
      
                    <br />
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/user-icon.jpg" Height="30px" OnClick="ImageButton1_Click" Width="30px" />
        <asp:LinkButton ID="LinkButton1" runat="server" Height="28px" OnClick="LinkButton1_Click" Font-Bold="True" Font-Size="16pt" style="color: black" Width="77px">User</asp:LinkButton><br />
                    <br />
           <br />
          </div>
   
</asp:Content>