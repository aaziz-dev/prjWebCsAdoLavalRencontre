<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fitrler.aspx.cs" Inherits="prjWebCsAdoLavalRencontre.fitrler" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page avec Navigation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .navbar {
            background-color: #f8f9fa;
            padding: 10px;
            border-bottom: 1px solid #e0e0e0;
        }
        .navbar form {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
        }
        .navbar select {
            padding: 5px;
            font-size: 14px;
        }
        .navbar button {
            padding: 5px 15px;
            font-size: 14px;
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
        }
        .navbar button:hover {
            background-color: #0056b3;
        }
        .container {
            padding: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="navbar">
            <form id="navbarForm" >
                <asp:DropDownList ID="lstPays" runat="server" CssClass="col-md-12 col-sm-12 col-xs-12">
               <asp:ListItem Text="Pays"  />
               <asp:ListItem Value="Canada">Canada</asp:ListItem>
               <asp:ListItem Value="USA">USA</asp:ListItem>
               <asp:ListItem Value="Mexic">Mexic</asp:ListItem>
               <asp:ListItem Value="Europe">Europe</asp:ListItem>
				<asp:ListItem Value="Afrique">Afrique</asp:ListItem>
				<asp:ListItem Value="Autres">Autres</asp:ListItem>
				</asp:DropDownList>
				<asp:DropDownList ID="lstAge" runat="server" CssClass="col-md-12 col-sm-12 col-xs-12">
					<asp:ListItem Text="Age"  />
					<asp:ListItem Value="18_23">De 18 à 23 ans</asp:ListItem>
					<asp:ListItem Value="23-30">De 23 à 30 ans</asp:ListItem>
					<asp:ListItem Value="30_45">De 30 à 45 ans</asp:ListItem>
					<asp:ListItem Value="45_65">De 45 à 65 ans</asp:ListItem>
				</asp:DropDownList>
                <asp:DropDownList ID="lstSexe" runat="server" CssClass="col-md-12 col-sm-12 col-xs-12">
                <asp:ListItem Text="Genre"  />
                <asp:ListItem Value="Homme">Homme</asp:ListItem>
                <asp:ListItem Value="Femme">Femme</asp:ListItem>
				<asp:ListItem Value="Autres">Autres</asp:ListItem>
				</asp:DropDownList>
                <asp:DropDownList ID="lstRaison" runat="server" CssClass="col-md-12 col-sm-12 col-xs-12">
   <asp:ListItem Text="Raison"  />
   <asp:ListItem Value="Amour">Amour</asp:ListItem>
   <asp:ListItem Value="Amitie">Amitié</asp:ListItem>
							<asp:ListItem Value="Autre interets">Autre interets</asp:ListItem>
							</asp:DropDownList>
                <asp:DropDownList ID="lstNiveau" runat="server" CssClass="col-md-12 col-sm-12 col-xs-12">
                <asp:ListItem Text="Niveau d'etude"  />
                <asp:ListItem Value="Secondaire">Secondaire</asp:ListItem>
                <asp:ListItem Value="College">College</asp:ListItem>
				<asp:ListItem Value="Universite">Université</asp:ListItem>
				<asp:ListItem Value="Autres">Autres</asp:ListItem>
</asp:DropDownList>
                <asp:DropDownList ID="lstSituation" runat="server" CssClass="col-md-12 col-sm-12 col-xs-12">
   <asp:ListItem Text="Situation"  />
   <asp:ListItem Value="Celebataire">Celebataire</asp:ListItem>
   <asp:ListItem Value="Marie">Marié</asp:ListItem>
				<asp:ListItem Value="Autres">Autres</asp:ListItem>
</asp:DropDownList>
                <asp:DropDownList ID="lstLangue" runat="server" CssClass="col-md-12 col-sm-12 col-xs-12">
   <asp:ListItem Text="Langue"  />
   <asp:ListItem Value="fr">Francais</asp:ListItem>
   <asp:ListItem Value="en">Englais</asp:ListItem>
				<asp:ListItem Value="Autre">Autres</asp:ListItem>
</asp:DropDownList>
                <asp:Button ID="btnSearch" runat="server" Text="Rechercher" OnClick="btnSearch_Click"/>
            </form>
        </div>
        <div class="container">
                   <div>
          <asp:Table ID="tabMembres" Font-Bold="true" Width="900px" GridLines="both"  runat="server">
   
</asp:Table>
        </div>
            </div>
    </form>
</body>
</html>