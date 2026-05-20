<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true"
    CodeFile="AddSupplierV2.aspx.cs" Inherits="AddSupplierV2" %>

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
                                            Add Supplier</h4>
                                        <!-- <span>Lorem ipsum dolor sit <code>amet</code>, consectetur adipisicing elit</span> -->
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="page-header-breadcrumb">
                                    <ul class="breadcrumb-title">
                                        <li class="breadcrumb-item"><a href="dashboard.php"><i class="feather icon-home"></i>
                                        </a></li>
                                        <li class="breadcrumb-item"><a>User</a> </li>
                                        <li class="breadcrumb-item"><a href="addpass.php">User Create</a> </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="page-body">
                        <div class="card col-md-12 ">
                            <div class="card-body">
                                <table>
                                    <tr>
                                        <td>
                                            Supplier Name
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtSupplierName" runat="server" Width="220px"></asp:TextBox>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Supplier Address
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtSupplierAddr" runat="server" Width="284px"></asp:TextBox>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
                                        <td>
                                            <asp:Button ID="btnSupplierSave" runat="server" Text="Save" class="btn btn-primary"
                                                OnClick="btnSupplierSave_Click" />
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <asp:GridView ID="GridView4" runat="server">
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
</asp:Content>
