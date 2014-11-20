﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.aviones>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Details</h2>

    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">id_aviones</div>
        <div class="display-field"><%: Model.id_aviones %></div>
        
        <div class="display-label">nombre</div>
        <div class="display-field"><%: Model.nombre %></div>
        
        <div class="display-label">marca</div>
        <div class="display-field"><%: Model.marca %></div>
        
        <div class="display-label">asi1</div>
        <div class="display-field"><%: Model.asi1 %></div>
        
        <div class="display-label">asi2</div>
        <div class="display-field"><%: Model.asi2 %></div>
        
        <div class="display-label">asi3</div>
        <div class="display-field"><%: Model.asi3 %></div>
        
        <div class="display-label">comb</div>
        <div class="display-field"><%: Model.comb %></div>
        
        <div class="display-label">id_tipo</div>
        <div class="display-field"><%: Model.id_tipo %></div>
        
    </fieldset>
    <p>

        <%: Html.ActionLink("Edit", "Edit", new { id=Model.id_aviones }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>
