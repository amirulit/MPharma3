<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InOutHistory.aspx.cs" Inherits="InOutHistory" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
    table.comicGreen {
  font-family: "Comic Sans MS", cursive, sans-serif;
  border: 2px solid #4F7849;
  background-color: #EEEEEE;
  width: 100%;
  text-align: center;
  border-collapse: collapse;
}
table.comicGreen td, table.comicGreen th {
  border: 1px solid #4F7849;
  padding: 3px 2px;
}
table.comicGreen tbody td {
  font-size: 19px;
  font-weight: bold;
  color: #4F7849;
}
table.comicGreen tr:nth-child(even) {
  background: #CEE0CC;
}
table.comicGreen tfoot {
  font-size: 21px;
  font-weight: bold;
  color: #FFFFFF;
  background: #4F7849;
  background: -moz-linear-gradient(top, #7b9a76 0%, #60855b 66%, #4F7849 100%);
  background: -webkit-linear-gradient(top, #7b9a76 0%, #60855b 66%, #4F7849 100%);
  background: linear-gradient(to bottom, #7b9a76 0%, #60855b 66%, #4F7849 100%);
  border-top: 1px solid #444444;
}
table.comicGreen tfoot td {
  font-size: 21px;
}
    
    </style>
</head>
<body>
    <center>
        <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
            <table>
                <tr>
                    <td colspan="2">
                    ID
                    </td>
                    <td colspan="2">

                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>

                    </td>
                    
                </tr>
                <tr>
                    <td>Name
                    </td>
                    <td>
                        <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                    </td>
                    <td>Category
                    </td>
                    <td>
                        <asp:Literal ID="Literal3" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td>Generic
                    </td>
                    <td>
                        <asp:Literal ID="Literal4" runat="server"></asp:Literal>
                    </td>
                    <td>Strength
                    </td>
                    <td>
                        <asp:Literal ID="Literal5" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td>Type
                    </td>
                    <td>
                        <asp:Literal ID="Literal6" runat="server"></asp:Literal>
                    </td>
                    <td>Manufacturer
                    </td>
                    <td>
                        <asp:Literal ID="Literal7" runat="server"></asp:Literal>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:GridView ID="GridView2"  runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" ForeColor="Black" GridLines="Vertical" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="SellDate" HeaderText="Sell Date" />
                    <asp:BoundField DataField="InvoiceNO" HeaderText="Invoice NO#" />
                    <asp:BoundField DataField="Sell" HeaderText="Sell" />
                    <asp:BoundField DataField="Purchase" HeaderText="Purchase" />
                    <asp:BoundField DataField="Closing_Count" HeaderText="Closing Quantity" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <asp:Label ID="lblTotSell" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblTotPurchase" runat="server" Text=""></asp:Label>
        </div>
        </form>
    </center>
</body>
</html>
