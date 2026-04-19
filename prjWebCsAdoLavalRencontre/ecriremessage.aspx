<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ecriremessage.aspx.cs" Inherits="prjWebCsAdoLavalRencontre.ecriremessage" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style type="text/css">
    table{
        width:700px;
        background-color:aquamarine;
        font-weight:bold;
        border-radius:5px;
        margin:auto;
        border-spacing:4px;
        padding:4px;
    }
    .boite{
        width:560px;
        color:navy;
        font-weight:bold;
        border-radius:5px;
    }
    .bouton{
        width:200px;
        color:aquamarine;
        background-color:black;
        font-weight:bold;
        border-radius:5px;
    }

</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <h1 style="text-align:center">LAVAL - RONCOTRE<br />
     MIO Composer Nouveau Message
 </h1>
 <hr style="width:600px" />
            <table >
                <tr>
                    <td>Destinataire : </td>
                    <td>
                        <asp:DropDownList ID="cboDestinataires" CssClass="boite" runat="server" Font-Bold="True"></asp:DropDownList>
                    </td>

                </tr>

                <tr>
                    <td>Titre Message : </td>
                    <td>
                        <asp:TextBox ID="txtTitre" CssClass="boite" runat="server"></asp:TextBox>
                    </td>

                </tr>

                <tr>
                    <td colspan="2">Contenu Message  </td>
                </tr>

                 <tr>
                    <td colspan="2">
                        <asp:TextBox ID="txtMessage" CssClass="boite" runat="server" Font-Bold="True" ForeColor="Navy" Height="300px" TextMode="MultiLine" Width="680px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">
                    <asp:Button ID="btnEnvoyer" CssClass="bouton" OnClick="btnEnvoyer_Click" runat="server" Text="Envoyer Message" />
             
                   &nbsp;&nbsp;<asp:Button ID="btnAnnuler" CssClass="bouton" runat="server" OnClick="btnAnnuler_Click" Text="Annuler Message" />
                    
                    </td>
                   

                </tr>

                <tr>
                    <td colspan="2" style="text-align:center">
                        <asp:Label ID="lblErreur" runat="server" Font-Bold="True" ForeColor="Red" Width="100%" Text=""></asp:Label>
                    
                    </td>
                   

                </tr>



            </table>

        </div>
    </form>
</body>
</html>
