<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true"
    CodeFile="AddMedicineV2.aspx.cs" Inherits="AddMedicineV2" %>

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
                                            Add Medicine</h4>
                                        <!-- <span>Lorem ipsum dolor sit <code>amet</code>, consectetur adipisicing elit</span> -->
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="page-header-breadcrumb">
                                    <ul class="breadcrumb-title">
                                        <li class="breadcrumb-item"><a href="dashboard.php"><i class="feather icon-home"></i>
                                        </a></li>
                                        <li class="breadcrumb-item"><a>Medicine/Drug</a> </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="page-body">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-body">
                                    <table>
                                        <tr>
                                            <td colspan="4">
                                                <asp:Label ID="lblStatus" runat="server" Text="" CssClass="nofound"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Medicine/Product Name
                                            </td>
                                            <td colspan="2">
                                                <asp:TextBox ID="txtDrugName" runat="server"></asp:TextBox>
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Product Type
                                            </td>
                                            <td colspan="2">
                                                <asp:DropDownList ID="ddlProductType" runat="server" CssClass="select2">
                                                    <asp:ListItem Text="<-Select->" Value=""></asp:ListItem>
                                                    <asp:ListItem Text="Medicine" Value="Medicine"></asp:ListItem>
                                                    <asp:ListItem Text="Grocery" Value="Grocery"></asp:ListItem>
                                                    <asp:ListItem Text="Baby Item" Value="Baby Item"></asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Category
                                            </td>
                                            <td colspan="2">
                                                <asp:DropDownList ID="ddlCategory" runat="server" CssClass="select2">
                                                </asp:DropDownList>
                                                <a href="#" style="vertical-align: bottom;" data-toggle="modal" data-target="#ModalCategory">
                                                    <i class="fa fa-plus-circle fa-2x"></i></a>
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Strength/Size
                                            </td>
                                            <td colspan="2">
                                                <asp:TextBox ID="txtStrength" runat="server"></asp:TextBox>
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Generic Name
                                            </td>
                                            <td colspan="2">
                                                <asp:DropDownList ID="ddlGeneric" runat="server" CssClass="select2">
                                                </asp:DropDownList>
                                                <!--<a href="AddGeneric.aspx" target="_blank" style="vertical-align: bottom;"><i class="fa fa-plus-circle fa-2x">
                                                            </i></a>
                                                            -->
                                                <a href="#" style="vertical-align: bottom;" data-toggle="modal" data-target="#myModal">
                                                    <i class="fa fa-plus-circle fa-2x"></i></a>
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Manufacturer Name
                                            </td>
                                            <td colspan="2">
                                                <asp:DropDownList ID="ddlManufacturer" runat="server" CssClass="select2">
                                                </asp:DropDownList>
                                                <!--  <a href="AddCompany.aspx" target="_blank" style="vertical-align: bottom;"><i class="fa fa-plus-circle fa-2x">
                                                            </i></a>
                                                            
                                                            -->
                                                <a href="#" style="vertical-align: bottom;" data-toggle="modal" data-target="#ModalCompany">
                                                    <i class="fa fa-plus-circle fa-2x"></i></a>
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Remarks
                                            </td>
                                            <td colspan="2">
                                                <asp:TextBox ID="txtRemarks" runat="server"></asp:TextBox>
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                ALERT Minimum QTY
                                            </td>
                                            <td colspan="2">
                                                <asp:TextBox ID="txtMINQTY" runat="server"></asp:TextBox>
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                            </td>
                                            <td colspan="2">
                                                <input id="btnMedicineInfoSave" type="button" value="Save" class="btn btn-primary" />
                                                &nbsp
                                                <asp:Button ID="btnReload" runat="server" Text="Reload" class="btn btn-info" OnClick="btnReload_Click" />
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    Manufacturer Name :
                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="select2"
                                        OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                    </asp:DropDownList>
                                    <br />
                                    <br />
                                    <asp:GridView ID="GridView2" runat="server" ShowHeaderWhenEmpty="true">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Action">
                                                <ItemTemplate>
                                                    <%--         
                                                            <a href="" class="btn btn-primary"><i class="fa fa-anchor">Click Me</i> </a>
                                                            <asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="gridbtn" OnClick="btnEdit_Click" />
                                                    --%>
                                                    <%--<span class='pull-right'><a href='#edit_photo' class='photo' data-toggle='modal'
                                                                        data-id='<%#Eval("ID") %>'><i class='fa fa-edit'></i>Click</a></span>--%>
                                                    <a href="#" data-id='<%#Eval("ID") %>' class="update btn btn-primary"><i class=' fa fa-edit'>
                                                    </i>Update</a>
                                                    <%-- <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="gridbtn" OnClientClick="return confirm('Are you sure? want to delete the entry.');"
                                                                        OnClick="btnDelete_Click" />--%>
                                                    <asp:Label ID="ID" runat="server" Text='<%#Eval("ID") %>' Visible="false"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <EmptyDataTemplate>
                                            No Record Found
                                        </EmptyDataTemplate>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!-- End footer -->
    </div>
    <!-- End Page wrapper  -->
    </div>
    <div id="edit_photo" class="modal" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">
                        Medicine/Product Info Update</h5>
                    <button type="button" class="close" data-dismiss="modal">
                        &times;</button>
                </div>
                <div class="modal-body">
                    <span id="status"></span>
                    <table>
                        <tr>
                            <td>
                                ID
                            </td>
                            <td>
                                <asp:Label ID="lbl" runat="server"></asp:Label>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Medicine/Product Name
                            </td>
                            <td>
                                <asp:TextBox ID="txtMedicineName_New" runat="server"></asp:TextBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Strength
                            </td>
                            <td>
                                <asp:TextBox ID="txtStrength_New" runat="server"></asp:TextBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Generic Name
                            </td>
                            <td>
                                <asp:TextBox ID="txtGenericName_New" runat="server"></asp:TextBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Medicine Type
                            </td>
                            <td>
                                <asp:TextBox ID="txtMedicineType_New" runat="server"></asp:TextBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                MIN QTY
                            </td>
                            <td>
                                <asp:TextBox ID="txtMINQTY_New" runat="server"></asp:TextBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <input id="btnUpdate" type="button" value="Update" cssclass="btn btn-primary" />
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div id="ModalCategory" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">
                        Category Add</h5>
                    <button type="button" class="close" data-dismiss="modal">
                        &times;</button>
                </div>
                <div class="modal-body">
                    <table>
                        <tr>
                            <td>
                                Category
                            </td>
                            <td>
                                <asp:TextBox ID="txtCategoryName" runat="server"></asp:TextBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Remarks
                            </td>
                            <td>
                                <asp:TextBox ID="txtCategoryRemarks" runat="server"></asp:TextBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <input id="btnCategorySave" type="button" value="Save" class="btn btn-primary" />
                                &nbsp
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">
                                    Cancel</button>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="modal-footer">
                </div>
            </div>
        </div>
    </div>
    <div id="ModalCompany" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">
                        Manufacturer/Company Info Save</h5>
                    <button type="button" class="close" data-dismiss="modal">
                        &times;</button>
                </div>
                <div class="modal-body">
                    <table>
                        <tr>
                            <td>
                                Company Name
                            </td>
                            <td>
                                <asp:TextBox ID="txtCompanyName" runat="server"></asp:TextBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Company Address
                            </td>
                            <td>
                                <asp:TextBox ID="txtCompanyAddress" runat="server"></asp:TextBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Remarks
                            </td>
                            <td>
                                <asp:TextBox ID="txtCompanyRemarks" runat="server"></asp:TextBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
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
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <input id="btnComSave" type="button" value="Save" class="btn btn-primary" />
                                &nbsp
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">
                                    Cancel</button>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="modal-footer">
                </div>
            </div>
        </div>
    </div>
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">
                        Generin Info Save</h5>
                    <button type="button" class="close" data-dismiss="modal">
                        &times;</button>
                </div>
                <div class="modal-body">
                    <table>
                        <tr>
                            <td>
                                Generic Name
                            </td>
                            <td>
                                <asp:TextBox ID="txtGenericName" runat="server"></asp:TextBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Remarks
                            </td>
                            <td>
                                <asp:TextBox ID="txtGenericRemarks" runat="server"></asp:TextBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
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
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <input id="btnGenSave" type="button" value="Save" class="btn btn-primary" />
                                &nbsp
                                <button type="button" class="btn btn-default" data-dismiss="modal">
                                    Close</button>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="modal-footer">
                </div>
            </div>
        </div>
    </div>
</asp:Content>
