<%@ Page Language="C#" AutoEventWireup="true" CodeFile="report1.aspx.cs" Inherits="report1" %>

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
        
        
        
        .style25
        {
            height: 200px;
        }
        
        
        
        .style200
        {
            height: 8px;
            background-color: #CC6699;
            text-align: center;
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
               
                <MARQUEE class="blink" behavior="alternate" direction="right" scrollamount="10">STUDENT REPORT</MARQUEE>
                </td>
        </tr>
        <tr>
            <td class="style4">
                </td>
        </tr>
        
        <td class="style200">
                <asp:Panel ID="Panel1" runat="server" Height="20px" Visible="true" 
                    Width="68px">
                    <a href="adminDashboard.aspx" 
                        style="color: #000000; text-align: center; background-color: #66FF66">Dashboard</a>
                </asp:Panel></td>
        <tr>
            <td class="style25" align="center">
               
                

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="username" HeaderText="Student Name" 
                            SortExpression="username">
                        <HeaderStyle Font-Bold="True" HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="date" HeaderText="Date and Time" 
                            SortExpression="date">
                        <HeaderStyle Font-Bold="True" HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="test" HeaderText="Subject" SortExpression="test">
                        <HeaderStyle Font-Bold="True" HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="marks" HeaderText="Marks Obtained" 
                            SortExpression="marks">
                        <HeaderStyle Font-Bold="True" HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="totalmarks" HeaderText="Totalmarks" 
                            SortExpression="totalmarks">
                        <HeaderStyle Font-Bold="True" HorizontalAlign="Center" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [results] ORDER BY [username]">
                </asp:SqlDataSource>
               
                

                </td>
        </tr>
       <tr><td align="center">
       
           <asp:Button ID="Button1" runat="server" Text="Download_PDF" BackColor="#FFFF66" 
               Font-Bold="True" ForeColor="#CC0000" onclick="Button1_Click" /></td></tr>
        <tr>
            <td class="style18" align="center">
                
                
                </td>
            
        </tr>
        </table>
    
    </div>
    </form>
</body>
</html>