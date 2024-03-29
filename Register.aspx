﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div align="center">
<table>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;
                </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Firstname"></asp:Label>
            </td>
            <td>
                :
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtFirstname" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstname"
                    ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>&nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Lastname"></asp:Label>
            </td>
            <td>
                :
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtLastname" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastname"
                    ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>&nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
            </td>
            <td>
                :
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtUsername" runat="server" AutoPostBack="True" 
                    ontextchanged="txtUsername_TextChanged" Width="170px" ></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUsername"
                    ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Font-Size="13px"></asp:Label>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                :
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="170px" 
                    MaxLength="9"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revPwd" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="Enter atleast 5 characters" 
                    Font-Size="12px" ValidationExpression="[0-9A-Za-z]{5,9}"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Retype Password"></asp:Label>
            </td>
            <td>
                :
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtRePassword" runat="server" TextMode="Password" 
                    Width="170px"></asp:TextBox>
            </td>
            <td>
                &nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword"
                    ControlToValidate="txtRePassword" ErrorMessage="Password must match" 
                    ForeColor="Red" Font-Size="12px"></asp:CompareValidator>&nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
            </td>
            <td>
                :
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtEmailId" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtEmailId" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmailId"
                    ErrorMessage="Enter valid Email-Id" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ForeColor="Red" Font-Size="12px"></asp:RegularExpressionValidator>&nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Security Question"></asp:Label>
            </td>
            <td>
                :
            </td>
            <td colspan="2">
                <asp:DropDownList ID="drpSecurityQus" runat="server" Width="175px" 
                    Height="24px">
                    <asp:ListItem>What is your favorite food?</asp:ListItem>
                    <asp:ListItem>Where did your father born?</asp:ListItem>
                    <asp:ListItem>What is your Pet name?</asp:ListItem>
                    <asp:ListItem>What is your dream car?</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Answer"></asp:Label>
            </td>
            <td>
                :
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtSecurityAns" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtSecurityAns"
                    ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>&nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Phone Number"></asp:Label>
            </td>
            <td>
                :
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtPhoneNumber" runat="server" MaxLength="10" Width="170px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPhoneNumber"
                    ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revPhoneno" runat="server" 
                    ErrorMessage="Enter 10 digit mobile no." 
                    ControlToValidate="txtPhoneNumber" Font-Size="12px" 
                    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td colspan="2">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td >
            <asp:Button ID="imgRegister" runat="server" Text="Submit" class="btn btn-primary btn-lg px-5" OnClick="imgRegister_Click"/>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblSuccess" runat="server"></asp:Label></div>
<br />
</asp:Content>