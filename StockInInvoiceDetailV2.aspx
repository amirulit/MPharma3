<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true"
    CodeFile="StockInInvoiceDetailV2.aspx.cs" Inherits="StockInInvoiceDetailV2" %>

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
                                Invoice Detail :
                                <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                                <hr />
                                <!--
                                                <table id="example1" class="table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>
                                                                ID
                                                            </th>
                                                            <th>
                                                                Item Name
                                                            </th>
                                                            <th>
                                                                Generic Name
                                                            </th>
                                                            <th>
                                                                Strength
                                                            </th>
                                                            <th>
                                                                Details
                                                            </th>
                                                            <th>
                                                                Manufacturer
                                                            </th>
                                                            <th>
                                                                Supplier
                                                            </th>
                                                            <th>
                                                                TotalCount
                                                            </th>
                                                            <th>
                                                                TotalPrice
                                                            </th>
                                                            <th>
                                                                ManufacDate
                                                            </th>
                                                            <th>
                                                                ExpiryDate
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
                                                                <%=TableData.Rows[data]["ID"]%>
                                                            </td>
                                                            <td class="auto-style1">
                                                                <%=TableData.Rows[data]["ItemName"]%>
                                                            </td>
                                                            <td class="auto-style1">
                                                                <%=TableData.Rows[data]["GenericName"]%>
                                                            </td>
                                                            <td class="auto-style1">
                                                                <%=TableData.Rows[data]["Strength"]%>
                                                            </td>
                                                            <td class="auto-style1">
                                                                <%=TableData.Rows[data]["Details"]%>
                                                            </td>
                                                            <td class="auto-style1">
                                                                <%=TableData.Rows[data]["Manufacturer"]%>
                                                            </td>
                                                            <td class="auto-style1">
                                                                <%=TableData.Rows[data]["Supplier"]%>
                                                            </td>
                                                            <td class="auto-style1">
                                                                <%=TableData.Rows[data]["TotalCount"]%>
                                                            </td>
                                                            <td class="auto-style1">
                                                                <%=TableData.Rows[data]["TotalBuyPrice"]%>
                                                            </td>
                                                            <td class="auto-style1">
                                                                <%=TableData.Rows[data]["ManufacDate2"]%>
                                                            </td>
                                                            <td class="auto-style1">
                                                                <%=TableData.Rows[data]["ExpiryDate2"]%>
                                                            </td>
                                                            <td class="auto-style1">
                                                                <a href="#" class='btn btn-xs btn-primary delete' onclick="javascript:OpenWin('<%=TableData.Rows[data]["InvoiceNO"] %> ');">
                                                                    <i class="fa fa-fw fa-trash"></i>Delete</a>
                                                            </td>
                                                        </tr>
                                                        <% } %>
                                                    </tbody>
                                                </table>
                                                -->
                                <div class="table-responsive">
                                    <asp:GridView ID="GridView1" runat="server">
                                        <HeaderStyle Wrap="False" />
                                        <RowStyle Wrap="False" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="Action">
                                                <ItemTemplate>
                                                    <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger"
                                                        OnClientClick="return confirm('Are you sure? want to delete the entry.');" OnClick="btnDelete_Click" />
                                                    <asp:Label ID="ID" runat="server" Text='<%#Eval("ID") %>' Visible="false"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>

</asp:Content>
