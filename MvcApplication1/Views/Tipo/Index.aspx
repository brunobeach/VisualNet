<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PMstr.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MvcApplication1.Models.tipo>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Tipos</h2>

    <table class ="table table-hover">
        <tr>
            
            <th>
                ID del Tipo
            </th>
            <th>
                Nombre del Tipo
            </th>
            <th>Accion</th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            
            <td>
                <%: item.id_tipo %>
            </td>
            <td>
                <%: item.nombre %>
            </td>
            <td>
                <%: Html.ActionLink("Editar", "Edit", new { id=item.id_tipo }) %> |
                <%: Html.ActionLink("Detalles", "Details", new { id=item.id_tipo })%> |
                <%: Html.ActionLink("Eliminar", "Delete", new { id=item.id_tipo })%>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <a href=/tipo/Create class = "btn btn-info"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span> Ingresar Nuevo Tipo</a>
    </p>

</asp:Content>

