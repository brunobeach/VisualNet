<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PMstr.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MvcApplication1.Models.pilotos>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Pilotos</h2>

    <table class ="table table-hover">
        <tr>
            
            <th>
                Codigo
            </th>
            <th>
                Nombre
            </th>
            <th>
                Apellidos
            </th>
            <th>
                Edad
            </th>
            <th>
                Grado
            </th>
            <th>Accion</th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            
            <td>
                <%: item.id_piloto %>
            </td>
            <td>
                <%: item.nombre %>
            </td>
            <td>
                <%: item.apellidos %>
            </td>
            <td>
                <%: item.edad %>
            </td>
            <td>
                <%: item.grado %>
            </td>
            <td>
                <%: Html.ActionLink("Editar", "Edit", new { id=item.id_piloto }) %> |
                <%: Html.ActionLink("Detalles", "Details", new { id=item.id_piloto })%> |
                <%: Html.ActionLink("Eliminar", "Delete", new { id=item.id_piloto })%>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <a href=/pilotos/Create class = "btn btn-info"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span> Ingresar Nuevo Piloto</a>
    </p>

</asp:Content>

