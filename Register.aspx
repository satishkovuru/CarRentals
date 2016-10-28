<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
   <div position: "fixed;" style="background-color: transparent; background-image: url('Images/rentacar.jpg'); height: 850px;
    width: 2150px;
    margin-left: -365px;
    margin-top: -67px;
    background-size: 100%">

    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
       
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <br /><br /><br />
        <br />
        
        <div class="form-group" style="color: #FFFFFF" itemtype=" ">
            <h1 style="color: #000000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Register Here</h1>
            <asp:Label runat="server" AssociatedControlID="FirstName" CssClass="col-md-2 control-label" style="color: #000000">First Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="FirstName" CssClass="form-control" style="color: #000000" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="FirstName"
                    CssClass="text-danger" ErrorMessage="The First Name field is required." />
            </div>
            <asp:Label runat="server" AssociatedControlID="LastName" CssClass="col-md-2 control-label" style="color: #000000">Last Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="LastName" CssClass="form-control" ForeColor="Black" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="LastName"
                    CssClass="text-danger" ErrorMessage="The Last Name field is required." />
            </div>
               <asp:Label runat="server" AssociatedControlID="EmailID" CssClass="col-md-2 control-label" style="color: #000000">EmailID</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="EmailID" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="EmailID" CssClass="text-danger" ErrorMessage="The EmailID field is required." />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="EmailID" Display="Dynamic" ErrorMessage="Email ID is in incorrect format" Font-Bold="True" Font-Italic="True" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
            </div>
               <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label" style="color: #000000">UserName</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="UserName" CssClass="form-control" style="color: #000000" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" CssClass="text-danger" ErrorMessage="The user name field is required." />
            </div>
        </div>
        <div class="form-group" style="color: #FFFFFF">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label" style="color: #000000" >Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" style="color: #000000"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="form-group" style="color: #FFFFFF">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label" style="color: #000000" >Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
             <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label" style="color: #000000" >Address</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Address" CssClass="form-control" ForeColor="Black" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Address"
                    CssClass="text-danger" ErrorMessage="The Address field is required." />
            </div>
              <asp:Label runat="server" AssociatedControlID="PhoneNumber" CssClass="col-md-2 control-label" style="color: #000000">PhoneNumber</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="PhoneNumber" CssClass="form-control"  ForeColor="Black"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="PhoneNumber"
                    CssClass="text-danger" ErrorMessage="The Phone Number field is required." />
            </div>
              <asp:Label runat="server" AssociatedControlID="ZipCode" CssClass="col-md-2 control-label" style="color: #000000">ZipCode</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ZipCode" CssClass="form-control" ForeColor="Black"  />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ZipCode"
                    CssClass="text-danger" ErrorMessage="The Zip field is required." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />

                <asp:TextBox ID="Status" runat="server"></asp:TextBox>
            </div>
        </div>
    </div>
         </div>
</asp:Content>
