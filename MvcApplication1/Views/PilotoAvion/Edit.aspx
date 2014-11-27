<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PMstr.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.piloto_avion>" %>

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
                <div class="panel-heading">Edicion de Viaje</div>
                <div class="panel-body">
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
                      <strong>Activo!</strong>   
                     <% }
                        else
                      {%>
                      <strong>Desactivo!</strong>  
                     <%
                      }%>
               
               </div> 
            </div>
            </div></div>



            <p >
               <div id= "sboton">
        
                    <input type="submit" class="btn btn-success" value="Guardar" />
                    <a href="/pilotoavion" class = "btn btn-danger">Volver</a>
 
        
                 </div> 
                 <div class="alert alert-warning alert-dismissible" role="alert">
                  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Cerrar</span></button>
                  <strong>Cuidado!</strong> Asegurate de haber editado bien el viaje.
                </div>
            </p>
        </fieldset>

    <% } %>

    

</asp:Content>

