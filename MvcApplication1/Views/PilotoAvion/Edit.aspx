<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PMstr.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.piloto_avion>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Edicion de Viajes</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend></legend>
            
            
            
            <div class="editor-label">
                Nombre del Piloto
            </div>
            <div class="editor-field">
                
                <%: Html.DropDownListFor(model => model.id_piloto, ViewData["pilotos"] as SelectList)%> 
                <%: Html.ValidationMessageFor(model => model.id_piloto) %>
            </div>
            
            <div class="editor-label">
                Nombre del Avion
            </div>
             <div class="editor-field">
                <%: Html.DropDownListFor(model => model.id_aviones, ViewData["aviones"] as SelectList)%>
                <%: Html.ValidationMessageFor(model => model.id_aviones) %>
            </div>
            <div class="editor-label">
                Estado
            </div>
            <div class="editor-field">
                
                <div><%if (Model.estado == true) 
               {%>
                          Activo
                     <% }
                        else
                      {%>
                      Desactivo
                     <%
                      }%>
               
               </div> 
            </div>
            
            <p >
               <div id= "sboton">
        
                    <input type="submit" class="btn btn-success" value="Guardar" />
                    <a href="/pilotoavion" class = "btn btn-danger">Volver</a>
 
        
                 </div> 
            </p>
        </fieldset>

    <% } %>

    

</asp:Content>

