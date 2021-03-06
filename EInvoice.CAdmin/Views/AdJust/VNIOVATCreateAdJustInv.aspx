﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IInvoice>" %>

<%@ Import Namespace="EInvoice.Core.Domain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Điều chỉnh hóa đơn
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">    
    <%using (Html.BeginForm("CreateAdJustInv", "AdJust", FormMethod.Post, new { enctype = "multipart/form-data" }))
      {%>
    <%=Html.Hidden("type",ViewData["type"])%>
    <%Html.RenderPartial("VNIOVATShare", Model);%>
    <div class="textc"> 
        <%if ((int)ViewData["SignPlugin"] > 0)
          {%>
        <button class="btn btn-sm btn-primary" type="button" onclick="publishAdjustInvByPlugIn()"><i class="fa fa-check"></i><%=Resources.Einvoice.BtnEdit%></button>
        <%}
          else
          {%>
        <button class="btn btn-sm btn-primary" type="submit" onclick="submitForm()"><i class="fa fa-check"></i><%=Resources.Einvoice.BtnEdit%></button>
        <%} %>
        <button class="btn btn-sm" type="button" onclick="document.location = '/AdJust/SearchAdJustInv'">
            <i class="fa fa-backward"></i>Quay lại</button>        
    </div>
    <%}%>
</asp:Content>
