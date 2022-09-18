<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modification.aspx.cs" Inherits="modification" %>

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
            height: 23px;
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
            height: 60px;
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
        <tr>
            <td class="style4">
                &nbsp;</td>
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
                
                <asp:Button ID="Button2" runat="server" Text="Update" 
                    onclick="Button2_Click" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:Button ID="Button3" runat="server" Text="Delete" onclick="Button3_Click" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

                <asp:Button ID="Button4" runat="server" Text="Preview_Page" 
                    onclick="Button4_Click" />

            </td>
            
        </tr>
        </table>
    
    </div>
    
    
    
    </form>
</body>
</html>

