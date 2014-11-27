<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PMstr.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.aviones>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2></h2>

    <div class="alert alert-warning" role="alert">¿Esta seguro de que desea eliminar a<strong> <%: Model.nombre %></strong>?</div>
    <fieldset>
        <legend></legend>

        <div class="panel panel-danger">
  <div class="panel-heading">Eliminar Avion <strong> <%: Model.id_aviones%></strong></div>
  <div class="panel-body">  
        
       
        
        <div class="display-label">Marca</div>
        <div class="display-field"><strong><%: Model.marca %></strong></div>
        
        <div class="display-label">Asientos Primera Clase</div>
        <div class="display-field"><strong><%: Model.asi1 %></strong></div>
        
        <div class="display-label">Asientos Economicos</div>
        <div class="display-field"><strong><%: Model.asi2 %></strong></div>
        
        <div class="display-label">Asientos Turista</div>
        <div class="display-field"><strong><%: Model.asi3 %></strong></div>
        
        <div class="display-label">Cantidad de Combustible</div>
        <div class="display-field"><strong><%: Model.comb %></strong></div>
        
        <div class="display-label">Tipo</div>
        <div class="display-field"><strong><%: Model.tipo.nombre %></strong></div>
        </div></div>
    </fieldset>
    <% using (Html.BeginForm()) { %>
    
        <p>
		    <input type="submit" class="btn btn-warning" value="Eliminar" />
            <a href="/avion" class = "btn btn-danger">Volver</a>
        </p>
    <% } %>

</asp:Content>

