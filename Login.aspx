<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
<div position: "fixed;" style="background-color: transparent; background-image: url('Images/car-rental-concept-businessman-touchscreen-icon-text-saying-world-map-as-background-46448063.jpg'); height: 950px;
    width: 1935px;
    margin-left: -365px;
    margin-top: -67px;
    background-size: 100%">
  
                      <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                  
    <center>
        <br /><br /><br /><br />
        <h1 style="color: #FFFFFF"> LOG IN</h1>
         <table>
             <tr>
                 <th style="color: white">UserName &nbsp;</th>
                 <th> <asp:TextBox runat="server" ID="UserName" CssClass="form-control" ForeColor="Black" />
                      <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" CssClass="text-danger" ErrorMessage="The user name field is required." ForeColor="Red" />
                 </th>
             </tr>
             <tr>
                 <th style="color: white">Password&nbsp;</th>
                 <th> <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                      <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." ForeColor="Red" />
                  </th>    
                  
             </tr>
              </table> 
                             <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-default" />
                                <asp:Label ID="LoginFailed" runat="server" Font-Bold="True" Text="Login failed" ForeColor="Black" ></asp:Label>

          
        </center>
               <section id="socialLoginForm" hidden="hidden">
                <uc:openauthproviders runat="server" id="OpenAuthLogin" />
            </section>
    </div>
       
</asp:Content>

