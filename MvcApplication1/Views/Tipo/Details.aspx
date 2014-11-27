<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PMstr.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.tipo>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2></h2>

    <fieldset>
        <legend></legend>

        <div class="panel panel-success">
  <div class="panel-heading">Detalles del Avion <strong><%: Model.nombre %></strong> </div>
  <div class="panel-body"> 
        
        <div class="display-label">Codigo</div>
        <div class="display-field"><strong><%: Model.id_tipo %></strong></div>
        
        
        </div></div>
    </fieldset>
    <p>

       
        <a href="/tipo" class = "btn btn-danger">Volver</a>
    </p>

</asp:Content>

