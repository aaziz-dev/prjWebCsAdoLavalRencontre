<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rechercheLavalRencontre.aspx.cs" Inherits="prjWebCsAdoLavalRencontre.rechercheLavalRencontre" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
               
            <h1 style="text-align:center">LAVAL - RENCONTRE<br />
    MEMBRES</h1>
<hr style="width:600px" />
        <div>
          <asp:Table ID="tabMembres" Font-Bold="true" Width="900px" GridLines="both"  runat="server">
   
</asp:Table>
        </div>
        <asp:Button ID="filtrer" runat="server" Text="Recherche avec filtrage" OnClick="filtrer_Click" />
    </form>
</body>
</html>
