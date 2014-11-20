<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PMstr.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MvcApplication1.Models.piloto_avion>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <table>
        <tr>
            <th>
                Accion
            </th>
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
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Editar", "Edit", new { id=item.id_avion_piloto }) %> |
                <%: Html.ActionLink("Detalles", "Details", new { id=item.id_avion_piloto })%> |
                <%: Html.ActionLink("On/Off", "Delete", new { id=item.id_avion_piloto })%>
            </td>
            <td>
                <%: item.id_avion_piloto %>
            </td>
            <td>
                <%: item.pilotos.nombre %>
            </td>
            <td>
                <%: item.id_aviones %>
            </td>
            <td>
                <%: item.estado %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

