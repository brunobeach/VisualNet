﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PMstr.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.aviones>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2></h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend></legend>
  <div class="panel panel-warning">
  <div class="panel-heading">Ingresar un nuevo Viaje</div>
  <div class="panel-body"> 

            
            <div class="editor-label">
                Codigo del Avion
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.id_aviones) %>
                <%: Html.ValidationMessageFor(model => model.id_aviones) %>
            </div>
            
            <div class="editor-label">
                Nombre
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.nombre) %>
                <%: Html.ValidationMessageFor(model => model.nombre) %>
            </div>
            
            <div class="editor-label">
                Marca
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.marca) %>
                <%: Html.ValidationMessageFor(model => model.marca) %>
            </div>
            
            <div class="editor-label">
                Asientos de First Class
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.asi1) %>
                <%: Html.ValidationMessageFor(model => model.asi1) %>
            </div>
            
            <div class="editor-label">
                Asientos de Economic Class
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.asi2) %>
                <%: Html.ValidationMessageFor(model => model.asi2) %>
            </div>
            
            <div class="editor-label">
                Asientos Tourist Class
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.asi3) %>
                <%: Html.ValidationMessageFor(model => model.asi3) %>
            </div>
            
            <div class="editor-label">
                Combustible
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.comb) %>
                <%: Html.ValidationMessageFor(model => model.comb) %>
            </div>
            
            <div class="editor-label">
                Tipo de Avion
            </div>
            <div class="editor-field">
                <%: Html.DropDownListFor(model => model.id_tipo, ViewData["tipos"]as SelectList) %>
                <%: Html.ValidationMessageFor(model => model.id_tipo) %>
            </div></div></div>
            
            <p>
                <input type="submit" class="btn btn-success" value="Guardar" />
                <a href="/avion" class = "btn btn-danger">Volver</a>
            </p>
        </fieldset>

    <% } %>

    
    

</asp:Content>

