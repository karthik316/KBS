<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="CreateVacancyReq.aspx.cs" Theme="custom" Inherits="WebApplication8.CreateVacancyReq" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
     .auto-style3,.auto-style4{width:236px;text-align:right}.auto-style2{text-align:center}.auto-style3{height:23px}.auto-style4{height:26px}.auto-style6{width:582px}.auto-style7{height:23px;width:780px;margin-left:40px}.auto-style8{width:780px}.auto-style10{width:780px;height:26px}.auto-style11{height:26px}.auto-style12{color:red}.auto-style13{height:23px;width:179px}.auto-style14{width:179px;height:26px}.auto-style15{width:236px}.auto-style16{height:15px;width:582px}.auto-style17{text-align:right;height:15px;width:236px}.auto-style18{height:15px;width:780px}.auto-style19{height:15px}.auto-style20{height:23px;width:582px}.auto-style21{width:582px;height:26px}body{background-image:url(media/sample.jpg)}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2"><strong>
                <asp:Label ID="lblHeading" runat="server" Font-Names="Courier New" Font-Size="XX-Large" ForeColor="White" Text="Create Vacancy Request"></asp:Label>
                </strong></td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <table style="width:100%;">
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style3"><strong>
                <asp:Label ID="lblEmpID" runat="server" Font-Names="Courier New" Text="Employee ID:"></asp:Label>
&nbsp;<span class="auto-style12">*&nbsp;&nbsp; </strong></td>
            <td class="auto-style13">
                <br />
                <asp:TextBox ID="txtEmployee" runat="server" Width="160px"></asp:TextBox>
                <br />
            </td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field is required." Font-Names="Courier New" ForeColor="Red" ControlToValidate="txtEmployee" ValidationGroup="group2"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpValid" runat="server" ErrorMessage="Should contain only Numeric Values" Font-Names="Courier New" ForeColor="Red" ControlToValidate="txtEmployee" ValidationExpression="^[0-9]+$" ValidationGroup="group2"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style17"></td>
            <td class="auto-style18" colspan="2"></td>
            <td class="auto-style19"></td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style4"><strong>
                <asp:Label ID="Label3" runat="server" Font-Names="Courier New" Text="No: of Vacancies:"></asp:Label>
&nbsp;<span class="auto-style12">*&nbsp;</span>&nbsp; </strong></td>
            <td class="auto-style14">
                <asp:TextBox ID="txtVacancies" runat="server" Width="161px"></asp:TextBox>
            &nbsp;</td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field is required." Font-Names="Courier New" ForeColor="Red" ControlToValidate="txtVacancies" ValidationGroup="group2"></asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Value should be in between  1 to 100." Font-Names="Courier New" ForeColor="Red" ControlToValidate="txtVacancies" MaximumValue="100" MinimumValue="1" Type="Integer" ValidationGroup="group2"></asp:RangeValidator>
            </td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style8" colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style8" colspan="2">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" ValidationGroup="group2"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
