<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true"
    CodeFile="SellManageV2.aspx.cs" Inherits="SellManageV2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="pcoded-content">
        <div class="pcoded-inner-content">
            <div class="main-body">
                <div class="page-wrapper">
                    <div class="page-header">
                        <div class="row align-items-end">
                            <div class="col-lg-8">
                                <div class="page-header-title">
                                    <div class="d-inline">
                                        <h4>
                                            Sell Summary</h4>
                                        <!-- <span>Lorem ipsum dolor sit <code>amet</code>, consectetur adipisicing elit</span> -->
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="page-header-breadcrumb">
                                    <ul class="breadcrumb-title">
                                        <li class="breadcrumb-item"><a href="dashboard.php"><i class="feather icon-home"></i>
                                        </a></li>
                                        <li class="breadcrumb-item">Sell</li>
                                        <li class="breadcrumb-item"><a href="addpass.php">Sell Summary</a> </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="page-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <hr />
                                <table>
                                    <tr>
                                        <td>
                                            From Date
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtFromDate" runat="server" CssClass="date"></asp:TextBox>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            To Date
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtToDate" runat="server" CssClass="date"></asp:TextBox>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Invoice NO
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtInvoiceNO" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Counter
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlCounter" runat="server">
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
                                        <td>
                                            <asp:Button ID="btnView" runat="server" Text="View" OnClick="btnView_Click" CssClass="btn btn-secondary btn-flat" />
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowDataBound="GridView1_RowDataBound"
                                    ShowHeaderWhenEmpty="True" EmptyDataText="No Records Found" GridLines="both"
                                    EmptyDataRowStyle-ForeColor="Red" ShowFooter="True">
                                    <Columns>
                                        <asp:TemplateField HeaderText="SL" ItemStyle-Width="100">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSL" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </ItemTemplate>
                                            <ItemStyle Width="100px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="Sel" HeaderText="View" HtmlEncode="false" ControlStyle-CssClass="View">
                                            <ControlStyle CssClass="View"></ControlStyle>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="InvoiceNO" HeaderText="Print" HtmlEncode="false" ControlStyle-CssClass="Print">
                                            <ControlStyle CssClass="Print"></ControlStyle>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Qty" HeaderText="Qty" HtmlEncode="true" />
                                        <asp:BoundField DataField="Tot_Sell_Price" HeaderText="Tot Sell Price" HtmlEncode="true" />
                                        <asp:BoundField DataField="Tot_Discount" HeaderText="Total Discount" HtmlEncode="true" />
                                        <asp:BoundField DataField="AdjustAmount" HeaderText="Adjust Amount" HtmlEncode="true" />
                                        <asp:BoundField DataField="NetReceived" HeaderText="Tot NetReceived" HtmlEncode="true" />
                                        <asp:BoundField DataField="NetProfit" HeaderText="Net Profit" HtmlEncode="true" />
                                    </Columns>
                                    <EmptyDataRowStyle ForeColor="Red" />
                                    <EmptyDataTemplate>
                                        <div align="center">
                                            No Record Found</div>
                                    </EmptyDataTemplate>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
