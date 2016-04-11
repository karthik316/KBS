<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AddConsultant.aspx.cs" Theme="custom" Inherits="WebApplication8.AddConsultant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style2{background-color:#FFF;width:473px}.auto-style3,.auto-style6{width:226px;background-color:#FFF}.auto-style3{text-align:right;font-family:'Comic Sans MS'}.auto-style4{background-color:#FFF;text-align:center;font-size:x-large}.auto-style6{text-align:right;height:24px}.auto-style7{background-color:#FFF;height:24px;width:473px}.auto-style8{height:24px}.auto-style9{color:red}.auto-style10{width:103px}.auto-style11{height:24px;width:103px}.auto-style14{background-color:#FFF;width:165px}.auto-style15{background-color:#FFF;width:255px}.auto-style16{width:248px}.auto-style17{height:24px;width:248px}.auto-style18{color:#FFF;background-color:#39F}#error{color:red;font-family:'Courier New'}body{background-image:url(media/mainBackgroung.png)}    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width:100%; border-spacing:0">
        <tr>
            <td colspan="5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style4" colspan="3">
                <strong>
                <asp:Label ID="Label2" runat="server" Font-Names="Courier New" Text="&nbsp;&nbsp;Add Placement Consultant&nbsp;&nbsp;" CssClass="auto-style18"></asp:Label>
                </strong>
            </td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style4" colspan="3">
                &nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style3">Placement Consultant Name:<span class="auto-style9">*</span> </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtconsultName" runat="server" Width="142px"></asp:TextBox>
            </td>
            <td class="auto-style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This Field is required." style="color: #FF0000" ControlToValidate="txtconsultName" ValidationGroup="group3"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style15">
                &nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style3">Password:<span class="auto-style9">*</span> </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="141px"></asp:TextBox>
            </td>
            <td class="auto-style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This Field is required" style="color: #FF0000" ControlToValidate="txtpassword" ValidationGroup="group3"></asp:RequiredFieldValidator>
                <p id="error"></p>
            </td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style15">
                &nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style3">Confirm Password:<span class="auto-style9">*</span> </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtConpass" runat="server" TextMode="Password" Width="138px"></asp:TextBox>
                &nbsp;</td>
            <td class="auto-style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This Field is required" style="color: #FF0000" ControlToValidate="txtConpass" ValidationGroup="group3"></asp:RequiredFieldValidator>
                &nbsp;<br />
                <asp:CompareValidator ID="passvalid" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtConpass" ErrorMessage="Passwords Don't Match" ForeColor="Red" ValidationGroup="group3"></asp:CompareValidator>
            </td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style15">
                &nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style3">Location:<span class="auto-style9">*</span>&nbsp; </td>
            <td class="auto-style14">
                <asp:DropDownList ID="localist" runat="server" Width="122px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Hyderabad</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Mumbai</asp:ListItem>
                    <asp:ListItem>Kolkata</asp:ListItem>
                    <asp:ListItem>Chennai</asp:ListItem>
                    <asp:ListItem>Visakhapatnam</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="localist" ErrorMessage="Please select a Location" ForeColor="Red" InitialValue="Select" ValidationGroup="group3"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style6"></td>
            <td class="auto-style7" colspan="2"></td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7" colspan="2">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style2" colspan="2">&nbsp;&nbsp;<asp:Button ID="Submit" runat="server" OnClientClick="return passvalidate();" OnClick="Submit_Click" Text="Submit" ValidationGroup="group3" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Reset" runat="server" OnClick="Button1_Click" style="text-align: right" Text="Reset" />
            </td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2" colspan="2">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2" colspan="2">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <script src="custom.js" type="text/javascript"></script>
    <br />
    <br />
</asp:Content>
