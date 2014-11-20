<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.piloto_avion>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Details</h2>

    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">id_avion_piloto</div>
        <div class="display-field"><%: Model.id_avion_piloto %></div>
        
        <div class="display-label">id_piloto</div>
        <div class="display-field"><%: Model.id_piloto %></div>
        
        <div class="display-label">id_aviones</div>
        <div class="display-field"><%: Model.id_aviones %></div>
        
        <div class="display-label">estado</div>
        <div class="display-field"><%: Model.estado %></div>
        
    </fieldset>
    <p>

        <%: Html.ActionLink("Edit", "Edit", new { id=Model.id_avion_piloto }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>

