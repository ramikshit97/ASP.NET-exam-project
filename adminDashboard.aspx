<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminDashboard.aspx.cs" Inherits="admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>hello</title>
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
            
                .btn1:hover
                {
                    box-shadow:5px 10px 10px red;
                    background-color:#808080;
                    border:0.5px solid;
                    }
        .style1
        {
            width: 100%;
            height: 441px;
        }
         .style2
        {
            font-family:Monotype Corsiva;
            font-size:xx-large;
            font-weight:bold;
            text-align:center;
            color: #FFFF66;
            padding-right:10px;
            height: 65px;
        }
             .container {
            border-right: 10px solid white;
            border-left: 10px solid white;
            border-top: 10px solid white;
            border-bottom: 10px solid white;
            padding:20px;
            text-align:center;
    }
        .style4
        {
            height: 21px;
            text-align:right;
            padding-right:30px;
        }
        .style5
        {
            height: 26px;
        }
        .style6
        {
            width: 460px;
        }
        .style7
        {
            height: 21px;
            width: 460px;
        }
        </style>
</head>
<body bgcolor="#808080">
    <form id="form1" runat="server">
    <div class="container">
    <table class="style1">
        <tr>
            <td colspan="2" class="style2">
                <MARQUEE behavior="alternate" direction="right" scrollamount="10">Admin DashBoard</MARQUEE>
                
                </td>
        </tr>
        <tr>
            <td bgcolor="#0033CC" class="style4" colspan="2" ><a href="adminLogOut.aspx" 
                    style="color: #000000; text-align: right; background-color: #66FF66">LOG OUT</a>
                </td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                </td>
        </tr>
        <tr>
            <td  style="width: 460px">
                <asp:Button ID="Button1" runat="server" class="btn1" Text="ADD USER" 
                    BackColor="White" BorderColor="#009900" onclick="Button1_Click" 
                    style="font-weight: 700" Height="43px" Width="255px" />
            </td>
            <td  style="width: 460px">
                <asp:Button ID="Button2" runat="server" class="btn1" Text="DELETE USER" BackColor="White" 
                    BorderColor="#009900" onclick="Button2_Click" style="font-weight: 700" Height="43px" Width="255px"/>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 460px">
                <asp:Button ID="Button3" runat="server" class="btn1" Text="SET QUESTION PAPER" 
                    BackColor="White" BorderColor="#009900" onclick="Button3_Click" 
                    style="font-weight: 700" Height="43px" Width="255px"/>
            </td>
            <td  style="width: 460px">
                <asp:Button ID="Button4" runat="server" class="btn1" Text="PREVIEW QUESTION PAPER" 
                    BackColor="White" BorderColor="#009900" onclick="Button4_Click" 
                    style="font-weight: 700" Height="43px" Width="255px"/>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td  style="width: 460px">
                <asp:Button ID="Button5" runat="server" class="btn1" Text="DELETE QUESTION PAPER" 
                    BackColor="White" BorderColor="#009900" onclick="Button5_Click" 
                    style="font-weight: 700" Height="43px" Width="255px"/>
            </td>
            <td style="width: 460px">
                <asp:Button ID="Button6" runat="server" class="btn1" Text="View Result" BackColor="White" 
                    BorderColor="#009900" onclick="Button6_Click" style="font-weight: 700" Height="43px" Width="255px"/>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                </td>
            <td class="style7">
                </td>
        </tr>
    </table>
    
   
    </div>



    



    </form>
</body>
</html>
