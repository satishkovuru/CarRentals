<%@ Page Title="Models" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Models.aspx.cs" Inherits="Models" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

       <div position: "fixed;" style="background-color: transparent; background-image: url('Images/carmodels.jpg'); height: 720px;
    width: 1690px;
    margin-left: -365px;
    margin-top: -67px;
    background-size: 100%" class="text-center" >
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/images.jpeg" />

        <marquee direction="left" behaviour="scroll" loop=-1><PRE><B>
Upto 25% off for voucher holders  *  Regional Offices to open soon  *  10% cash back on hotel booking  *  New Cars in the hut this quarter-says MD..  *Condtions Apply</B></PRE></marquee>
           </br>
            </br>
             </br>
             </br>
             </br>
             
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="24pt"
            OnClick="LinkButton1_Click" Style="color: black">Check For Availibility</asp:LinkButton><br />
           <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" style="color: black" Font-Bold="True" Font-Size="16pt">Honda</asp:LinkButton>
             </br>
            
            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" style="color: black" Font-Bold="True" Font-Size="16pt">Hyndai</asp:LinkButton>
            </br>
            <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" style="color: black" Font-Bold="True" Font-Size="16pt">Toyota</asp:LinkButton>
            </br>
           <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" style="color: black" Font-Bold="True" Font-Size="16pt">Nissan</asp:LinkButton>
             </br>
           </div>
    </asp:Content>