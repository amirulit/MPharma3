<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StockInInvoiceView.aspx.cs"
    Inherits="StockInInvoiceView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        .wrap
        {
           word-wrap: break-word;
        }
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td colspan="3">
                    <asp:Literal ID="lblHeader" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <div class="inv">
                        <asp:GridView ID="GridView1" runat="server" CssClass="inv" AutoGenerateColumns="false"
                            OnRowCreated="GridView1_RowCreated" OnRowDataBound="GridView1_RowDataBound" ShowFooter="True">
                            <Columns>
                                <asp:TemplateField HeaderText="SL">
                                    <ItemTemplate>
                                        <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="MedicineName" HeaderText="Drug Name" />
                                
                                <asp:BoundField DataField="GenericName" HeaderText="Gen Name"  ItemStyle-CssClass="wrap"/>
                                <asp:BoundField DataField="Strength" HeaderText="Strength" />
                                <asp:BoundField DataField="ManufacDate" HeaderText="ManufacDate" />
                                <asp:BoundField DataField="ExpiryDate" HeaderText="ExpiryDate" />
                                <asp:BoundField DataField="TotalCount" HeaderText="Quantity" />
                                <asp:BoundField DataField="TotalBuyPrice" HeaderText="Price" DataFormatString="{0:n2}" />
                            </Columns>
                            <HeaderStyle Wrap="False" />
                            <RowStyle Wrap="False" />
                        </asp:GridView>
                    </div>
                </td>
            </tr>
            <tr>
                 <td colspan="3" style="height: 50px;">
                </td>
                 
            </tr>
            <tr>
                <td>
                    _______________
                    <br />
                    Preapred By
                </td>
                <td>
                    _____________
                    <br />
                    Checked By
                </td>

                 <td>
                    _____________
                    <br />
                    Approved By
                </td>

            </tr>
        </table>
    </div>
    </form>
</body>
</html>
