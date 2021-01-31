<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Jezera Srbije</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 226px;
        }
        .auto-style3 {
            font-family: "Arial Black";
            font-size: xx-large;
            color: #000099;
            width: 376px;
            text-align: center;
        }
        .auto-style4 {
            width: 119px;
            text-align: right;
        }
        .auto-style5 {
            font-family: "Arial Black";
            font-size: xx-large;
            color: #3366CC;
        }
        .auto-style6 {
            width: 127px;
        }
        .auto-style8 {
            font-family: "Arial Black";
            font-size: x-large;
            color: #003399;
        }
        .auto-style10 {
            font-family: "Arial Black";
            font-size: x-large;
            color: #0033CC;
        }
        .auto-style11 {
            width: 236px;
        }
        .auto-style12 {
            text-align: left;
        }
        .auto-style13 {
            width: 191px;
        }
        .auto-style14 {
            width: 165px;
        }
        .auto-style15 {
            font-family: "Arial Black";
            font-size: xx-large;
            color: #CC3300;
        }
        .auto-style31 {
            margin-left: 77px;
        }
        .auto-style32 {
            width: 389px;
        }
        .auto-style33 {
            font-family: "Arial Black";
            font-size: xx-large;
            color: #003399;
        }
        .auto-style34 {
            width: 182px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Image ID="imgGrb" runat="server" ImageUrl="~/Grb.jpg" Width="200px" Height="305px" />
                </td>
                <td class="auto-style3">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Tabela.aspx" ToolTip="Tabela">JEZERA SRBIJE</asp:HyperLink>
                </td>
                <td class="auto-style4">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:CheckBox ID="chbMapa" runat="server" Font-Names="Arial Black" ForeColor="#CC3300" OnCheckedChanged="chbMapa_CheckedChanged" Text="Mapa" AutoPostBack="True" Font-Size="X-Large" />
                </td>
                <td>&nbsp;&nbsp;
                    <asp:Image ID="imgMapa" runat="server" ImageUrl="~/mapa.jpg" Visible="False" Width="190px" Height="279px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style6"><span class="auto-style5">Reka</span><br />
                    <asp:ListBox ID="lstReka" runat="server" AutoPostBack="True" Font-Names="Arial Black" Font-Size="X-Large" ForeColor="#0066FF" OnSelectedIndexChanged="lstReka_SelectedIndexChanged" Height="124px" Width="187px">
                        <asp:ListItem Selected="True">Vlasinsko</asp:ListItem>
                        <asp:ListItem>Zlatarsko</asp:ListItem>
                        <asp:ListItem>Djerdapsko</asp:ListItem>
                    </asp:ListBox>
                </td>
                <td class="auto-style34">&nbsp;&nbsp;
                    <asp:Label ID="lblReka" runat="server" Font-Names="Arial Black" Font-Size="X-Large" ForeColor="#CC3300" Text="Vlasina"></asp:Label>
                </td>
                <td class="auto-style32"><span class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style33">Mape</span><asp:CheckBoxList ID="chlMapa" runat="server" AutoPostBack="True" Font-Names="Arial Black" Font-Size="X-Large" ForeColor="#0000CC" OnSelectedIndexChanged="chlMapa_SelectedIndexChanged" Width="300px" CssClass="auto-style31">
                    <asp:ListItem>Vlasinsko jezero</asp:ListItem>
                    <asp:ListItem>Zlatarsko jezero</asp:ListItem>
                    <asp:ListItem>Djerdapsko jezero</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td>&nbsp;<asp:Image ID="imgMapaVlasinsko" runat="server" Height="200px" ImageUrl="~/MapaVlasinsko.jpg" Width="300px" Visible="False" />
                    &nbsp;&nbsp;
                    <asp:Image ID="imgMapaZlatarsko" runat="server" Height="200px" ImageUrl="~/MapaZlatarsko.jpg" Width="300px" Visible="False" />
&nbsp;
                    <asp:Image ID="imgMapaDjerdapsko" runat="server" Height="200px" ImageUrl="~/MapaDjerdapsko.jpg" Width="300px" Visible="False" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style11">
                    <br />
                    <span class="auto-style10">Nadmorska visina</span><div class="auto-style12">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButtonList ID="rdlVisina" runat="server" AutoPostBack="True" Font-Names="Arial Black" Font-Size="X-Large" ForeColor="#0066CC" OnSelectedIndexChanged="rdlVisina_SelectedIndexChanged1">
                            <asp:ListItem Selected="True">Vlasinsko</asp:ListItem>
                            <asp:ListItem>Zlatarsko</asp:ListItem>
                            <asp:ListItem>Djerdapsko</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </td>
                <td class="auto-style13">
                    <br />
                    <br />
                    <asp:Label ID="lblVisina" runat="server" Font-Names="Arial Black" Font-Size="X-Large" ForeColor="#CC3300" Text="1.213m"></asp:Label>
                </td>
                <td class="auto-style14"><span class="auto-style15">Galerija</span><br />
                    <asp:ImageButton ID="imgGalerija" runat="server" ImageUrl="~/Jezera.jpg" OnClick="imgGalerija_Click" Width="150px" />
                </td>
                <td>
                    <asp:HyperLink ID="hplVlasinsko" runat="server" ImageHeight="200px" ImageUrl="~/Vlasinsko.jpg" ImageWidth="300px" NavigateUrl="~/Strana1.aspx" Visible="False"></asp:HyperLink>
&nbsp;
                    <asp:HyperLink ID="hplZlatarsko" runat="server" ImageHeight="200px" ImageUrl="~/Zlatarsko.jpg" ImageWidth="300px" NavigateUrl="~/Strana2.aspx" Visible="False"></asp:HyperLink>
&nbsp;
                    <asp:HyperLink ID="hplDjerdapsko" runat="server" ImageHeight="200px" ImageUrl="~/Djerdapsko.jpg" ImageWidth="300px" NavigateUrl="~/Strana3.aspx" Visible="False"></asp:HyperLink>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>