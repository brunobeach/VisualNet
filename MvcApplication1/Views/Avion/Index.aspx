<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PMstr.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MvcApplication1.Models.aviones>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Aviones</h2>

    <table class ="table table-hover">
        <tr>
            
            <th>
                Codigo
            </th>
            <th>
                Nombre
            </th>
            <th>
                Marca
            </th>
            <th>
                First Class
            </th>
            <th>
                Economic Class
            </th>
            <th>
                Tourist Class
            </th>
            <th>
                Combustible
            </th>
            <th>
                Tipo
            </th>
            <th>Accion</th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            
            <td>
                <%: item.id_aviones %>
            </td>
            <td>
                <%: item.nombre %>
            </td>
            <td>
                <%: item.marca %>
            </td>
            <td>
                <%: item.asi1 %>
            </td>
            <td>
                <%: item.asi2 %>
            </td>
            <td>
                <%: item.asi3 %>
            </td>
            <td>
                <%: item.comb %>
            </td>
            <td>
                <%: item.tipo.nombre %>
            </td>
            <td>
                <%: Html.ActionLink("Editar", "Edit", new { id=item.id_aviones }) %> | 
                <%: Html.ActionLink("Detalles", "Details", new { id=item.id_aviones })%> |
                <%: Html.ActionLink("Eliminar", "Delete", new { id=item.id_aviones })%>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <a href=/avion/Create class = "btn btn-info">Ingresar Nuevo Avion</a>
    </p>

</asp:Content>

