<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="ProjGroceryStore.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style>
        footer{
            background-color:aqua;
            padding:25px;
        }
        .carousel-inner img{
            width:100%;
            min-height:200px;

        }
        @media (maxwidth: 600px){
            .carousel-caption {
                display:none;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
             <div class="jumbotron text-center" style="margin-bottom: 0;background-color:chartreuse">
            <h2>ONLINE GROCERY STORE</h2>
            <p>Place where all Your needs Get fulfilled!</p>

        </div>
        <%--  MENU--%>

        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mynavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Default.aspx">Grocery Store</a>
                </div>
                <div class="collapse navbar-collapse" id="mynavbar">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="Default.aspx">HOME </a></li>
                       <%-- <li><a href="#">ABOUT </a></li>
                        <li><a href="#">CONTACT </a></li>
                        <li><a href="#">BLOG </a></li>
                        <li><a href="#">PRODUCT</a></li>--%>

                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                       <%-- <li><a href="SignUp.aspx"><span class="glyphicon glyphicon-log-in"></span>SignUp</a></li>--%>

                    </ul>

                </div>
            </div>
        </nav>
        <div class="container">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                <div class="panel panel-danger">
                    <div class=" panel-heading">Admin Login</div>
                    <div class=" panel-body">
                        <div class="row">
                            <div class="col-sm-12"  >
                                <div class="form-group">
                                    <label>UserName:</label>
                                    <asp:TextBox ID="txtuserid" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                     <label>Password:</label>
                                    <asp:TextBox ID="txtpass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                 </div>
                                 <div class="form-group">
                                     <asp:Button ID="btnLogin" CssClass="btn btn-success" runat="server" Text="Login" OnClick="btnLogin_Click" />
                                     <asp:Button ID="btnCancel" CssClass="btn btn-danger" runat="server" Text="Cancel" />
                                 </div>
                            </div>
                        </div>
                    </div>

    </div>                <div class=" panel-footer"></div>
           </div>
        </div>
            <div class="col-sm-3"></div>


            <br/>
              <footer class="container-fluid text-center jumbotron">
                <p>www.mygrocerystore.com</p>
                  <p>copyright@2021</p>
            </footer>
    </form>
</body>
</html>
