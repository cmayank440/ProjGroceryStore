<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjGroceryStore.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ONLINE GROCERY STORE</title>
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
        <div class="jumbotron text-center" style="margin-bottom: 0;background-color:fuchsia">
            <h2>ONLINE GROCERY STORE</h2>
            <p>Place where all Your Basic Needs Get Fulfilled!</p>

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
                        <li><a href="#">ABOUT </a></li>
                        <li><a href="#">CONTACT </a></li>
                        <li><a href="#">BLOG </a></li>
                        <li><a href="#">PRODUCT</a></li>

                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="Login.aspx"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
                        <li><a href="SignUp.aspx"><span class="glyphicon glyphicon-log-in"></span>SignUp</a></li>
                    </ul>

                </div>
            </div>
        </nav>

        <div class="container">
            <div class="row">
                <div class="col-sm-12">

                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>



                        </ol>
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img src="https://i.pinimg.com/originals/fe/6c/96/fe6c96513fe7838c40ca8f2aa514b4a2.png" alt="Image" />
                                <div class="carousel-caption">
                                    <h3>Dairy Shopping </h3>
                                    <p>
                                        50% off
                                    </p>

                                </div>
                            </div>
                            <!-- Left and right controls -->
                            <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span><span class="sr-only">Previous</span> </a><a class="right carousel-control"
                                href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span><span class="sr-only">Next</span> </a>


                            <div class="item">
                                <img src="https://i.pinimg.com/originals/fe/6c/96/fe6c96513fe7838c40ca8f2aa514b4a2.png" alt="Image" />
                                <div class="carousel-caption">
                                    <h3>More Sale $</h3>
                                    <p>
                                        Come Grab the offer!..
                                    </p>
                                    <div />
                                </div>
                            </div>

                            <!-- Left and right controls -->
                            <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span><span class="sr-only">Previous</span> </a><a class="right carousel-control"
                                href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span><span class="sr-only">Next</span> </a>

                        </div>
                    </div>
                </div>
      

                 <!---Middle COntents start---->
    <hr />
    <div class="container center ">
        <div class="row ">
            <div class="col-lg-4">
                <img class="img-circle " src="https://www.megamix.ba/img/promo/fmcg-distribucija.jpg" alt="thumb" width="140" height="140" />
                <h2>
                    Grocery Products</h2>
                <p>
                   Best quality Grocery Products..</p>
                <p>
                    <a class="btn btn-default " href="#" role="button">View More &raquo;</a></p>
            </div>
            <div class="col-lg-4">
                <img class="img-circle " src="https://lh5.googleusercontent.com/proxy/FMoqCNYXd08GsAClDg9buUDe06c7tjin9mGPs9sNUM0o0Yb6eLyBqi6GWv3nb-jkkQalC6fRTDCAk4Pg0SzRxFEdfrH03I2KdR58ldDf0O8aI-vYnDIKIeJfOXPC12MBTaEjobCHUwe4xwJGPjeW=w1200-h630-p-k-no-nu" alt="thumb" width="140" height="140" />
                <h2>
                    Grocery Vegetables</h2>
                <p>
                    Best  quality Green-vegetables items.</p>
                <p>
                    <a class="btn btn-default " href="#" role="button">View More &raquo;</a></p>
            </div>
            <div class="col-lg-4">
                <img class="img-circle " src="https://cdn.apartmenttherapy.info/image/fetch/f_auto,q_auto:eco,c_fill,g_auto,w_1500/https:%2F%2Fstorage.googleapis.com%2Fgen-atmedia%2F3%2F2016%2F01%2F5cce31c3c20f0f4fa192572d652107f0f6404ffe.jpeg" alt="thumb" width="140" height="140" />
                <h2>
                    Grocery Items</h2>
                <p>
                    Best quality grain items.</p>
                <p>
                    <a class="btn btn-default " href="#" role="button">View More &raquo;</a></p>
            </div>
        </div>
                <%--<div class="col-sm-4">
                    <div class="Well">
                        <p>SOME TEXT.. </p>
                    </div>
                    <div class="Well">
                        <p>Upcoming Events </p>
                    </div>
                    <div class="Well">
                        <p>Visit Our Blog</p>
                    </div>
                </div>--%>
            </div>
        </div>
        </div>    

            <br/>
            <footer class="container-fluid text-center jumbotron">
                <p>www.mygrocerystore.com</p>
                 <p>copyright@2021</p>
            </footer>
    </form>
</body>
</html>
