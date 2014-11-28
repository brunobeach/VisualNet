<%@ Page Language="C#" MasterPageFile="~/Views/Shared/PMstr2.Master" Inherits="System.Web.Mvc.ViewPage" %>



    
    


<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Página principal
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Content/custom.css" rel="stylesheet" type="text/css" />
    
    
    <div id="bg">
        <div class = "container12">
            <ul id = "scene">
            <li class="layer" data-depth="0.00"><img src="imagen/cielo.png"></li>
            <li class="layer" data-depth="0.05"><img src="imagen/cielo.png"></li>
            
			<li class="layer" data-depth="0.80"><img src="imagen/layer2.png"></li>
			<li class="layer" data-depth="0.60"><img src="imagen/layer3.png"></li>
			<li class="layer" data-depth="0.40"><img src="imagen/layer4.png"></li>
			<li class="layer" data-depth="0.05"><img src="imagen/layer5.png"></li>
			<li class="layer" data-depth="0.00"><img src="imagen/layer7.png"></li>
            
            </ul>
        </div>
    
    </div>
    <script src="../../Scripts/parallax.js" type="text/javascript"></script>
    <script>

        // Pretty simple huh?
        var scene = document.getElementById('scene');
        var parallax = new Parallax(scene);

	</script>
    
    
</asp:Content>
