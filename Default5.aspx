<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">      <div class="pcoded-content">
                        <div class="pcoded-inner-content">
                            <div class="main-body">
                                <div class="page-wrapper full-calender">
                                    <div class="page-header">
                                        <div class="row align-items-end">
                                            <div class="col-lg-8">
                                                <div class="page-header-title">
                                                    <div class="d-inline">
                                                        <h4>
                                                            Company Payment</h4>
                                                        <!-- <span>Lorem ipsum dolor sit <code>amet</code>, consectetur adipisicing elit</span> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="page-header-breadcrumb">
                                                    <ul class="breadcrumb-title">
                                                        <li class="breadcrumb-item"><a href="dashboard.php"><i class="feather icon-home"></i>
                                                        </a></li>
                                                        <li class="breadcrumb-item"><a>Transaction</a> </li>
                                                        <li class="breadcrumb-item"><a href="addpass.php">Company Payment</a> </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="page-body">
                                        <div class="card col-md-12 ">
                                            <div class="card-header">
                                            </div>
                                            <div class="card-block">
                                                <table>
                                                    <tr>
                                                        <td>
                                                        Payment Date
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtTransactionDate" runat="server" ></asp:TextBox>
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Company Name
                                                        </td>
                                                        <td>
                                                             <asp:DropDownList ID="ddlManufacturer" runat="server">
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                    
                                                    <td>Entry Type</td><td>
                                                        <asp:DropDownList ID="ddlCRDR" runat="server">
                                                            <asp:ListItem Value="CR">PurchaseValue</asp:ListItem>
                                                            <asp:ListItem Value="DR">Payment</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td><td></td>
                                                    </tr>
 
 
                                                    <tr>
                                                    <td>Invoice NO#</td><td>
                                                        <asp:TextBox ID="txtInvoiceNO" runat="server"></asp:TextBox></td><td></td>
                                                    
                                                    </tr>

                                                   

                                                    <tr>
                                                        <td>
                                                            Amount
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>


                                                    

                                                    <tr>
                                                        <td>
                                                            Narration
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtNarration" runat="server" Width="272px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>

                                                      <tr>
                                                        <td>
                                                            Company Officials
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtCompanyOffcials" runat="server" Width="272px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>


                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td>
                                                            <asp:Button ID="btnTranSave" runat="server" Text="Save" class="btn btn-primary  m-b-0"
                                                                 />
                                                            <a href="" class="btn btn-primary"><i class="fa fa-automobile"></i>click me </a>
                                                            <input id="Button1" type="button" value="button" class="btn btn-default"> <i class="fa fa-automobile">
                                                            </i></input>
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
</asp:Content>

