<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerInvoiceView.aspx.cs"
    Inherits="CustomerInvoiceView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        /*input[type=text],input[type=button],input[type=submit],select*/
        .form-control
        {
            -webkit-border-radius: 10px;
            -moz-border-radius: 10px;
            border-radius: 10px; /*
            border: 1px solid #2d9fd9;
            color: #a0d18c;
            width: 250px;
            height: 30px;
            padding-left: 10px;
        */
        }
        
        input[type=text]:focus
        {
            outline: none;
            border: 1px solid #a0d18c;
            color: #2d9fd9;
        }
        
        table td
        {
            text-align: left;
        }
        
        .inv th, td
        {
        }
        
        body
        {
             font-size:12px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td colspan="2">
                    <asp:Literal ID="lblHeader" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <div class="inv">
                        <asp:GridView ID="GridView1" runat="server" CssClass="inv" AutoGenerateColumns="false"
                            OnRowCreated="GridView1_RowCreated" OnRowDataBound="GridView1_RowDataBound" ShowFooter="True">
                            <Columns>
                                <asp:TemplateField HeaderText="SL">
                                    <ItemTemplate>
                                        <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="MedicineName" HeaderText="Name" />
                                <asp:BoundField DataField="Quantity" HeaderText="Qty"  ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right"/>
                                <asp:BoundField DataField="SellPrice" HeaderText="U. Price"   ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right"/>
                                <asp:BoundField DataField="TotalSellPrice" HeaderText="Tot Price"   ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right"/>
                               <%--
                                <asp:BoundField DataField="Discount" HeaderText="Dis." />
                                <asp:BoundField DataField="NetReceivable" HeaderText="Tot Amt." />--%>
                                
                            </Columns>
                            <HeaderStyle Wrap="True" />
                            <RowStyle Wrap="False" />
                        </asp:GridView>
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                <br />
                    <table>
                     <tr>
                            <td>
                                Total Amount
                            </td>
                            <td>
                                <asp:Label ID="lblTotalAmount" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                Total Discount
                            </td>
                            <td>
                                <asp:Label ID="lblTotalDiscount" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                Adjust Amount
                            </td>
                            <td>
                                <asp:Label ID="lblAdjustAmount" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                Net Amount
                            </td>
                            <td>
                                <asp:Label ID="lblNetAmount" runat="server" Text=""></asp:Label>
                            </td>
                       </tr>
                        <tr>
                            <td>
                                Paid By Cash
                            </td>
                            <td>
                                <asp:Label ID="lblPaidByCash" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                Paid By MFS
                            </td>
                            <td>
                                <asp:Label ID="lblPaidByMFS" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                Paid By Card
                            </td>
                            <td>
                                <asp:Label ID="lblPaidByCard" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Paid Amount
                            </td>
                            <td>
                                <asp:Label ID="lblPaidAmount" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Change Amount
                            </td>
                            <td>
                                <asp:Label ID="lblChangeAmount" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <hr />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    Exchange Valid in 72 Hours with Invoice
                    <br />
                    Thank You for shopping with us
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
