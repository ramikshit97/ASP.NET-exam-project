﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginAdmin.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        {
            function DisableBackButton() {
                window.history.forward()
            }

            DisableBackButton();

            window.onload = DisableBackButton;
            window.onpageshow = function (evt) { if (evt.persisted) DisableBackButton() }
            window.onunload = function () { void (0) }
        }
</script>
    <style type="text/css">
        .style1
        {
            width: 77%;
        }
        .style2
        {
            font-family:Monotype Corsiva;
            font-size:xx-large;
            font-weight:bold;
            font-align:center;
            padding: 0;
            height: 75px;
        }
            .stlye3
            {
            font-family:Monotype Corsiva;
            font-size:large;
            font-weight:bold;
            text-align:center;
            }
        .style4
        {
            height: 23px;
        }
        .style5
        {
            
            font-size:large;
            font-weight:bold;
            text-align:center;
            
            height: 56px;
        }
       
        .container {
            border-right: 10px solid white;
            border-left: 10px solid white;
            border-top: 10px solid white;
            border-bottom: 10px solid white;
        }
        
        .style6
        {
            height: 43px;
        }
        
        .style8
        {
            font-weight: bold;
            text-align: center;
            width: 320px;
            height: 43px;
        }
        .style9
        {
            font-weight: bold;
            text-align: center;
            width: 320px;
            height: 44px;
        }
        .style10
        {
            height: 44px;
        }
        
        .style11
        {
            color: #FFFF66;
        }
        .style12
        {
            font-size: x-large;
            height: 29px;
        }
        .style13
        {
            font-size: x-large;
        }
        
        .blink
        {
            animation:blinker 3s linear infinite;
            color: #CC0000;
            font-family:Verdana;
            font-weight: 700;
            text-decoration: underline;
            height: 41px;
            font-size: x-large;
        }
            @keyframes blinker
            {
                50%
                {
                opacity:0;
                }
            }
        
        .style14
        {
            height: 60px;
        }
        .background{
        background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
        }
        
        
        
    </style>
    
    
</head>
<body bgcolor="#555555">&nbsp;<form id="form1" runat="server">
    <div class="container">
    <table class="style1" align=center>
        <tr>
            <td colspan="2" class=style2>
                
                <center class="style11">Online Exam</center></td>
        </tr>
        <tr>
            <td bgcolor="#0066ff" colspan="2" class="style14">
               
                <MARQUEE class="blink" behavior="alternate" direction="right" scrollamount="10">LOGIN FORM ADMIN</MARQUEE>
                </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                
                <center class="style12">User Name</center></td>
            <td class="style6">
                <asp:TextBox ID="TextBox1" runat="server" style="font-size: x-large"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="!Kindely input User Name" Font-Bold="True" 
                    ForeColor="#FF9966" ControlToValidate="TextBox1" Display="Dynamic" 
                    ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                
                <center class="style13">Password</center></td>
            <td class="style10">
                <asp:TextBox ID="TextBox2" runat="server" style="font-size: x-large"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="!Kindely input Password" Font-Bold="True" 
                    ForeColor="#FF9966" ControlToValidate="TextBox2" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                
                &nbsp;</td>
            <td class="button2">
                <asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" 
                    Height="31px" Width="127px" style="font-weight: 700; font-style: italic; color: #000066; background-color: #00CCFF"/>
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                    <asp:Label ID="Label1" runat="server" ForeColor="#FF9966"></asp:Label>
            </td>
        </tr>
    </table>
    
    </div>
    
    
    
    </form>
</body>
</html>
