<%@ Page Title="Models" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Hyundai.aspx.cs" Inherits="Hyundai" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
        <div>
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/images.jpeg" />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <table style="width: 391px; height: 370px; text-align: left;">
            <tr>
                <td align="left" valign="top" style="width: 153px">
                <img src=
         
           "images/accent.jpg" style="width: 303px; height: 203px" /> &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Hyundai Accent"></asp:Label><br />
                    <br />
                    <ul>
                        <li>5 Seater </li>
                        <li>Petrol Engine</li>
                        <li>Economical (30m/g)</li>
                    </ul>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Size="14pt"
                        Width="64px" OnTextChanged="TextBox1_TextChanged">$40</asp:TextBox>
                    &nbsp;&nbsp;</td>
                <td style="width: 135px" align="top" valign="top">
                <img src=
                    "images/sonata.jpg" style="width: 303px; height: 203px" />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Hyundai Sonata"></asp:Label><br />
                    <br />
                    <ul>
                        <li>5 Seater</li>
                        <li>Petrol/Diesel Engine</li>
                        <li>Economical (30m/g)</li>
                    </ul>
                    <p>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                        &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" Font-Size="14pt" Width="74px">$45</asp:TextBox>
                        </p>
                    <p>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp;</p>
                </td>
            </tr>
            <tr>
                <td style="width: 153px; height: 426px;" valign="top">
                <img src="images/elantra.jpg" style="width: 303px; height: 203px" />
               
                    &nbsp; &nbsp;
                
              
                    &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="14pt" Text="Hyundai Elantra" style="background-image: url(images/civic.jpg); background-repeat: no-repeat"></asp:Label><br />
                    <br />
                    <ul>
                        <li>4 Seater</li>
                        <li>Petrol/LPG Engine</li>
                        <li>Economical (25m/g)</li>
                    </ul>
                    <p>
                        &nbsp;<asp:TextBox ID="TextBox3" runat="server" Font-Bold="True" Font-Size="14pt" Width="63px">$30</asp:TextBox>&nbsp;</p>
                </td>
                <td style="width: 135px; height: 426px;" valign="top">
                <img src="images/veloster.jpg" style="width: 303px; height: 203px" />&nbsp;<br />
                    &nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="14pt" Text="Hyundai Velostor"></asp:Label><br />
                    <br />
                    <ul>
                        <li>5 Seater</li>
                        <li>Petrol Engine</li>
                        <li>Economical (28m/g)</li>
                    </ul>
                    <p>
                        &nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" Font-Bold="True" Font-Size="14pt" Width="61px">$50</asp:TextBox>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp;&nbsp;</p>
                </td>
            </tr>
        </table>
    
    </div>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
        <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" Height="37px" ImageUrl="~/images/Aiga_leftarrow_inv.gif" Width="55px" />&nbsp;
        <asp:ImageButton ID="ImageButton2" runat="server" OnClick="ImageButton2_Click" Height="37px" ImageUrl="~/images/Aiga_rightarrow_inv.gif" Width="55px" />
        <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" Font-Size="12pt"
            OnClick="LinkButton5_Click" Style="color: black">PROCEED TO BOOK</asp:LinkButton>
    </div>
    </asp:content>
  
