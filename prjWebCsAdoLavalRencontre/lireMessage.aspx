<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lireMessage.aspx.cs" Inherits="prjWebCsAdoLavalRencontre.lireMessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h1 style="text-align:center">TECCART - OMNIVOX<br />
    MIO Lecture De Message
</h1>
<hr style="width:600px" />
<p>
    <asp:Label ID="lblMessage" runat="server" Font-Bold="true" Text="Label"></asp:Label>
</p>
<hr style="width:600px" />
            <asp:Button ID="btnRetour" runat="server" Text="Retourner a la Boite des Messages" OnClick="btnRetour_Click" />
        </div>
    </form>
</body>
</html>
