<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deleteUser.aspx.cs" Inherits="deleteUser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 77%;
            height: 524px;
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
            .style3
            {
            font-weight: bold;
            text-align: center;
            width: 320px;
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
        .style15
        {
            
            font-size:large;
            font-weight:bold;
            text-align:center;
            padding-top:10px;
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
            height: 43px;
        }
        .style9
        {
            font-weight: bold;
            text-align: center;
            height: 44px;
        }
                
        .style11
        {
            color: #FFFF66;
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
        
        
        
        .style16
        {
            height: 23px;
            width: 349px;
        }
                
        
        
        .style22
        {
            width: 349px;
        }
        
        
        
        .style23
        {
            font-weight: bold;
            text-align: center;
            height: 30px;
            background-color: #CC6699;
        }
        .style200
        {
            height: 8px;
            background-color: #CC6699;
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
               
                <MARQUEE class="blink" behavior="alternate" direction="right" scrollamount="10">STUDENT REMOVAL</MARQUEE>
                </td>
        </tr>
         <tr>
            <td colspan="2">
                </td>
        </tr>
        <tr>
            <td class="style200" colspan="2">
                <asp:Panel ID="Panel1" runat="server" Height="20px" Visible="true" 
                    Width="68px">
                    <a href="adminDashboard.aspx" 
                        style="color: #000000; text-align: right; background-color: #66FF66">Dashboard</a>
                </asp:Panel>
                </td>
        </tr>
        <tr>
            <td class="style8" colspan="2">
                
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="username" 
                    DataValueField="username" Height="31px" Width="113px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    
                    SelectCommand="SELECT [username],[rollnumber] FROM [userLogin] ORDER BY [username]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8" colspan="2">
                
                &nbsp;</td>
        </tr>
        <td class="style16">
                &nbsp;</td>
        <td class="style4">
                &nbsp;</td>
        <tr>
            <td class="style9" colspan="2">
                
                <asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" 
                    Height="31px" Width="127px" 
                    style="font-weight: 700; color: #000066; background-color: #00CCFF"/>
                </td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6" colspan="2">
            
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15" colspan="2"   align="center">
                        
                    <span class ="style3"></span>
            </td>
        </tr>
        <tr>
            <td class="style15" colspan="2"   align="center">


                     


                    &nbsp;</td>
        </tr>
        </table>
    
    </div>
    
    
    
    </form>
</body>
</html>
