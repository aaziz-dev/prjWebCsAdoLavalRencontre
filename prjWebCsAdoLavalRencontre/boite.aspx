<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="boite.aspx.cs" Inherits="prjWebCsAdoLavalRencontre.boite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <h1 class="centrer">
                  LAVAL - RENCONTRE - AZIZ'S EDITION
            </h1>
            
            <asp:Label ID="lblMessage" runat="server" font-Bold="true" ForeColor="Brown"></asp:Label>
            <br />

<asp:Table ID="tabMessages" Font-Bold="true" Width="900px" GridLines="both"  runat="server">
   
</asp:Table>
            <br />
<asp:Button ID="btnComposer" runat="server" Text="Composer Un Nouveau Message" BackColor="LightGreen" OnClick="btnComposer_Click" ForeColor="Brown" Font-Bold="true" Width="300px" />
        </div>
    </form>
</body>
</html>
