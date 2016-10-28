<%@ Page Title="User Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

         <div position: "fixed;" align="left" style="background-color: transparent; background-image: url('Images/Posche.jpg');height: 690px;
    width: 1690px;
    margin-left: -365px;
    margin-top: -67px;
    background-size: 100%" class="text-center">
                    <br />
             <br />
                <br />
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" Width="238px" style="color: black; font-family: 'Times New Roman'" Font-Bold="True" Font-Size="14pt" Height="45px">Proceed For Booking</asp:LinkButton><br />
                    <br />
                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Size="14pt"
                        Style="color: black" OnClick="LinkButton3_Click">Changes/Updation</asp:LinkButton><br />
                    <br />
                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" Font-Size="14pt"
                        Style="color: black" Width="100px" OnClick="LinkButton4_Click">Cancellation</asp:LinkButton><br />
                    <br />
                    <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" Font-Size="14pt"
                        OnClick="LinkButton5_Click" Style="color: #000000" Width="144px">Customer Details</asp:LinkButton>
                    <br /><marquee direction="left" behaviour="scroll" loop=-1><pre><b>** Chicago ** Madison ** Detroit ** Indianapolis ** NewYork ** LasVegas ** LosAngeles ** NewJersy ** Naperville ** Deklab **</b></pre></marquee>
                <br />
           <br />
          </div>
      

    </asp:content>