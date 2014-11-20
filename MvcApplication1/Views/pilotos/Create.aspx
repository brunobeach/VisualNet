<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.pilotos>" %>

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
                <%: Html.LabelFor(model => model.id_piloto) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.id_piloto) %>
                <%: Html.ValidationMessageFor(model => model.id_piloto) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.nombre) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.nombre) %>
                <%: Html.ValidationMessageFor(model => model.nombre) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.apellidos) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.apellidos) %>
                <%: Html.ValidationMessageFor(model => model.apellidos) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.edad) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.edad) %>
                <%: Html.ValidationMessageFor(model => model.edad) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.grado) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.grado) %>
                <%: Html.ValidationMessageFor(model => model.grado) %>
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

