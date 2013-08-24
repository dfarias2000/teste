<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ServicoDeAgendamento.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 162px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    Data</td>
                <td>
                    <asp:TextBox ID="tbData" runat="server" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfData" runat="server" 
                        ErrorMessage="Requerido" ControlToValidate="tbData" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Hora Início</td>
                <td>
                    <asp:TextBox ID="tbHoraInicial" runat="server" MaxLength="6"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Requerido" ControlToValidate="tbHoraInicial" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Hora Final</td>
                <td>
                    <asp:TextBox ID="tbHoraFinal" runat="server" MaxLength="6"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Requerido" ControlToValidate="tbHoraFinal" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btConfirmar" runat="server" onclick="btConfirmar_Click" 
                        Text="Confirmar" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
    
    </div>
    <div align="center">
        <asp:GridView ID="griAgendamentoServico" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="ID" 
            ForeColor="#333333" GridLines="None" DataSourceID="SqlDataSource1">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="Cod." InsertVisible="False" 
                    ReadOnly="True" SortExpression="ID" />
                     <asp:BoundField DataField="Data" HeaderText="Data" 
                    SortExpression="data" />
                <asp:BoundField DataField="HORA_INICIAL" HeaderText="Início" 
                    SortExpression="HORA_INICIAL" DataFormatString="{0:HH:mm}" />
                <asp:BoundField DataField="HORA_FINAL" HeaderText="Término "
                    SortExpression="HORA_FINAL" DataFormatString="{0:HH:mm}" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />

        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:testeConnectionString2 %>" 
            SelectCommand="SELECT [DATA],[ID], [HORA_INICIAL], [HORA_FINAL] FROM [AGENDAMENTO_SERVICO]">
        </asp:SqlDataSource>
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <asp:Label ID="lbStatus" runat="server" Text=""></asp:Label>
        <br />
    </div>
    </form>
</body>
</html>
