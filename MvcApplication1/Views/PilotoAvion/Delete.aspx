<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PMstr.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.piloto_avion>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2></h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend></legend>

          <%if (Model.estado == true) 
               {%>
                      <div class="panel panel-danger">
                     <% }
                        else
                      {%>
                      <div class="panel panel-success"> 
                     <%
                      }%>
         


         <div class="panel-heading"><div><%if (Model.estado == true) 
               {%>
                      Desactivar Viaje 
                     <% }
                        else
                      {%>
                      Activar Viaje  
                     <%
                      }%>
               
               </div> </div>
         <div class="panel-body">
         
            
        <div class="display-label">Numero de Viaje</div>
        <div class="display-field"><strong><%: Model.id_avion_piloto %></strong></div>
        
        <div class="display-label">Nombre de Piloto</div>
        <div class="display-field"><strong><%: Model.pilotos.nombre %></strong> </div>
        
        <div class="display-label">Nombre de Avion</div>
        <div class="display-field"><strong><%: Model.id_aviones %></strong></div>
            
            <div class="editor-label">
                Estado 
            </div>
            <div class="editor-field">
                <%: Html.CheckBoxFor(model => model.estado)%>
            </div>
            </div></div>
            <p>
         <input type="submit" class="btn btn-success" value="Guardar" />
         <a href="/pilotoavion" class = "btn btn-danger">Volver</a>
            </p>
        </fieldset>

    <% } %>

    <div>
        
    </div>

</asp:Content>

