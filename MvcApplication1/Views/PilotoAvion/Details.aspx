<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PMstr.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.piloto_avion>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2></h2>

    <fieldset>
        <legend></legend>
 <div class="panel panel-success">
 <div class="panel-heading">Detalles del Viaje Numeo <strong><%: Model.id_avion_piloto %></strong></div>
  <div class="panel-body">
    
        
        <div class="display-label">Nombre de Piloto</div>
        <div class="display-field"><strong><%: Model.pilotos.nombre %></strong> </div>
        
        <div class="display-label">Nombre de Avion</div>
        <div class="display-field"><strong><%: Model.id_aviones %></strong></div>
        
        <div class="display-label">Estado</div>
        <div><%if (Model.estado == true) 
               {%>
                      <strong>Activo!</strong>   
                     <% }
                        else
                      {%>
                      <strong>Desactivo!</strong>  
                     <%
                      }%>
               
               </div>
  </div>
</div>
        
        
    </fieldset>
    <p>
        <div>
        <a href="/pilotoavion" class = "btn btn-danger">Volver</a>
        </div>
    </p>

</asp:Content>

