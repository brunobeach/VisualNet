<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.piloto_avion>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Create</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Fields</legend>
            
            
            
            
            <div class="editor-label">
                Nombre del Piloto
            </div>
            <div class="editor-field">
                
                <%: Html.DropDownListFor(model => model.id_piloto, ViewData["pilotos"] as SelectList)%> 
                <%: Html.ValidationMessageFor(model => model.id_piloto) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.id_aviones) %>
            </div>
            <div class="editor-field">
                <%: Html.DropDownListFor(model => model.id_aviones, ViewData["aviones"] as SelectList)%>
                <%: Html.ValidationMessageFor(model => model.id_aviones) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.estado) %> 
            </div>
            <div class="editor-field">
                <%: Html.CheckBoxFor(model => model.estado)%>
            </div>
            
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

