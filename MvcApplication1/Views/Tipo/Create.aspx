<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PMstr.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.tipo>" %>



<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<script src="../../Scripts/jquery.validate.min.js" type="text/javascript"></script>
<script src="../../Scripts/jquery.unobtrusive.min.js" type="text/javascript"></script>

    <h2></h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend></legend>

            <div class="panel panel-warning">
  <div class="panel-heading">Ingresar un nuevo Tipo</div>
  <div class="panel-body">  
            
            <div class="editor-label">
                Codigo del Tipo
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.id_tipo) %>
                <%: Html.ValidationMessageFor(model => model.id_tipo) %>
            </div>
            
            <div class="editor-label">
                Nombre del Tipo
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.nombre)  %>
                <%: Html.ValidationMessageFor(model => model.nombre) %>
            </div></div></div>
            
            <p>
                <input type="submit" class="btn btn-success" value="Guardar" />
                <a href="/tipo" class = "btn btn-danger">Volver</a>
            </p>
        </fieldset>

    <% } %>

    

</asp:Content>

