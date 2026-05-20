<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true"
    CodeFile="StockStatusV2.aspx.cs" Inherits="StockStatusV2" %>

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
                                            Stock</h4>
                                        <!-- <span>Lorem ipsum dolor sit <code>amet</code>, consectetur adipisicing elit</span> -->
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="page-header-breadcrumb">
                                    <ul class="breadcrumb-title">
                                        <li class="breadcrumb-item"><a href="dashboard.php"><i class="feather icon-home"></i>
                                        </a></li>
                                        <li class="breadcrumb-item">Stock</li>
                                        <li class="breadcrumb-item"><a href="addpass.php">Stock Status</a> </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="page-body">
                        <div class="row">
                            <div class="col-md-12">
                                Stock Status :
                                <hr />
                                <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                                <br />
                                Company Name
                                <asp:DropDownList ID="ddlCompanyName" AutoPostBack="true" runat="server" CssClass="select2"
                                    OnSelectedIndexChanged="ddlCompanyName_SelectedIndexChanged">
                                </asp:DropDownList>
                                <div class="table-responsive">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-responsive">
                                        <Columns>
                                            <asp:BoundField DataField="ProductCode" HeaderText="Product Code" HtmlEncode="true" />
                                            <asp:BoundField DataField="StockID" HeaderText="StockID" HtmlEncode="true" />
                                            <asp:BoundField DataField="TotalCount" HeaderText="Total Count" HtmlEncode="true" />
                                            <asp:BoundField DataField="BuyPrice" HeaderText="Buy Price" HtmlEncode="true" />
                                            <asp:BoundField DataField="SellPrice" HeaderText="Sell Price" HtmlEncode="true" />
                                            <asp:BoundField DataField="Probable_SellValue" HeaderText="Probable Sell Value" HtmlEncode="true" />
                                            <asp:BoundField DataField="In_Out_History" HeaderText="History" HtmlEncode="false" />
                                            <asp:BoundField DataField="Set_Sell_Price" HeaderText="Action" HtmlEncode="false" />
                                        </Columns>
                                        <HeaderStyle Wrap="False" />
                                        <RowStyle Wrap="False" />
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
