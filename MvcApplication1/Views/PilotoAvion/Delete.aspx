<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.piloto_avion>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Delete</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Fields</legend>
            
            <div class="display-label">id_avion_piloto</div>
        <div class="display-field"><%: Model.id_avion_piloto %></div>
        
        <div class="display-label">id_piloto</div>
        <div class="display-field"><%: Model.pilotos.nombre %></div>
        
        <div class="display-label">id_aviones</div>
        <div class="display-field"><%: Model.id_aviones %></div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.estado) %> 
            </div>
            <div class="editor-field">
                <%: Html.CheckBoxFor(model => model.estado)%>
            </div>
            
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

