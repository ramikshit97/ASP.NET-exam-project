<%@ Page Language="C#" AutoEventWireup="true" CodeFile="panel.aspx.cs" Inherits="panel" %>

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
            border-right: 10px solid #00bcc0;
            border-left: 10px solid #00bcc0;
            border-top: 10px solid #00bcc0;
            border-bottom: 10px solid #00bcc0;
        }
        
                
        .style11
        {
            color: #ff6600;
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
        
        
        
        .style26
        {
            width: 100%;
        }
        
        
        
        </style>
</head>
<body bgcolor="#f8f0c6">&nbsp;<form id="form1" runat="server">
    <div class="container">
    <table class="style1" align=center>
        <tr>
            <td class="style2">
                
                <center class="style11">Online Exam</center></td>
        </tr>
        <tr>
            <td bgcolor="#0066ff" class="style14">
               
                <MARQUEE class="blink" behavior="alternate" direction="right" scrollamount="10">EXAM</MARQUEE>
                </td>
        </tr>
        <tr>
            <td class="style4">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Label ID="Label2" runat="server" Text="TimeLeft:" BackColor="#00CC99"></asp:Label>
                <asp:Label ID="Label3" runat="server" BackColor="#00CC99"></asp:Label>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1"  />
            </Triggers>
        </asp:UpdatePanel>
        <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
    </div>
                </td>
        </tr>
        
        <td class="style21">
                </td>
        <tr>
            <td class="style25" align="center">

                
        
                <table class="style26">
                    <tr>
                        <td class="style4">
                            <%con.Open();
                          rqry = "select * from question where Subject='" + testtype + "' order by qid";
                          scmd = new System.Data.SqlClient.SqlCommand(rqry, con);
                          rdr = scmd.ExecuteReader();
                          c = 1;
                          while (rdr.Read()) {
                              if (c != count) {
                                  c = c + 1;
                              }
                              else if (c == count) { 
                              %><%int q=Convert.ToInt16(rdr.GetValue(0));
                                  qid=q; %>
                              <%  =count %><% =rdr.GetValue(1) %>
                          
                          
                          
                          </td>
                    </tr>
                    
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="ramik" />
                            <%=rdr.GetValue(2) %>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="ramik"/>
                            <%=rdr.GetValue(3) %>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="ramik"/>
                            <%=rdr.GetValue(4) %>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:RadioButton ID="RadioButton4" runat="server" GroupName="ramik"/>
                            <%=rdr.GetValue(5) %>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Button ID="Button1" runat="server" Text="Previous" 
                                onclick="Button1_Click" style="font-weight: 700; font-style: italic; color: #000066; background-color: #00CCFF"/>&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button3" runat="server" Text="Next" onclick="Button3_Click" style="font-weight: 700; font-style: italic; color: #000066; background-color: #00CCFF"/>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Button ID="Button2" runat="server" Text="Submit" onclick="Button2_Click" style="font-weight: 700; font-style: italic; color: #000066; background-color: #00CCFF"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
                <%if (count != n)
                      c = c + 1;
                              }
                          }con.Close();%>
                       

                
        
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