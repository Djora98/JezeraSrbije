<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tabela.aspx.cs" Inherits="WebApplication1.Tabela" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Jezera Podaci</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style37 {
            width: 520px;
        }
        .auto-style42 {
            width: 102px;
        }
        .auto-style44 {
            width: 496px;
        }
        .auto-style45 {
            font-family: "Arial Black";
            font-size: large;
            color: #0000FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Height="38px" OnClick="Button1_Click" Text="Nazad" Width="110px" />
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style37" colspan="2">
                        <br />
                        <span class="auto-style45">Tabelarni prikaz jezera</span><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" EnableViewState="False" AllowSorting="True" Height="215px" Width="579px">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="Jezero" HeaderText="Jezero" SortExpression="Jezero" />
                                <asp:BoundField DataField="Povrsina" HeaderText="Povrsina" SortExpression="Povrsina" />
                                <asp:BoundField DataField="Dubina" HeaderText="Dubina" SortExpression="Dubina" />
                                <asp:BoundField DataField="Zapremina" HeaderText="Zapremina" SortExpression="Zapremina" />
                                <asp:BoundField DataField="Datum" HeaderText="Datum" SortExpression="Datum" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" Font-Bold="True" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JezeraConnectionString %>" DeleteCommand="DELETE FROM [Jezera] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Jezera] ([Jezero], [Povrsina], [Dubina], [Zapremina], [Datum]) VALUES (@Jezero, @Povrsina, @Dubina, @Zapremina, @Datum)" SelectCommand="SELECT * FROM [Jezera]" UpdateCommand="UPDATE [Jezera] SET [Jezero] = @Jezero, [Povrsina] = @Povrsina, [Dubina] = @Dubina, [Zapremina] = @Zapremina, [Datum] = @Datum WHERE [Id] = @Id">
                            <DeleteParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Jezero" Type="String" />
                                <asp:Parameter Name="Povrsina" Type="Decimal" />
                                <asp:Parameter Name="Dubina" Type="Decimal" />
                                <asp:Parameter Name="Zapremina" Type="Decimal" />
                                <asp:Parameter Name="Datum" Type="DateTime" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Jezero" Type="String" />
                                <asp:Parameter Name="Povrsina" Type="Decimal" />
                                <asp:Parameter Name="Dubina" Type="Decimal" />
                                <asp:Parameter Name="Zapremina" Type="Decimal" />
                                <asp:Parameter Name="Datum" Type="DateTime" />
                                <asp:Parameter Name="Id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        <br />
                        <asp:Panel ID="Panel1" runat="server" BackColor="Silver" Height="223px" Width="330px">
                            <span class="auto-style45">Selektovani prikaz podataka</span><asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="166px" Width="321px" Font-Bold="False">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                                <EditRowStyle BackColor="#999999" />
                                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                                <Fields>
                                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                    <asp:BoundField DataField="Jezero" HeaderText="Jezero" SortExpression="Jezero" />
                                    <asp:BoundField DataField="Povrsina" HeaderText="Povrsina" SortExpression="Povrsina" />
                                    <asp:BoundField DataField="Dubina" HeaderText="Dubina" SortExpression="Dubina" />
                                    <asp:BoundField DataField="Zapremina" HeaderText="Zapremina" SortExpression="Zapremina" />
                                    <asp:BoundField DataField="Datum" HeaderText="Datum" SortExpression="Datum" />
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                                </Fields>
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            </asp:DetailsView>
                        </asp:Panel>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:JezeraConnectionString2 %>" DeleteCommand="DELETE FROM [Jezera] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Jezera] ([Jezero], [Povrsina], [Dubina], [Zapremina], [Datum]) VALUES (@Jezero, @Povrsina, @Dubina, @Zapremina, @Datum)" SelectCommand="SELECT * FROM [Jezera] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Jezera] SET [Jezero] = @Jezero, [Povrsina] = @Povrsina, [Dubina] = @Dubina, [Zapremina] = @Zapremina, [Datum] = @Datum WHERE [Id] = @Id">
                            <DeleteParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Jezero" Type="String" />
                                <asp:Parameter Name="Povrsina" Type="Decimal" />
                                <asp:Parameter Name="Dubina" Type="Decimal" />
                                <asp:Parameter Name="Zapremina" Type="Decimal" />
                                <asp:Parameter Name="Datum" Type="DateTime" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Jezero" Type="String" />
                                <asp:Parameter Name="Povrsina" Type="Decimal" />
                                <asp:Parameter Name="Dubina" Type="Decimal" />
                                <asp:Parameter Name="Zapremina" Type="Decimal" />
                                <asp:Parameter Name="Datum" Type="DateTime" />
                                <asp:Parameter Name="Id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style37" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style45">Grafički prikaz zapremine jezera</span><br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource3">
                            <series>
                                <asp:Series Name="Series1" XValueMember="Jezero" YValueMembers="Zapremina">
                                </asp:Series>
                            </series>
                            <chartareas>
                                <asp:ChartArea Name="ChartArea1">
                                </asp:ChartArea>
                            </chartareas>
                        </asp:Chart>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:JezeraConnectionString3 %>" SelectCommand="SELECT * FROM [Jezera]"></asp:SqlDataSource>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style42">&nbsp;</td>
                    <td class="auto-style44">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
