<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="vacancydetails.aspx.cs" Theme="custom" Inherits="WebApplication8.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2,.auto-style3,.auto-style8{font-family:font-family:"Courier New",Courier,monospace;background-color:#FFF;text-align:right}.auto-style10,.auto-style2,.auto-style3,.auto-style4,.auto-style5,.auto-style8,.auto-style9{background-color:#FFF}.auto-style11,.auto-style2,.auto-style3,.auto-style6,.auto-style8{text-align:right}.auto-style2{height:23px;width:264px}.auto-style3{width:264px}.auto-style4{height:23px}.auto-style5{width:15px}.auto-style7{height:26px}.auto-style8{width:264px;height:26px}.auto-style9{height:26px;width:15px}.auto-style10{height:23px;width:15px}.auto-style11{width:15px}.auto-style14,.auto-style15{width:318px;background-color:#FFF}.auto-style12{color:red}.auto-style15{height:26px}.auto-style16{text-align:center}.auto-style17{height:23px;width:220px}.auto-style18{height:26px;width:220px}.auto-style19{width:220px}.auto-style20{height:23px;background-color:#FFF;width:318px}.auto-style21{margin-left:40px}.auto-style22{color:#FFF;background-color:#09F}body{background-image:url(media/sample.jpg)}
    </style>

    <script type="text/javascript" src="custom.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <p class="auto-style21">
    
        &nbsp;</p>
    <table style="width:100%; border-spacing:0">
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style4" colspan="3" style="text-align: center">
                <asp:Label ID="Label2" runat="server" style="text-align: center; font-weight: 700; font-size: x-large" Text="&nbsp;&nbsp;Add Vacancy Details&nbsp;&nbsp;" Font-Names="Courier New" CssClass="auto-style22"></asp:Label>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style17"></td>
            <td class="auto-style4" colspan="3" style="text-align: center">
                </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style17"></td>
            <td class="auto-style2">Vacancy Request Id:&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style10">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Select ID</asp:ListItem>
                    <asp:ListItem>DotNetHMS</asp:ListItem>
                    <asp:ListItem>JavaMVC</asp:ListItem>
                    <asp:ListItem>DotNetMVC</asp:ListItem>
                    <asp:ListItem>JavaJSP</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style8">No. of Positions:<span class="auto-style12">*</span>&nbsp;&nbsp; </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtPositions" runat="server" BackColor="Thistle"></asp:TextBox>
            </td>
            <td class="auto-style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPositions" ErrorMessage="This Field is required" ForeColor="Red" ValidationGroup="group1" Font-Names="Courier New"></asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPositions" ErrorMessage="No of position should be between 1 to 100" ForeColor="Red" MaximumValue="100" MinimumValue="1" ValidationGroup="group1" Font-Names="Courier New" Type="Integer"></asp:RangeValidator>
            </td>
            <td class="auto-style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17"></td>
            <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp; Skills:<span class="auto-style12">*&nbsp;</span>&nbsp; </td>
            <td class="auto-style10">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Select Item</asp:ListItem>
                    <asp:ListItem>Java</asp:ListItem>
                    <asp:ListItem>Dot Net</asp:ListItem>
                    <asp:ListItem>PHP</asp:ListItem>
                    <asp:ListItem>Ruby</asp:ListItem>
                    <asp:ListItem>Python</asp:ListItem>
                    <asp:ListItem>Node JS</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style20">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Please select appropriate Skill set." ForeColor="Red" ValidationGroup="group1" InitialValue="Select Item" Font-Names="Courier New"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style1">
                </td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style10">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                    <asp:ListItem>Fresher</asp:ListItem>
                    <asp:ListItem>Experienced</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style20">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="An option needs to be Selected." ForeColor="Red" ValidationGroup="group1" ControlToValidate="RadioButtonList1" Font-Names="Courier New"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style3">Experience:<span class="auto-style12">*</span>&nbsp;&nbsp; </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtExp" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style14">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtExp" ErrorMessage="This Field is required" ForeColor="Red" ValidationGroup="group1" Font-Names="Courier New"></asp:RequiredFieldValidator>
&nbsp;<br />
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtExp" ErrorMessage="Experience should be between 0 to 20 years." MaximumValue="20" MinimumValue="0" ForeColor="Red" ValidationGroup="group1" Font-Names="Courier New" Type="Double"></asp:RangeValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style3">Location:<span class="auto-style12">*</span>&nbsp;&nbsp; </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style14">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtLocation" ErrorMessage="This Field is required" ForeColor="Red" ValidationGroup="group1" Font-Names="Courier New"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtLocation" ErrorMessage="Please enter a valid Location. Length: 3 to 16." ForeColor="Red" ValidationExpression="^[a-zA-Z]{3,16}$" ValidationGroup="group1" Font-Names="Courier New"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style8">Domain:&nbsp;&nbsp; </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtDomain" runat="server" ReadOnly="True"> India</asp:TextBox>
            </td>
            <td class="auto-style15"></td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style8">Required By Date(mm/dd/yyyy):<span class="auto-style12">*</span>&nbsp; </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style15">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="35px" ImageUrl="~/media/3.jpg" OnClick="ImageButton1_Click" Width="35px" />
                <p id="lblCalendarValidate" style="color:red;font-family:'Courier New'"></p>
            </td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownListMonth" runat="server" Visible="False" AutoPostBack="True" OnSelectedIndexChanged="DropDownListMonth_SelectedIndexChanged">
                    <asp:ListItem>Jan</asp:ListItem>
                    <asp:ListItem>Feb</asp:ListItem>
                    <asp:ListItem>March</asp:ListItem>
                    <asp:ListItem>April</asp:ListItem>
                    <asp:ListItem>May</asp:ListItem>
                    <asp:ListItem>June</asp:ListItem>
                    <asp:ListItem>July</asp:ListItem>
                    <asp:ListItem>Aug</asp:ListItem>
                    <asp:ListItem>Sept</asp:ListItem>
                    <asp:ListItem>Oct</asp:ListItem>
                    <asp:ListItem>Nov</asp:ListItem>
                    <asp:ListItem>Dec</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style5">
                <asp:DropDownList ID="DropDownListYear" runat="server" Visible="False" AutoPostBack="True" OnSelectedIndexChanged="DropDownListYear_SelectedIndexChanged">
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style14">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td style="background-color: #FFFFFF" class="auto-style6">&nbsp;</td>
            <td style="background-color: #FFFFFF" class="auto-style11">
                <asp:Calendar ID="Calendar1" runat="server" Visible="False" OnSelectionChanged="Calendar1_SelectionChanged" ></asp:Calendar>
            </td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td colspan="2" style="background-color: #FFFFFF" class="auto-style6">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td colspan="2" style="background-color: #FFFFFF" class="auto-style6">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClientClick="return CalendarValidate()" OnClick="btnSubmit_Click" ValidationGroup="group1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td colspan="3" style="background-color: #FFFFFF" class="auto-style16">

                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
    
</asp:Content>
