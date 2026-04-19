<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accueilLavalRencontre.aspx.cs" Inherits="prjWebCsAdoLavalRencontre.accueilLavalRencontre" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page Accueil</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding-top: 50px;
            margin: 0;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 50px; /* Pour ajouter de l'espace au-dessus du conteneur des boutons */
        }
        .button-container {
            display: flex;
            justify-content: center;
            gap: 20px; /* Espace entre les boutons */
            margin-top: 30px; /* Espacement entre le titre et les boutons */
        }
        .asp-button {
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            color: white;
            cursor: pointer;
        }
        #btn_boite {
            background-color: orange;
        }
        #btn_recherche {
            background-color: green;
        }
        #btn_message {
            background-color: yellow;
            color: black; /* Couleur du texte pour le bouton jaune */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Page Accueil</h1>
            <div class="button-container">
                <asp:Button ID="btn_boite" runat="server" Text="Ma boite" CssClass="asp-button" OnClick="btn_boite_Click" />
                <asp:Button ID="btn_recherche" runat="server" Text="Matcher" CssClass="asp-button" OnClick="btn_recherche_Click"  />
                <asp:Button ID="btn_message" runat="server" Text="Écrire un nouveau message" CssClass="asp-button" OnClick="btn_message_Click" />
            </div>
        </div>
    </form>
</body>
</html>