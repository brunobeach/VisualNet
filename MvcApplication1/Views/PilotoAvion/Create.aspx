<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PMstr.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.piloto_avion>" %>

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
                Nombre del Piloto
            </div>
            <div class="editor-field">
                
                <%: Html.DropDownListFor(model => model.id_piloto, ViewData["pilotos"] as SelectList)%> 
                <%: Html.ValidationMessageFor(model => model.id_piloto) %>
            </div>
            
            <div class="editor-label">
                Nombre del Avion
            </div>
            <div class="editor-field">
                <%: Html.DropDownListFor(model => model.id_aviones, ViewData["aviones"] as SelectList)%>
                <%: Html.ValidationMessageFor(model => model.id_aviones) %>
            </div>
            
            <div class="editor-label">
                Estado
            </div>
            <div class="editor-field">
                <%: Html.CheckBoxFor(model => model.estado)%>
            </div>
      </div></div>
            <p>
                <input type="submit" class="btn btn-success" value="Guardar"/>
                <a href="/pilotoavion" class = "btn btn-danger"> <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Volver</a>
            </p>
        </fieldset>

    <% } %>

    <div>
       
    </div>

</asp:Content>

