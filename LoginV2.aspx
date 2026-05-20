<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginV2.aspx.cs" Inherits="LoginV2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">  
    <script src="https//ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        body
        {
            background: #28a745 !important;
            font-family: 'Muli' , sans-serif;
        }
        h1
        {
            color: #fff;
            padding-bottom: 2rem;
            font-weight: bold;
        }
        a
        {
            color: #333;
        }
        a:hover
        {
            color: #E8D426;
            text-decoration: none;
        }
        .form-control:focus
        {
            color: #000;
            background-color: #fff;
            border: 2px solid #E8D426;
            outline: 0;
            box-shadow: none;
        }
        .btn
        {
            background: #28a745;
            border: #E8D426;
        }
        .btn:hover
        {
            background: #28a745;
            border: #E8D426;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="pt-5">
        <h1 class="text-center">
            Boostrap4 Login Form Example
        </h1>
        <div class="container">
            <div class="row">
                <div class="col-md-5 mx-auto">
                    <div class="card card-body">
                        <form id="submitForm" action="#" method="post" data-parsley-validate="" data-parsley-errors-messages-disabled="true"
                        novalidate="" _lpchecked="1">
                        <input type="hidden" name="_csrf" value="7635eb83-1f95-4b32-8788-abec2724a9a4">
                        <div class="form-group required">
                            <label for="username"> Enter your Name / Email </label>
                            <input type="text" class="form-control text-lowercase" id="username" required=""
                                name="username" value="">
                        </div>
                        <div class="form-group required">
                            <label class="d-flex flex-row align-items-center" for="password">
                                Enter your Password <a class="ml-auto border-link small-xl" href="#">Forget Password?
                                </a>
                            </label>
                            <input type="password" class="form-control" required="" id="password" name="password"
                                value="">
                        </div>
                        <div class="form-group mt-4 mb-4">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="remember-me" name="remember-me"
                                    data-parsley-multiple="remember-me">
                                <label clss="custom-control-label" for="remember-me">
                                    Remember me?
                                </label>
                            </div>
                        </div>
                        <div class="form-group pt-1">
                            <button class="btn btn-primary btn-block" type="submit">
                                Log In
                            </button>
                        </div>
                        </form>
                        <p class="small-xl pt-3 text-center">
                            <span class="text-muted">Not a member? </span><a href="#">Sign up </a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
