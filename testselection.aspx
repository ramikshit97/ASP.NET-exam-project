<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testselection.aspx.cs" Inherits="testselection" %>

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
                
        
        
        .style18
        {
            font-weight: bold;
            /*text-align: center;*/
            height: 31px;
            padding-left:20px;
            padding-right:20px;
        }
        
        
        
        .style21
        {
            height: 8px;
            background-color: #CC6699;
        }
        
        
        
        .style25
        {
            height: 200px;
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
               
                <MARQUEE class="blink" behavior="alternate" direction="right" scrollamount="10">CHOOSE SUBJECT</MARQUEE>
                </td>
        </tr>
        <tr>
            <td class="style4">
                </td>
        </tr>
        
        <td class="style21">
                </td>
        <tr>
            <td class="style25" align="center">
               
                

                <asp:DropDownList ID="DropDownList3" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="Subject" 
                    DataValueField="Subject" AutoPostBack="True" Height="26px" Width="105px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [Subject] FROM [question]">
                </asp:SqlDataSource></br></br>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" 
                    style="font-weight: 700; font-style: italic; color: #000066; background-color: #00CCFF" 
                    Height="31px" Width="81px"/>
                <br />
               
                

                </td>
        </tr>
       
        <tr>
            <td class="style18" align="center">
                
                
                </td>
            
        </tr>
        </table>
    
    </div>
    </form>
</body>
</html>