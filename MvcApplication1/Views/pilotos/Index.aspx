<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PMstr.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MvcApplication1.Models.pilotos>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <table class ="table table-hover">
        <tr>
            <th></th>
            <th>
                id_piloto
            </th>
            <th>
                nombre
            </th>
            <th>
                apellidos
            </th>
            <th>
                edad
            </th>
            <th>
                grado
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.id_piloto }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.id_piloto })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.id_piloto })%>
            </td>
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
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

