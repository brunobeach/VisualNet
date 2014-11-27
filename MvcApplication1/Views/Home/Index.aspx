<%@ Page Language="C#" MasterPageFile="~/Views/Shared/PMstr.Master" Inherits="System.Web.Mvc.ViewPage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Página principal
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    
    <div id="bg">
        <div class = "container12">
            <ul id = "scene">
                 <li class="layer" data-depth="0.00"></li>
            
            </ul>
        </div>
    
    </div>
    
    <script>

        var scene = document.getElementById('scene');
        var parallax = new parallax(scene);
    
    </script>
    
    
</asp:Content>
