<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PMstr.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MvcApplication1.Models.piloto_avion>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2> Control de Viajes</h2>

    <table class ="table table-hover">
        <tr>
            
            <th>
                Codigo Viaje
            </th>
            <th>
                Piloto
            </th>
            <th>
                Avion
            </th>
            <th>
                Estado
            </th>
            <th>
                Accion
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            
            <td>
                <%: item.id_avion_piloto %>
            </td>
            <td>
                <%: item.pilotos.nombre %>
            </td>
            <td>
                
                <%: item.id_aviones  %>
            </td>
            <td>
               <div><%if (item.estado == true) 
               {%>
                          Activo
                     <% }
                        else
                      {%>
                      Desactivo
                     <%
                      }%>
               
               </div> 
            </td>
            <td>
                <%: Html.ActionLink("Editar", "Edit", new { id=item.id_avion_piloto }) %> |
                <%: Html.ActionLink("Detalles", "Details", new { id=item.id_avion_piloto })%> |
                <%: Html.ActionLink("On/Off", "Delete", new { id=item.id_avion_piloto })%>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <a href=/pilotoavion/Create class = "btn btn-info"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span> Ingresar Nuevo Viaje</a>
    </p>

</asp:Content>

