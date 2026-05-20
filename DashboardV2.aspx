<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="DashboardV2.aspx.cs" Inherits="DashboardV2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 

    <div class="pcoded-content">
                  
                        <div class="pcoded-inner-content">
                            <div class="main-body">
                                <div class="page-wrapper full-calender">
                                    <div class="page-body">
                                        <div class="row">
                                            <div class="col-xl-2 col-md-3">
                                                <div class="card bg-c-green update-card">
                                                    <div class="card-block">
                                                        <div class="row align-items-end">
                                                            <div class="col-8">
                                                                <h4 class="text-white">
                                                                    4</h4>
                                                                <h6 class="text-white m-b-0">
                                                                    <a href="" style="color: white;">Total Customer</a></h6>
                                                            </div>
                                                            <div class="col-4 text-right">
                                                                <canvas id="update-chart-2" height="50"></canvas>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-2 col-md-3">
                                                <div class="card bg-c-yellow update-card">
                                                    <div class="card-block">
                                                        <div class="row align-items-end">
                                                            <div class="col-8">
                                                                <h4 class="text-white">
                                                                    0</h4>
                                                                <h6 class="text-white m-b-0">
                                                                    <a href="yesterdays-pass.php" style="color: white;">Total Invoice</a></h6>
                                                            </div>
                                                            <div class="col-4 text-right">
                                                                <canvas id="update-chart-1" height="50"></canvas>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-2 col-md-3">
                                                <div class="card bg-c-pink update-card">
                                                    <div class="card-block">
                                                        <div class="row align-items-end">
                                                            <div class="col-8">
                                                                <h4 class="text-white">
                                                                    3</h4>
                                                                <h6 class="text-white m-b-0">
                                                                    <a href="pass.php" style="color: white;">Total Manufact</a></h6>
                                                            </div>
                                                            <div class="col-4 text-right">
                                                                <canvas id="update-chart-3" height="50"></canvas>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-2 col-md-3">
                                                <div class="card bg-c-lite-green update-card">
                                                    <div class="card-block">
                                                        <div class="row align-items-end">
                                                            <div class="col-8">
                                                                <h4 class="text-white">
                                                                    0</h4>
                                                                <h6 class="text-white m-b-0">
                                                                    <a href="todayspass.php" style="color: white;">Total Medicine</a></h6>
                                                            </div>
                                                            <div class="col-4 text-right">
                                                                <canvas id="update-chart-4" height="50"></canvas>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-2 col-md-3">
                                                <div class="card bg-c-yellow update-card">
                                                    <div class="card-block">
                                                        <div class="row align-items-end">
                                                            <div class="col-8">
                                                                <h4 class="text-white">
                                                                    0</h4>
                                                                <h6 class="text-white m-b-0">
                                                                    <a href="yesterdays-pass.php" style="color: white;">Total Invoice</a></h6>
                                                            </div>
                                                            <div class="col-4 text-right">
                                                                <canvas id="update-chart-1" height="50"></canvas>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-2 col-md-3">
                                                <div class="card bg-c-green update-card">
                                                    <div class="card-block">
                                                        <div class="row align-items-end">
                                                            <div class="col-8">
                                                                <h4 class="text-white">
                                                                    0</h4>
                                                                <h6 class="text-white m-b-0">
                                                                    <a href="yesterdays-pass.php" style="color: white;">Total Invoice</a></h6>
                                                            </div>
                                                            <div class="col-4 text-right">
                                                                <canvas id="update-chart-1" height="50"></canvas>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h5>
                                                            Todays' Sell</h5>
                                                    </div>
                                                    <div class="card-block">
                                                        <div class="ct-chart1 ct-perfect-fourth">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h5>
                                                            Todays' Purchase</h5>
                                                    </div>
                                                    <div class="card-block">
                                                        <div class="ct-chart1-patient ct-perfect-fourth">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h5>
                                                            Out of Stock Medicine</h5>
                                                    </div>
                                                    <div class="card-block">
                                                        <div class="ct-chart1 ct-perfect-fourth">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h5>
                                                            Expired Medicine</h5>
                                                    </div>
                                                    <div class="card-block">
                                                        <div class="ct-chart1-patient ct-perfect-fourth">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- <div class="card col-md-12 "> <div class="table-responsive dt-responsive m-t-50">
                                        <table id="dom-jqry" class="table table-striped table-bordered nowrap"> <thead>
                                        <tr> <th> S.NO </th> <th> Pass Number </th> <th> Full Name </th> <th> Contact Number
                                        </th> <th> Email </th> <th> Creation Date </th> </tr> </thead> <tbody> <td> 1 </td>
                                        <td> 123162376 </td> <td> Suraj Kadam </td> <td> 8090908090 </td> <td> suraj@gmail.com
                                        </td> <td> 2020-09-12 10:56:45 </td> <tbody> <td> 2 </td> <td> 256130670 </td> <td>
                                        Saurabh Kathe </td> <td> 9090809080 </td> <td> saurabh@gmail.com </td> <td> 2020-09-12
                                        11:41:32 </td> <tbody> <td> 3 </td> <td> 951344259 </td> <td> Mahendra Singh </td>
                                        <td> 987654321 </td> <td> mahendra@gmail.com </td> <td> 2020-09-12 12:12:28 </td>
                                        </tbody> <tfoot> <tr> <th> S.NO </th> <th> Pass Number </th> <th> Full Name </th>
                                        <th> Contact Number </th> <th> Email </th> <th> Creation Date </th> </tr> </tfoot>
                                        </table> </div> --> </div>
                                    </div>
                                </div>
                            </div>
                        </div>

</asp:Content>

