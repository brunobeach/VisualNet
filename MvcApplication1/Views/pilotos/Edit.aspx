<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PMstr.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.pilotos>" %>

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
                <div class="panel-heading">Edicion de Piloto</div>
                <div class="panel-body">

            <div class="editor-label">
                Codigo del Piloto
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.id_piloto) %>
                <%: Html.ValidationMessageFor(model => model.id_piloto) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.nombre) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.nombre) %>
                <%: Html.ValidationMessageFor(model => model.nombre) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.apellidos) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.apellidos) %>
                <%: Html.ValidationMessageFor(model => model.apellidos) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.edad) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.edad) %>
                <%: Html.ValidationMessageFor(model => model.edad) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.grado) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.grado) %>
                <%: Html.ValidationMessageFor(model => model.grado) %>
            </div>
            </div></div>
            <p>
                <input type="submit" class="btn btn-success" value="Guardar" />
                <a href="/pilotos" class = "btn btn-danger">Volver</a>
            </p>
        </fieldset>

    <% } %>

 

</asp:Content>

