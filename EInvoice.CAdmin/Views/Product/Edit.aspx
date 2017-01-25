﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Home.Master" Inherits="System.Web.Mvc.ViewPage<Products>" %>

<%@ Import Namespace="EInvoice.Core.Domain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Sản phẩm
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%using (Html.BeginForm("Update", "Product", FormMethod.Post, new { @class = "form-horizontal" }))
      {%>
    <div class="row">
        <%Html.RenderPartial("ProductShareElement", Model);%>
        <div class="row">
            <div class="text-center col-xs-12">
                <button class="btn btn-sm btn-primary" type="submit"><i class="fa fa-ok"></i>Lưu</button>
                   <button class="btn btn-sm" type="button" onclick="document.location = '/Product/index'">
                    <i class="fa fa-backward"></i>Quay lại</button>
                
             
            </div>
        </div>
    </div>
    <%}%>
</asp:Content>
