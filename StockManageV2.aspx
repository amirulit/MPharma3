<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true"
    CodeFile="StockManageV2.aspx.cs" Inherits="StockManageV2" %>

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
                                            Stock In Invoice</h4>
                                        <!-- <span>Lorem ipsum dolor sit <code>amet</code>, consectetur adipisicing elit</span> -->
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="page-header-breadcrumb">
                                    <ul class="breadcrumb-title">
                                        <li class="breadcrumb-item"><a href="dashboard.php"><i class="feather icon-home"></i>
                                        </a></li>
                                        <li class="breadcrumb-item"><a>Stock</a> </li>
                                        <li class="breadcrumb-item"><a href="addpass.php">Stock Add</a> </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="page-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="page-header">
                                    Invoice Summary :</div>
                                <table>
                                    <tr>
                                        <td>
                                            Supplier/Manufacturer Name
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlSupplier" runat="server">
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
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
                                            Invoice NO#
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtInvoiceNO" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
                                        <td>
                                            <asp:Button ID="btnView" runat="server" Text="View" OnClick="btnView_Click" CssClass="btn btn-primary" />
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                </table>
                                <hr />
                                <% if (TableData.Rows.Count == 0)
                                   { %>
                                <table id="example1" class="table-bordered">
                                    <thead>
                                        <tr>
                                            <th>
                                                Invoice NO#
                                            </th>
                                            <th>
                                                Supplier
                                            </th>
                                            <th>
                                                Product Type Count
                                            </th>
                                            <th>
                                                Quantity
                                            </th>
                                            <th>
                                                Total Buy Price
                                            </th>
                                            <th>
                                                Action
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td colspan="6" style="text-align: center; color: Red;">
                                                Oppps!!! No Record Found. Check Your Search Criteria
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <% }
                                   else
                                   { %>
                                <table id="Table1" class="table-bordered">
                                    <thead>
                                        <tr>
                                            <th>
                                                Invoice NO#
                                            </th>
                                            <th>
                                                Supplier
                                            </th>
                                            <th>
                                                Product Type Count
                                            </th>
                                            <th>
                                                Quantity
                                            </th>
                                            <th>
                                                Total Buy Price
                                            </th>
                                            <th>
                                                Action
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% for (var data = 0; data < TableData.Rows.Count; data++)
                                           { %>
                                        <tr>
                                            <td class="auto-style1">
                                                <%=TableData.Rows[data]["InvoiceNO"]%>
                                            </td>
                                            <td class="auto-style1">
                                                <%=TableData.Rows[data]["Supplier"]%>
                                            </td>
                                            <td class="auto-style1">
                                                <%=TableData.Rows[data]["Product_Type_Count"]%>
                                            </td>
                                            <td class="auto-style1">
                                                <%=TableData.Rows[data]["Quantity"]%>
                                            </td>
                                            <td class="auto-style1">
                                                <%=TableData.Rows[data]["TotalBuyPrice"]%>
                                            </td>
                                            <td class="auto-style1">
                                                <a href="#" class='btn btn-xs btn-info' onclick="javascript:OpenWinStockInvoice('<%=TableData.Rows[data]["InvoiceNO"] %> ');">
                                                    <i class="fa fa-fw fa-eye"></i>View</a> <a href="#" class='btn btn-xs btn-primary'
                                                        onclick="javascript:OpenWinPrint('<%=TableData.Rows[data]["InvoiceNO"] %> ');"><i
                                                            class="fa fa-fw fa-print"></i>Print</a>
                                            </td>
                                        </tr>
                                        <% } %>
                                    </tbody>
                                </table>
                                <%} %>
                                <asp:LinkButton runat="server" ID="btnSubmit" class="btn btn-primary" Text="<i class='fa fa-camera'></i> View"
                                    OnClick="btnSubmit_Click"></asp:LinkButton>
                                <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-primary" OnClick="LinkButton2_Click"> Submit <i class="fa fa-forward" aria-hidden="true"></i></asp:LinkButton>
                                <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="True" EmptyDataText="No Records Found"
                                    EmptyDataRowStyle-ForeColor="Red" ShowFooter="True">
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton3" runat="server" CssClass="clickme" OnClientClick="javascript:Delete();return false;"
                                                    Text='<%# Eval("InvoiceNO")%>'>LinkButton</asp:LinkButton>
                                                <asp:LinkButton ID="LinkButton1" Text='<%#Eval("InvoiceNO")%>' runat="server" INV_NO='<%# Eval("InvoiceNO")%>'
                                                    CssClass="btn btn-primary view"><i class="fa fa-camera"></i></asp:LinkButton></ItemTemplate>
                                        </asp:TemplateField>
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
