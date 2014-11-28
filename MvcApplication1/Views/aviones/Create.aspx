<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PMstr.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.aviones>" %>

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
                <%: Html.LabelFor(model => model.id_aviones) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.id_aviones) %>
                <%: Html.ValidationMessageFor(model => model.id_aviones) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.nombre) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.nombre) %>
                <%: Html.ValidationMessageFor(model => model.nombre) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.marca) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.marca) %>
                <%: Html.ValidationMessageFor(model => model.marca) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.asi1) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.asi1) %>
                <%: Html.ValidationMessageFor(model => model.asi1) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.asi2) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.asi2) %>
                <%: Html.ValidationMessageFor(model => model.asi2) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.asi3) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.asi3) %>
                <%: Html.ValidationMessageFor(model => model.asi3) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.comb) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.comb) %>
                <%: Html.ValidationMessageFor(model => model.comb) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.id_tipo) %>
            </div>
            <div class="editor-field">
                <%: Html.DropDownListFor(model => model.id_tipo, ViewData["tipo"] as SelectList)%>
                <%: Html.ValidationMessageFor(model => model.id_tipo) %>
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

