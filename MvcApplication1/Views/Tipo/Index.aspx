<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PMstr.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MvcApplication1.Models.tipo>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <table class ="table table-hover">
        <tr>
            <th></th>
            <th>
                ID del Tipo
            </th>
            <th>
                Nombre del Tipo
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.id_tipo }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.id_tipo })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.id_tipo })%>
            </td>
            <td>
                <%: item.id_tipo %>
            </td>
            <td>
                <%: item.nombre %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

