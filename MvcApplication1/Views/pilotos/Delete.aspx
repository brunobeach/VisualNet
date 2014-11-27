<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PMstr.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.pilotos>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2></h2>

    <div class="alert alert-warning" role="alert">¿Esta seguro de que desea eliminar a<strong> <%: Model.nombre %> <%: Model.apellidos %></strong>?</div>
    <fieldset>
        <legend></legend>
  <div class="panel panel-danger">
  <div class="panel-heading">Eliminar Piloto</div>
  <div class="panel-body">         


        <div class="display-label">Codigo del Piloto</div>
        <div class="display-field"><strong><%: Model.id_piloto %></strong></div>
        
    
        
        <div class="display-label">Edad</div>
        <div class="display-field"><strong><%: Model.edad %></strong></div>
        
        <div class="display-label">Grado</div>
        <div class="display-field"><strong><%: Model.grado %></strong></div>
        </div></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" class="btn btn-warning" value="Eliminar" />
            <a href="/pilotos" class = "btn btn-danger">Volver</a>
        </p>
    <% } %>

</asp:Content>

