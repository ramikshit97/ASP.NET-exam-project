
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="setPaper.aspx.cs" Inherits="setPaper" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
            width: 92%;
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
           
        .stlye3
            {
            font-family:Monotype Corsiva;
            font-size:large;
            font-weight:bold;
            text-align:center;
            width: 320px;
            }
        .style4
        {
            height: 8px;
            text-align:right;
            padding-right:30px;
            background-color: #CC6699;
        }
               
        .container {
            border-right: 10px solid white;
            border-left: 10px solid white;
            border-top: 10px solid white;
            border-bottom: 10px solid white;
        }
        
        .style8
        {
            font-weight: bold;
            text-align: center;
            height: 44px;
        }
        
        
        .style9
        {
            font-weight: bold;
            /*text-align: center;*/
            height: 35px;
            padding-left:20px;
            
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
            height: 8px;
        }
        .background{
        background-color: #4CAF50;
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
        .style20
        {
            height:5px;
            }
        .style16
        {
            height: 4px;
            background-color:#CC6699;
            }
        
        
        
        .style18
        {
            font-weight: bold;
            /*text-align: center;*/
            height: 35px;
            padding-left:20px;
            padding-right:20px;
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
            <td class=style2>
                
                <center class="style11">Online Exam</center></td>
        </tr>
        <tr>
            <td bgcolor="#0066ff" class="style14">
               
                <MARQUEE class="blink" behavior="alternate" direction="right" scrollamount="10">SET QUESTION PAPER</MARQUEE>
                </td>
        </tr>
        <td colspan="2">
            
                &nbsp;</td>
        <tr>
            <td class="style200">
                <asp:Panel ID="Panel1" runat="server" Height="20px" Visible="true" 
                    Width="68px">
                    <a href="adminDashboard.aspx" 
                        style="color: #000000; text-align: right; background-color: #66FF66">Dashboard</a>
                </asp:Panel></td>
        </tr>
        <tr>
            <td class="style8">
                
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="Subject" 
                    DataValueField="Subject" Height="31px" Width="102px">
                </asp:DropDownList>
               
                <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>&nbsp&nbsp&nbsp&nbsp
                <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" style="font-weight: 700; font-style: italic; color: #000066; background-color: #00CCFF"/>&nbsp&nbsp&nbsp&nbsp
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [Subject] FROM [question] ORDER BY [Subject]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style20">
                &nbsp;</td>
        </tr>
        <tr>
            <td  >
                
                <asp:TextBox ID="TextBox2" runat="server" Width="600px" Height="100px"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                
                </td>
        </tr>
        <td class="style16">
                &nbsp;</td>
        <tr>
            <td class="style9">
                
                <asp:TextBox ID="TextBox3" runat="server" Width="200px" Height="30px"></asp:TextBox>
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="ramik"/>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
            
                <asp:TextBox ID="TextBox4" runat="server" Width="200px" Height="30px"></asp:TextBox>
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="ramik" />
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                        
                    <asp:TextBox ID="TextBox5" runat="server" Width="200px" Height="30px"></asp:TextBox>
                        
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="ramik"/>
                        
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                        
                    <span class ="style3"></span>
            </td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">

                    <asp:TextBox ID="TextBox6" runat="server" Width="200px" Height="30px"></asp:TextBox>
                    <asp:RadioButton ID="RadioButton4" runat="server" GroupName="ramik" />
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18" align="center">
                
                <asp:Button ID="Button2" runat="server" Text="Add_Question" 
                    onclick="Button2_Click" style="font-weight: 700; font-style: italic; color: #000066; background-color: #00CCFF"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:Button ID="Button3" runat="server" Text="Preview" 
                    onclick="Button3_Click" style="font-weight: 700; font-style: italic; color: #000066; background-color: #00CCFF"/>
            </td>
            
        </tr>
        </table>
    
    </div>
    
    
    
    </form>
</body>
</html>

