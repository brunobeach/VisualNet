<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PMstr.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.tipo>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2></h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend></legend>

            <div class="panel panel-info">
           <div class="panel-heading">Edicion de Tipo <strong><%: Model.id_tipo %></strong></div>
           <div class="panel-body">
            
            
            
            <div class="editor-label">
                Nombre
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.nombre) %>
                <%: Html.ValidationMessageFor(model => model.nombre) %>
            </div>
            </div></div>
            <p>
                <input type="submit" class="btn btn-success" value="Guardar" />
                <a href="/tipo" class = "btn btn-danger">Volver</a>
            </p>
        </fieldset>

    <% } %>

    

</asp:Content>

