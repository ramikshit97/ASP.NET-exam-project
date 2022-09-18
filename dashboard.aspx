<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Asp.net project</title>
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
        .style1 {
            width: 100%;
        }
        .style2
        {
            font-family:Monotype Corsiva;
            font-size:xx-large;
            font-weight:bold;
            text-align:center;
            color: #FFFF66;
            padding: 0;
            }
            .stlye3
            {
            font-family:Monotype Corsiva;
            font-size:large;
            font-weight:bold;
            text-align:center;
            }
            .style13
        {
            height: 170px;
            font-size:large;
        }
        .style15
        {
            height: 56px;
            font-size:large;
            font-weight:bold;
            text-align:center;
        }
        .button5 {border-radius: 50%;}
        .style17
        {
            height: 26px;
        }
    </style>
</head>
<body bgcolor="#808080">
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
        <br />
    
    </div>
    
        <table class="style1" align="center">
            <tr>
                <td class="style2">
                <MARQUEE behavior="alternate" direction="right" scrollamount="10">Online  Exam  Portal</MARQUEE>
                </td>
            </tr>
            <tr>
                <td class="style17" >
                    </td>
            </tr>
            <tr>
                <td bgcolor="#aa4a44">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    <center style="font-size: x-large">You need to Login before proceeding</center><br>
                    
                    </br><center>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                            style="font-size: x-large">
                            <asp:ListItem Text="ForAdmin"></asp:ListItem>
                            <asp:ListItem Text="ForUser"></asp:ListItem>
                        </asp:RadioButtonList>

                        &nbsp;&nbsp;&nbsp;&nbsp;
                    </center>
                </td>
            </tr>
            <tr>
                <td class="btn1"><center>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Selection" 
                        
                        style="font-size: large font-weight: 700; color: #000066; background-color: #00CCFF; font-weight: 700;" 
                        Height="33px" Width="76px"/><p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Please choose a option from above" 
                            ControlToValidate="RadioButtonList1" ForeColor="Yellow" Font-Size="Large" 
                            Font-Bold="True"></asp:RequiredFieldValidator></p>
                    </center></td>
            </tr>
            <tr>
                <td bgcolor="#3333ff">

                    
                </td>
            </tr>
            <tr>
                <td bgcolor="#666666" style="text-align: center" class="style15">
                    <span class ="style3">Ramik</span></td>
            </tr>
        </table>
    
    </form>
</body>
</html>
