<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PMstr.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.aviones>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2></h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend></legend>

           <div class="panel panel-info">
           <div class="panel-heading">Edicion del Avion numero <strong></strong></div>
           <div class="panel-body">
            
            
            
            <div class="editor-label">
                Nombre del Avion
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
                Asientos Primera Clase
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.asi1) %>
                <%: Html.ValidationMessageFor(model => model.asi1) %>
            </div>
            
            <div class="editor-label">
                Asientos Economicos
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.asi2) %>
                <%: Html.ValidationMessageFor(model => model.asi2) %>
            </div>
            
            <div class="editor-label">
                Asientos Turista
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.asi3) %>
                <%: Html.ValidationMessageFor(model => model.asi3) %>
            </div>
            
            <div class="editor-label">
                Cantidad de Combustible
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.comb) %>
                <%: Html.ValidationMessageFor(model => model.comb) %>
            </div>
            
            <div class="editor-label">
                Tipo de Avion
            </div>
            <div class="editor-field">
               
                <%: Html.ValidationMessageFor(model => model.id_tipo) %>
            </div>
            </div></div>
            
            <p>
                <input type="submit" class="btn btn-success" value="Guardar" />
                <a href="/avion" class = "btn btn-danger">Volver</a>
            </p>
        </fieldset>

    <% } %>

    

</asp:Content>

