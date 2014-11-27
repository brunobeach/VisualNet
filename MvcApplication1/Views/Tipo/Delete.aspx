<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PMstr.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.tipo>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Delete</h2>
<div class="alert alert-warning" role="alert">¿Esta seguro de que desea eliminar el tipo<strong> <%: Model.nombre %></strong>?</div>
    <fieldset>
        <legend></legend>
  <div class="panel panel-danger">
  <div class="panel-heading">Eliminar Tipo</div>
  <div class="panel-body">   
        
        <div class="display-label">Codigo</div>
        <div class="display-field"><strong><%: Model.id_tipo %></strong></div>
        </div></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" class="btn btn-success" value="Guardar" />
                <a href="/tipo" class = "btn btn-danger">Volver</a>
        </p>
    <% } %>

</asp:Content>

