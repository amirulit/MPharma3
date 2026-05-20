<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TabTutorial.aspx.cs" Inherits="TabTutorial" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var selectedTab = $("#<%=hfTab.ClientID%>");
            var tabId = selectedTab.val() != "" ? selectedTab.val() : "tab1";
            $('#dvTab a[href="#' + tabId + '"]').tab('show');
            $("#dvTab a").click(function () {
                selectedTab.val($(this).attr("href").substring(1));
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="padding-left: 200px;">
        <!-- Panel starts -->
        <div class="panel panel-default" style="width: 400px; padding: 5px; margin: 5px">
            <div class="panel-heading">
                TAB Tutorial</div>
            <div class="panel-body">
                <div id="dvTab">
                    <!-- Navigation Tabs starts -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li><a href="#tab1" aria-controls="tab1" role="tab" data-toggle="tab">Tab1 </a></li>
                        <li><a href="#tab2" aria-controls="tab2" role="tab" data-toggle="tab">Tab2</a></li>
                        <li><a href="#tab3" aria-controls="tab3" role="tab" data-toggle="tab">Tab3</a></li>
                    </ul>
                    <!-- Navigation Tabs ends -->
                    <!-- Tab Panes starts -->
                    <div class="tab-content" style="padding-top: 10px">
                        <div role="tabpanel" class="tab-pane active" id="tab1">
                            You are in Tab1
                        </div>
                        <div role="tabpanel" class="tab-pane" id="tab2">
                            You are in Tab2
                        </div>
                        <div role="tabpanel" class="tab-pane" id="tab3">
                            You are in Tab3
                        </div>
                    </div>
                    <!-- Tab Panes ends -->
                </div>
                <br />
                <asp:Button ID="btnSubmit" Text="Submit" runat="server" OnClick="btnSubmit_Click"
                    CssClass="btn btn-primary" />
                <asp:Button ID="btnSelectTab2" Text="Select Tab2" runat="server" OnClick="btnSelectTab2_Click"
                    CssClass="btn btn-primary" />
                <asp:Button ID="btnSelectTab3" Text="Select Tab3" runat="server" OnClick="btnSelectTab3_Click"
                    CssClass="btn btn-primary" />
                <asp:HiddenField ID="hfTab" runat="server" />
            </div>
            <!-- Panel ends -->
            <div  class="panel-footer"></div>
        </div>
    </div>
    </form>
</body>
</html>
