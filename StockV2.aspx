<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true"
    CodeFile="StockV2.aspx.cs" Inherits="StockV2" %>

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
                                            Stock Add</h4>
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
                        <div class="card col-md-12">
                            <div class="card-body">
                                <table>
                                    <tr>
                                        <td colspan="4">
                                            <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Date
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtStockInDate" runat="server" placeholder="Full Name" required=""></asp:TextBox>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Invoice No <span style="color: Red;">*</span>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtReceiveInvoiceNO" runat="server" required=""></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Total TP
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtTotalTP" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            Spec. Discount
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtSpecialDiscount" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Buy Price Factor
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtBuyPriceFactor" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                            <hr />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Manufacturer
                                        </td>
                                        <td colspan="3">
                                            <asp:DropDownList ID="ddlManufacturer" runat="server" CssClass="select2" OnSelectedIndexChanged="ddlManufacturer_SelectedIndexChanged"
                                                AutoPostBack="True">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Medicine/Product <span style="color: Red;">*</span>
                                        </td>
                                        <td colspan="3">
                                            <asp:DropDownList ID="ddlMedicine" runat="server" CssClass="select2">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlMedicine"
                                                ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                            <!--    <a href="#" data-toggle="modal" data-target="#myModal"><i class="fa fa-plus-circle fa-2x">  </i></a>-->
                                            <a href="AddMedicineV2.aspx" target="_blank" style="vertical-align: bottom;"><i class="fa fa-plus-circle fa-2x">
                                            </i></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Supplier <span style="color: Red;">*</span>
                                        </td>
                                        <td colspan="3">
                                            <asp:DropDownList ID="ddlSupplier" runat="server" CssClass="select2">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlSupplier"
                                                ErrorMessage="*"></asp:RequiredFieldValidator>
                                            <a href="AddSupplierV2.aspx" target="_blank" style="vertical-align: bottom;"><i class="fa fa-plus-circle fa-2x">
                                            </i></a>
                                        </td>
                                    </tr>
                                    <%--
                                                    <tr>
                                                        <td>
                                                            Packaging Type
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlPakagingType" runat="server" CssClass="select2">
                                                                <asp:ListItem>&lt;--Select--&gt;</asp:ListItem>
                                                                <asp:ListItem>Carton</asp:ListItem>
                                                                <asp:ListItem>Box</asp:ListItem>
                                                                <asp:ListItem>Others</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td>
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Package Count
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtIPackageCount" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            Item per Package
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtItemPerPackage" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Quantity per Item
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtQuantityPerItem" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>--%>
                                    <tr>
                                        <td>
                                            Total Pcs <span style="color: Red;">*</span>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtTotalPcs" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            TP
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtTP" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            VAT
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtVAT" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Buy/Purchase Price <span style="color: Red;">*</span>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtUnitPrice" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            Total Buy Price <span style="color: Red;">*</span>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtTotalBuyPrice" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <!--
                                                    <tr>
                                                        <td>
                                                            Manufacturer Price
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtManufacturerPrice" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            MRP
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtMRP" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    -->
                                    <tr>
                                        <td>
                                            Sell Price <span style="color: Red;">*</span>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtSellPrice" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            Total Sell Price <span style="color: Red;">*</span>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtTotalSellPrice" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Manufacing Date <span style="color: Red;">*</span>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtManufacDate" CssClass="date" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            Expiry Date <span style="color: Red;">*</span>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtExpiryDate" CssClass="date" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
                                        <td colspan="3">
                                            <asp:Button ID="btnAddToStock" runat="server" Text="Add to Stock" class="btn btn-primary  m-b-0"
                                                OnClick="btnAddToStock_Click" OnClientClick="return Check_STOCKInput();" />
                                            <asp:Button ID="btnPrint" runat="server" Text="print" class="btn btn-primary  m-b-0"
                                                OnClientClick="javascript:openwin_3();" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="card col-lg-12">
                                Invoice Details :
                                <hr />
                                <!--
                                                <table id="example1" class="table table-bordered table-hover table-condensed">
                                                    <thead>
                                                        <tr>
                                                            <th>
                                                                Invoice NO#
                                                            </th>
                                                            <th>
                                                                Manufacturer Count
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
                                                                <%=TableData.Rows[data]["Manufacturer_Count"]%>
                                                            </td>
                                                            <td class="auto-style1">
                                                                <%=TableData.Rows[data]["Product_Type_Count"]%>
                                                            </td>
                                                            <td class="auto-style1">
                                                                <%=TableData.Rows[data]["Quantity"]%>
                                                            </td>
                                                            <td class="auto-style1">
                                                                <%=TableData.Rows[data]["Total_Price"]%>
                                                            </td>
                                                            <td class="auto-style1">
                                                                <a href="#" class='btn btn-xs btn-primary' onclick="javascript:OpenWin('<%=TableData.Rows[data]["InvoiceNO"] %>');">
                                                                    <i class="fa fa-fw  fa-print"></i>Print</a> &nbsp <a href="#" class='btn btn-xs btn-primary'
                                                                        onclick="javascript:OpenWin2('<%=TableData.Rows[data]["InvoiceNO"] %>');"><i class="fa fa-fw  fa-eye">
                                                                        </i>Detail</a>
                                                            </td>
                                                        </tr>
                                                        <% } %>
                                                    </tbody>
                                                </table>
                                                -->
                                <asp:GridView ID="GridView1" runat="server" CssClass="gv">
                                    <HeaderStyle Wrap="False" />
                                    <RowStyle Wrap="False" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="Action">
                                            <ItemTemplate>
                                                <!--
                                                            <a href="" class="btn btn-primary"><i class="fa fa-anchor">Click Me</i> </a>
                                                            <asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="gridbtn" OnClick="btnEdit_Click" />
                                                            -->
                                                <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="gridbtn" OnClientClick="return confirm('Are you sure? want to delete the entry.');"
                                                    OnClick="btnDelete_Click" />
                                                <!--  <asp:Button ID="btnPrint" runat="server" Text="Print" OnClick="btnPrint_Click" OnClientClick="return confirm('Are you sure? want to Print.');"/>-->
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
    <!-- End Page wrapper  -->
    </div> </div>
    <!--------------------->
    <!--------Modal-------->
    <!--------------------->
    <!-- Modal HTML -->
    <div id="myModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">
                        Confirmation</h5>
                    <button type="button" class="close" data-dismiss="modal">
                        &times;</button>
                </div>
                <div class="modal-body">
                    <p>
                        Do you want to save changes to this document before closing?</p>
                    <p class="text-secondary">
                        <small>If you don't save, your changes will be lost.</small></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">
                        Cancel</button>
                    <button type="button" class="btn btn-primary">
                        Save changes</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
