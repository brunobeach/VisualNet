<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PMstr.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.pilotos>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2></h2>

    <fieldset>
        <legend></legend>
  <div class="panel panel-success">
  <div class="panel-heading">Detalles del Piloto <strong><%: Model.nombre %> <%: Model.apellidos %> </strong></div>
  <div class="panel-body">  
        
        <div class="display-label">Codigo del Piloto</div>
        <div class="display-field"><strong><%: Model.id_piloto %></strong></div>
        
       
        
        <div class="display-label">edad</div>
        <div class="display-field"><strong><%: Model.edad %></strong></div>
        
        <div class="display-label">grado</div>
        <div class="display-field"><strong><%: Model.grado %></strong></div>
        </div></div>
    </fieldset>
    <p>

        
        <a href="/pilotos" class = "btn btn-danger">Volver</a>
    </p>
    <% if (Model.nombre == "Marcelo") {%>
        <div class="alert alert-warning alert-dismissible" role="alert">
                  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Cerrar</span></button>
                  <strong>¿Sabias que?</strong> este piloto suele tener problemas con la bebida
                </div>
    
    <%}%>

</asp:Content>

