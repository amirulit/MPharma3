<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true"
    CodeFile="SellV2.aspx.cs" Inherits="SellV2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="pcoded-content">
        <div class="pcoded-inner-content">
            <div class="main-body">
                <div class="page-wrapper full-calender">
                    <div class="page-header">
                        <div class="row align-items-end">
                            <div class="col-lg-8">
                                <div class="page-header-title">
                                    <div class="d-inline">
                                        <h4>
                                            New Sell</h4>
                                        <!-- <span>Lorem ipsum dolor sit <code>amet</code>, consectetur adipisicing elit</span> -->
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="page-header-breadcrumb">
                                    <ul class="breadcrumb-title">
                                        <li class="breadcrumb-item"><a href="dashboard.php"><i class="feather icon-home"></i>
                                        </a></li>
                                        <li class="breadcrumb-item"><a>Sell</a> </li>
                                        <li class="breadcrumb-item"><a href="addpass.php">New Sell</a> </li>
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
                                        <td colspan="6">
                                            <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Date
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtSellDate" runat="server" placeholder="Invoice
                                        Date" required=""></asp:TextBox>
                                        </td>
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
                                            Invoice NO
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtInvoiceNO" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <input id="Button1" type="button" value="Get Invoice NO" class="btn btn-info" />
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
                                            Customer ID
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtCusID" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            Customer Name
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtCusName" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Medicine Code
                                        </td>
                                        <td colspan="5">
                                            <asp:DropDownList ID="ddlMedicine" runat="server" CssClass="select2">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Quantity
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            Unit Price
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtUnitPrice" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            Total Price
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtTotalPrice" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Discount Code
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlDiscountCode" runat="server" CssClass="select2">
                                                <asp:ListItem Value="0">No
                                        Discount</asp:ListItem>
                                                <asp:ListItem Value="5">5% Discount</asp:ListItem>
                                                <asp:ListItem Value="6">6% Discount</asp:ListItem>
                                                <asp:ListItem Value="7">7% Discount</asp:ListItem>
                                                <asp:ListItem Value="8">8% Discount</asp:ListItem>
                                                <asp:ListItem Value="9">9% Discount</asp:ListItem>
                                                <asp:ListItem Value="10">10% Discount</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            Discount
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtDiscount" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            Net Price
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtNetAmount" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
                                        <td colspan="5">
                                            <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" OnClick="btnAddToCart_Click"
                                                class="btn btn-primary m-b-0" OnClientClick="return Check();" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="card col-md-12">
                            <h4>
                                Cart Details :</h4>
                            <asp:GridView ID="GridView1" runat="server" CssClass="gv" AutoGenerateColumns="false"
                                ShowHeaderWhenEmpty="True" EmptyDataText="No Records Found" GridLines="both"
                                EmptyDataRowStyle-ForeColor="Red">
                                <Columns>
                                    <asp:BoundField DataField="StockID" HeaderText="StockID" />
                                    <asp:BoundField DataField="ProductCode" HeaderText="Product Code" />
                                    <asp:BoundField DataField="MedicineName" HeaderText="Medicine Name" />
                                    <asp:TemplateField HeaderText="Quantity">
                                        <ItemTemplate>
                                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("Quantity") %>' />
                                            <asp:TextBox ID="txtQuantity" runat="server" Text='<%#Eval("Quantity") %>'></asp:TextBox>
                                            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="update" OnClientClick="return confirm('Are you sure want to update quantity?');"
                                                OnClick="btnUpdate_Click" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="SellPrice" HeaderText="Sell Price" />
                                    <asp:BoundField DataField="TotalSellPrice" HeaderText="Total Sell Price" />
                                    <asp:BoundField DataField="Discount" HeaderText="Discount" />
                                    <asp:BoundField DataField="NetReceivable" HeaderText="NetReceivable" />
                                    <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>
                                            <!--
                                                            <a href="" class="btn btn-primary"><i class="fa fa-anchor">Click Me</i> </a>
                                                            <asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="gridbtn" OnClick="btnEdit_Click" />
                                                            -->
                                            <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="delete" OnClientClick="return confirm('Are you sure? want to delete the department.');"
                                                OnClick="btnDelete_Click" />
                                            <%-- <asp:Label ID="ID" runat="server" Text='<%#Eval("ID") %>' Visible="false"></asp:Label>--%>
                                            <asp:Label ID="InvoiceNO" runat="server" Text='<%#Eval("InvoiceNO") %>' Visible="false"></asp:Label>
                                            <asp:Label ID="ProductCode" runat="server" Text='<%#Eval("ProductCode") %>' Visible="false"></asp:Label>
                                            <asp:Label ID="StockID" runat="server" Text='<%#Eval("StockID") %>' Visible="false"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <EmptyDataTemplate>
                                    <div align="center">
                                        Your cart is empty</div>
                                </EmptyDataTemplate>
                            </asp:GridView>
                            <hr />
                            <table id="example1" class="cart">
                                <!--
                                                <thead>
                                                    <tr>
                                                        <th>
                                                            SL
                                                        </th>
                                                        <th>
                                                            Product Name
                                                        </th>
                                                        <th>
                                                            Quantity
                                                        </th>
                                                        <th>
                                                            Unit Price
                                                        </th>
                                                        <th>
                                                            Total Sell Price
                                                        </th>
                                                        <th>
                                                            Discount
                                                        </th>
                                                        <th>
                                                            Net Receivable
                                                        </th>
                                                        <th>
                                                            Action
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <% var tot = 0; double totamount = 0.00; for (var data = 0; data < TableData.Rows.Count;
                                    data++)
                                                       {
                                                           tot = tot + 1; totamount = totamount + Convert.ToDouble(TableData.Rows[data]["NetReceivable"]); %>
                                                    <tr>
                                                        <td class="auto-style1">
                                                            <%=tot%>
                                                        </td>
                                                        <td class="auto-style1">
                                                            <%=TableData.Rows[data]["ProductName"]%>
                                                        </td>
                                                        <td class="auto-style1">
                                                            <%=TableData.Rows[data]["Quantity"]%>
                                                        </td>
                                                        <td class="auto-style1">
                                                            <%=TableData.Rows[data]["SellPrice"]%>
                                                        </td>
                                                        <td class="auto-style1">
                                                            <%=TableData.Rows[data]["TotalSellPrice"]%>
                                                        </td>
                                                        <td class="auto-style1">
                                                            <%=TableData.Rows[data]["Discount"]%>
                                                        </td>
                                                        <td class="auto-style1">
                                                            <%=TableData.Rows[data]["NetReceivable"]%>
                                                        </td>
                                                        <td class="auto-style1">
                                                            <!-- <a href="StudentProfileUpdate.aspx?ID=<%=TableData.Rows[data]["ID"]
                                    %>"><span><i class="fa fa-edit"></i>Edit </span></a>&nbsp; <a href="info.php?ID=<%=TableData.Rows[data]["ID"]
                                    %>"> <span><i class="fa fa-info"></i>Info</span></a> &nbsp; <a href="casehistory.php?ID=<%=TableData.Rows[data]["ID"]
                                    %>"> <span><i class="fa fa-history"></i>History</span></a> &nbsp; <a class="popup"
                                    onclick="myFunction()"> <span><i class="fa fa-money"></i>Payment<span class="popuptext"
                                    id="myPopup">Get full version at mayuri.infospace@gmail.com</span></span></a> &nbsp;
                                   
                                                            <a href="DeleteCartItem.aspx?InvNO=<%=TableData.Rows[data]["InvoiceNO"] %>&StockID=<%=TableData.Rows[data]["StockID"]%>&ProductCode=<%=TableData.Rows[data]["ProductCode"]%>"
                                                                class='btn btn-xs btn-danger delete'><i class="fa fa-fw fa-trash"></i>Delete</a>
                                                        </td>
                                                    </tr>
                                                    <% } %> -->
                                <tbody>
                                    <tr>
                                        <td colspan="5">
                                        </td>
                                        <td>
                                            Invoice Amount
                                        </td>
                                        <td class="auto-style1">
                                            <asp:TextBox ID="txtInvoiceAmount" runat="server" Text="<%=totamount%>"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5">
                                        </td>
                                        <td>
                                            Adjust/Tot Dis. Amount
                                        </td>
                                        <td class="auto-style1">
                                            <asp:TextBox ID="txtTotalDiscount" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5">
                                        </td>
                                        <td>
                                            VAT
                                        </td>
                                        <td class="auto-style1">
                                            <asp:TextBox ID="txtVAT" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5">
                                        </td>
                                        <td>
                                            TAX
                                        </td>
                                        <td class="auto-style1">
                                            <asp:TextBox ID="txtTAX" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5">
                                        </td>
                                        <td>
                                            Net Amount
                                        </td>
                                        <td class="auto-style1">
                                            <asp:TextBox ID="txtNetTotal" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="7">
                                            <b><u>Payment Info</u></b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5">
                                        </td>
                                        <td>
                                            Cash
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtCashAmount" runat="server" CssClass="Payment"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5">
                                        </td>
                                        <td>
                                            MFS
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtMFSAmount" runat="server" CssClass="Payment"></asp:TextBox><asp:DropDownList
                                                ID="ddlMFS" runat="server">
                                                <asp:ListItem>bKash</asp:ListItem>
                                                <asp:ListItem>Nagad</asp:ListItem>
                                                <asp:ListItem>MyCash</asp:ListItem>
                                                <asp:ListItem>Rocket</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:TextBox ID="txtMFSNO" runat="server" placeholder="Mobile NO"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5">
                                        </td>
                                        <td>
                                            Card
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtCardAmount" runat="server" CssClass="Payment"></asp:TextBox><asp:DropDownList
                                                ID="ddlCard" runat="server">
                                                <asp:ListItem>Mercantile</asp:ListItem>
                                                <asp:ListItem>UCBL</asp:ListItem>
                                                <asp:ListItem>The City</asp:ListItem>
                                                <asp:ListItem>BRAC</asp:ListItem>
                                                <asp:ListItem>Pubali</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:TextBox ID="txtCardNO" placeholder="Card Number" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5">
                                        </td>
                                        <td>
                                            Paid Amount
                                        </td>
                                        <td class="auto-style1">
                                            <asp:TextBox ID="txtPaidAmount" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5">
                                        </td>
                                        <td>
                                            Change
                                        </td>
                                        <td class="auto-style1">
                                            <asp:TextBox ID="txtChange" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5">
                                        </td>
                                        <td>
                                            Delivery
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlDeliveryOption" runat="server">
                                                <asp:ListItem>Outlet</asp:ListItem>
                                                <asp:ListItem>Home</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="form-group row">
                                <div class="col-sm-4">
                                    <asp:Button ID="btnCreateInvoice" runat="server" Text="Create
                                    Invoice" class="btn btn-primary m-b-0" OnClick="btnCreateInvoice_Click" OnClientClick="return Validate();" />
                                    <!--
                                                    <a href="/Mpa/Orders/DeleteQuote/22" class="btn btn-danger" onclick="return confirm('Are you sure, you want to delete it?')">
                                                        Delete Quote</a>

                                                        -->
                                </div>
                            </div>
                        </div>
                        <!-- End xxxx -->
                    </div>
                </div>
            </div>
        </div>
    </div>

 

</asp:Content>
