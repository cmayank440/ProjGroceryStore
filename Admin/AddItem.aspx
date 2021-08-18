<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddItem.aspx.cs" Inherits="ProjGroceryStore.Admin.AddItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>ADD ITEM </title>
   
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width" />
    <title>ADD CATEGORY</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
                <div class="form-group">
                    <label>    Item Name </label>
                    <asp:TextBox ID="txtItemName" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>    Description </label>
                    <asp:TextBox ID="txtDesc" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>    Price </label>
                    <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>    Quantity </label>
                    <asp:TextBox ID="txtQty" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>    Image </label>
                    <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                </div>

                <div class="form-group">
                    <label>    Image1 </label>
                    <asp:FileUpload ID="FileUpload2" CssClass="form-control" runat="server" />
                </div>

                <div class="form-group">
                    <label>    Image2 </label>
                    <asp:FileUpload ID="FileUpload3" CssClass="form-control" runat="server" />
                </div>

               <%-- <div class="form-group">
                    <label>    Size </label>
                    <asp:DropDownList ID="ddlSize" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>--%>

                  <div class="form-group">
                    <label>    Category </label>
                      <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>

                <div class="form-group">
                    <asp:Button ID="btnAddItem" CssClass="btn btn-success btn-lg" runat="server" Text="ADD ITEM" OnClick="btnAddItem_Click" />
                </div>

            </div>


            <div class="col-sm-2"></div>

        </div>



    <div class="row">
            <div class="col-sm-12"></div>
                <div class="table">

                    <asp:GridView ID="GridView1" runat="server"></asp:GridView>

                    </div>
        </div>
    
</asp:Content>
