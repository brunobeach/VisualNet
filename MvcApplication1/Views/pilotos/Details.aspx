﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.pilotos>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Details</h2>

    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">id_piloto</div>
        <div class="display-field"><%: Model.id_piloto %></div>
        
        <div class="display-label">nombre</div>
        <div class="display-field"><%: Model.nombre %></div>
        
        <div class="display-label">apellidos</div>
        <div class="display-field"><%: Model.apellidos %></div>
        
        <div class="display-label">edad</div>
        <div class="display-field"><%: Model.edad %></div>
        
        <div class="display-label">grado</div>
        <div class="display-field"><%: Model.grado %></div>
        
    </fieldset>
    <p>

        <%: Html.ActionLink("Edit", "Edit", new { id=Model.id_piloto }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>
