<%@ Page Title="Booking" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="Booking" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div position: "absolute;" style="background-color: transparent; background-image: url('Images/bookings.jpg');height: 952px;
    width: 1690px;
    background-size: 100%" >
        <br /><br />
        <div id="bookig;" style="background-color:#D7DADA; opacity: 0.7; width: 600px; padding-left: 20px; padding-right: 20px; margin-top: -42px; margin-left: 227px; border-radius:15px;">
        <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Booking Form</strong></h3>
       <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="11pt" Text="YOUR CUSTOMER NO IS: "
            Visible="False" TabIndex="28"></asp:Label>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="24pt" Text="Label"
            Visible="False" TabIndex="29"></asp:Label>&nbsp;<asp:Button ID="Button1" runat="server"
                Font-Bold="True" Font-Size="16pt" OnClick="Button1_Click" Style="color: black;
                background-color: orange" Text="Proceed to Payment Page...!!" Visible="False" TabIndex="34" /><br />
        &nbsp; &nbsp;
                  <h3>Customer Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:TextBox ID="CustomerName" runat="server" MaxLength="15"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CustomerName"
                        ErrorMessage="INFORMATION REQUIRED" Font-Bold="True" Font-Italic="True" Font-Size="8pt"
                        Style="color: red; background-color: transparent" Width="169px"></asp:RequiredFieldValidator>
           
        </h3>
           
                    <h3>Phone Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="PhoneNumber" runat="server" TabIndex="1"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PhoneNumber"
                        ErrorMessage="INFORMATION REQUIRED" Font-Bold="True" Font-Italic="True" Font-Size="8pt"
                        Style="color: red; background-color: transparent"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="PhoneNumber"
                        ErrorMessage="ENTER THE CORRECT NO." Font-Bold="True" Font-Italic="True" Font-Size="8pt"
                        ValidationExpression="((\(\d{3}\) ?)|(\d{3}))?\d{3}\d{4}" Width="215px"></asp:RegularExpressionValidator>
           
                    </h3>
           
                    <h3>Email-Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="EmailID" runat="server" TabIndex="2"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="EmailID"
                        ErrorMessage=" INFORMATION REQUIRED" Font-Bold="True" Font-Italic="True" Font-Size="8pt" Width="176px"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailID"
                        ErrorMessage=" " Font-Bold="True" Font-Italic="True" Font-Size="8pt" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        Width="129px">INVALID Email-Id</asp:RegularExpressionValidator>
                    </h3>
                    <h3>Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="Address" runat="server" TabIndex="3"></asp:TextBox>


        </h3>
                    &nbsp; &nbsp;&nbsp; &nbsp;
                
                    
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC"
            BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana"
            Font-Size="8pt" ForeColor="#003399" Height="54px" Visible="False" Width="20px" OnSelectionChanged="Calendar1_SelectionChanged" TabIndex="31">
            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <WeekendDayStyle BackColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True"
                Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
        </asp:Calendar>
                
                    <h3>PICK UP DATE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" Width="149px" TabIndex="4"></asp:TextBox><asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" ImageUrl="~/images/cal.gif" ImageAlign="Top" TabIndex="39" />
                  
                   

                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="8pt"
                        ForeColor="Red" Text="PLZ ENTER THE CORRECT DATE" Visible="False" Width="203px"></asp:Label></h3>
                    <br />

                    <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#3366CC"
                        BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana"
                        Font-Size="8pt" ForeColor="#003399" Height="50px" OnSelectionChanged="Calendar2_SelectionChanged"
                        Visible="False" Width="15px" TabIndex="32">

                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True"
                            Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    </asp:Calendar>
                  
                    <h3>Drop off Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:TextBox ID="TextBox3" runat="server" TabIndex="5">

                    </asp:TextBox><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/cal.gif" OnClick="ImageButton2_Click" TabIndex="40" />
                 
                    </h3>

                    <h3>Days of Travel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               
                    <asp:TextBox ID="Days" runat="server" TabIndex="6" ></asp:TextBox>
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="9pt" Text="(Days)"
                        Width="47px" TabIndex="43"></asp:Label>
                     </h3>
               
                     <h3>Pick in City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:DropDownList ID="DropDownList11" runat="server" DataSourceID="SqlDataSource1" DataTextField="CityName" DataValueField="CityName"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:z1781921ConnectionString %>" SelectCommand="SELECT [CityName] FROM [CityNames]"></asp:SqlDataSource>
               
                    </h3>

                    <h3>Drop off City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="CityName" DataValueField="CityName"></asp:DropDownList>
                    </h3>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:z1781921ConnectionString %>" SelectCommand="SELECT [CityName] FROM [CityNames]"></asp:SqlDataSource>
               
                    <h3>Car Model&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" AutoPostBack="True" TabIndex="11" DataSourceID="SqlDataSource4" DataTextField="CarModel" DataValueField="CarModel" >
                    </asp:DropDownList>
                    

               
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="9pt"
                        Style="color: red; background-color: transparent" Text="Car Not Available" Visible="False" Width="164px"></asp:Label></h3>
                    &nbsp;<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:z1781921ConnectionString %>" SelectCommand="SELECT DISTINCT [CarModel] FROM [Vehicle]"></asp:SqlDataSource>
                    

               
                    &nbsp;<h3>Rent&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Rent" runat="server" TabIndex="12" Width="115px"></asp:TextBox>

                        &nbsp;

                        $</h3>

    </br>
 
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" OnClick="LinkButton1_Click"
                        Style="color: white; font-family: 'Times New Roman'; background-color: springgreen; border-collapse: separate;" Font-Size="16pt" Font-Underline="False" Height="38px" Width="98px" BorderStyle="Outset" TabIndex="13">BOOK</asp:LinkButton>
         </div>       
  </div>
   </asp:Content>
