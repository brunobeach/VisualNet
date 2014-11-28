<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PMstr.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MvcApplication1.Models.aviones>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <table>
        <tr>
            <th></th>
            <th>
                id_aviones
            </th>
            <th>
                nombre
            </th>
            <th>
                marca
            </th>
            <th>
                asi1
            </th>
            <th>
                asi2
            </th>
            <th>
                asi3
            </th>
            <th>
                comb
            </th>
            <th>
                id_tipo
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.id_aviones }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.id_aviones })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.id_aviones })%>
            </td>
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
                <%: item.id_tipo %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

