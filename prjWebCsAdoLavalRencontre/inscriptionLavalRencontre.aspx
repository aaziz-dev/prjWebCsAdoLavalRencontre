<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inscriptionLavalRencontre.aspx.cs" Inherits="prjWebCsAdoLavalRencontre.inscriptionLavalRencontre" %>

<!DOCTYPE html>
<html lang="en" ng-app="Lavalife">
  <head>
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sign Up – Lavalife.com Online Dating Site & Mobile Apps – Where Singles Click®</title>
	<meta name="description" content="Sign up for Lavalife.com online dating and get a 7 day free trial. Browse unlimited profiles, send unlimited messages and start having fun." />
    <!-- Styles -->
    <link href="css/finalbuild.css" rel="stylesheet">
    <link href="css/bootstrap-tour.min.css" rel="stylesheet">
    <script src="js/angular.min.js"></script>
    <script src="js/directives.js"></script>
	<script src="js/angulartics.js"></script>
	<script src="js/angulartics-ga.js"></script>
	
    
	
	
  </head>
  
  <style>
	label {
		color:#757575;
		font-size:13px;
	}
	
	.label {
		color:#212121 !important;
		padding-left:0px !important;
		font-family:"Open Sans", sans-serif !important;
		font-size:14px !important;
		font-weight: 500 !important;
	}
	
	h2{
		margin-top: 12px;
		text-align: left;
		line-height: 25px;
		margin: 10px 0;
		color: #ff0000;
		font-weight: 300;
		padding-left: 50px;
		background-repeat: repeat-y;
	}
	
	.selectric{
		border-color:#e5e5e5 !important;
	}
	
	input {
		color:#212121;
		border-color:#e5e5e5 !important;
	}
	
	.devider-line{
		margin-top:30px;
	}
	
	.itemPanel{
		-webkit-box-shadow: 0px 2px 2px 1px #555;
		-moz-box-shadow: 0px 2px 2px 1px #555;
		box-shadow: 0px 2px 2px 1px #555;
		border:solid 1px #757575;
	}

	.crop-cancel{
		display:none;
	}
  </style>
  <body  ng-controller="SignupController as signup">
 
  	<!-- Wrap all page content here -->
	<div id="wrap">
    
	    <a href="./" id="logo-signup" class="visible-lg visible-md visible-sm"></a>
	    	    
		
	    
	    <section class="container" style="min-width:300px !important;">
	    	
	    	<div class="row register-holder">
	    		
	    		<div class="col-md-8 hidden-sm hidden-xs" style="position: relative; height: 100%; padding: 0px;">
	    
	    			<div class="backgrounds">
	<asp:Image ID="Image1" runat="server" CssClass="selected" ImageUrl="images/spring/ll_step1_img.jpg" DescriptionUrl="images/spring/ll_step1_img.jpg" />
						

	    			</div>	    				    			
	    		</div>
	    		
	    		<div class="col-md-4 col-sm-12" id="register">
	    			
					<div class="lil-logo">
						<asp:Image ID="Image2" runat="server" CssClass="selected" ImageUrl="images/landing/ll_logo_registration_circle_sml.png" DescriptionUrl="images/landing/ll_logo_registration_circle_sml.png" />
		
					</div>
	    			
	    			<div class="step-1">
	    				
	    				<h2>Create Your Profile <br /><span>AND RECEIVE A 7-DAY FREE TRIAL.</span></h2>
	    				
	    				<div class="step-content">
	    					
	    					<div class="errors-holder">&nbsp;</div>
		    				
							<form class="register-form"  runat="server">
								
								<div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-6" style="padding: 0px; padding-right: 5px;">
									<asp:Label ID="lblNom" runat="server" Text="Nom"></asp:Label>
									<asp:TextBox ID="txtNom" CssClass="txt" runat="server"></asp:TextBox>
									
								</div>
								
								<div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-6" style="padding: 0px;">
									<asp:Label ID="lblPrenom" runat="server" Text="Prenom"></asp:Label>
									<asp:TextBox ID="txtPrenom" CssClass="txt" runat="server"></asp:TextBox>
									
								</div>
								<div class="form-group">
									<label for="interested">Je suis</label>
									<asp:DropDownList ID="lstSexe" runat="server" CssClass="col-md-12 col-sm-12 col-xs-12">
									   <asp:ListItem Text="Select"  />
									   <asp:ListItem Value="Homme">Homme</asp:ListItem>
									   <asp:ListItem Value="Femme">Femme</asp:ListItem>
										<asp:ListItem Value="Autres">Autres</asp:ListItem>
										</asp:DropDownList>

				
  
									</div>
								
								<div class="form-group">
									<label for="interested">Pays</label>
									<asp:DropDownList ID="lstPays" runat="server" CssClass="col-md-12 col-sm-12 col-xs-12">
									   <asp:ListItem Text="Select"  />
									   <asp:ListItem Value="Canada">Canada</asp:ListItem>
									   <asp:ListItem Value="USA">USA</asp:ListItem>
									   <asp:ListItem Value="Mexic">Mexic</asp:ListItem>
									   <asp:ListItem Value="Europe">Europe</asp:ListItem>
										<asp:ListItem Value="Afrique">Afrique</asp:ListItem>
										<asp:ListItem Value="Autres">Autres</asp:ListItem>
										</asp:DropDownList>

				
  
									</div>
								
								<div class="form-group col-md-12 col-sm-12 col-xs-12" style="padding: 0px;">
									<asp:Label ID="lblNaiss"  runat="server" Text="Date de naissance"></asp:Label> </br>
									<asp:TextBox ID="txtDate" runat="server"  TextMode="Date" ></asp:TextBox>
									
								</div>
								<div class="form-group">
									<label for="interested">Ta categorie d'age</label>
										<asp:DropDownList ID="lstAge" runat="server" CssClass="col-md-12 col-sm-12 col-xs-12">
										   <asp:ListItem Text="Select"  />
										   <asp:ListItem Value="18_23">De 18 à 23 ans</asp:ListItem>
										   <asp:ListItem Value="23-30">De 23 à 30 ans</asp:ListItem>
											<asp:ListItem Value="30_45">De 30 à 45 ans</asp:ListItem>
											<asp:ListItem Value="45_65">De 45 à 65 ans</asp:ListItem>
										</asp:DropDownList>


  
								</div>
								
								
								<div class="form-group">
									<label for="interested">Ton niveau d'etude</label>
										<asp:DropDownList ID="lstNiveau" runat="server" CssClass="col-md-12 col-sm-12 col-xs-12">
										   <asp:ListItem Text="Select"  />
										   <asp:ListItem Value="Secondaire">Secondaire</asp:ListItem>
										   <asp:ListItem Value="College">College</asp:ListItem>
											<asp:ListItem Value="Universite">Université</asp:ListItem>
											<asp:ListItem Value="Autres">Autres</asp:ListItem>
										</asp:DropDownList>


  
								</div>
								
								

								<div class="form-group">
				<label for="interested">Je cherche</label>
				<asp:DropDownList ID="lstRaison" runat="server" CssClass="col-md-12 col-sm-12 col-xs-12">
				   <asp:ListItem Text="Select"  />
				   <asp:ListItem Value="Amour">Amour</asp:ListItem>
				   <asp:ListItem Value="Amitie">Amitié</asp:ListItem>
								<asp:ListItem Value="Autre interets">Autre interets</asp:ListItem>
								</asp:DropDownList>

				
  
				</div>
								<div class="form-group col-md-12 col-sm-12 col-xs-12" style="padding: 0px;">
									<asp:Label ID="lblTlphn"  runat="server" Text="Numero de telephone"></asp:Label> </br>
									<asp:TextBox ID="txtTlphn" runat="server"   ></asp:TextBox>
				
								</div>
								
								
								<div class="form-group col-md-12 col-sm-12 col-xs-12">
									<asp:Label ID="lblEmail"  runat="server" Text="Adresse E-mail"></asp:Label>
									<asp:TextBox ID="txtEmail" runat="server" CssClass="txt" TextMode="Email"></asp:TextBox>
								</div>
								<div class="form-group col-md-12 col-sm-12 col-xs-12">
									<asp:Label ID="lblEmailCheck"  runat="server" Text="Confirmation d'Adresse E-mail"></asp:Label>
									<asp:TextBox ID="txtEmailCheck" runat="server" CssClass="txt" TextMode="Email"></asp:TextBox>
				
								</div>
								
								<div class="form-group col-md-12 col-sm-12 col-xs-12">
											<asp:Label ID="lblPassword" runat="server" Text="Mot de Passe"></asp:Label>
									<asp:TextBox ID="txtMot2passe" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
									
								</div>
								<div class="form-group">
									<label for="interested">Je parle</label>
										<asp:DropDownList ID="lstLangue" runat="server" CssClass="col-md-12 col-sm-12 col-xs-12">
										   <asp:ListItem Text="Select"  />
										   <asp:ListItem Value="fr">Francais</asp:ListItem>
										   <asp:ListItem Value="en">Englais</asp:ListItem>
											<asp:ListItem Value="Autre">Autres</asp:ListItem>
										</asp:DropDownList>


  
								</div>
								
								<div class="form-group">
									<label for="interested">Ta situation</label>
										<asp:DropDownList ID="lstSituation" runat="server" CssClass="col-md-12 col-sm-12 col-xs-12">
										   <asp:ListItem Text="Select"  />
										   <asp:ListItem Value="Celebataire">Celebataire</asp:ListItem>
										   <asp:ListItem Value="Marie">Marié</asp:ListItem>
											<asp:ListItem Value="Autres">Autres</asp:ListItem>
										</asp:DropDownList>


  
								</div>
								
								<asp:Button ID="btnInscr" CssClass="sign-up"  BackColor="Red" ForeColor="White"  Font-Bold="true" runat="server" Text="S'inscrire" OnClick="btnInscr_Click" />
								<div>
									<asp:Label ID="lblErreur" Font-Bold="true" ForeColor="Red" runat="server"></asp:Label>
								</div>

							</form>
							
							
							

							<div class="devider-line"></div>
							
							<div class="sign-up-facebook">
								<p>Already a member? <a href="connectionLavalRencontre.aspx">Se connecter	.</a></p>
							</div>
						
						</div>
						
	    			</div>
	    			
	    			
	    			
	    			
	    			














	    			
	    			
	    </section>
		
	</div>
	
	
	
	<div id="loader"></div>
	
	<div class="modal"  data-backdrop="static" id="location-modal"></div>
	
	<div id="fb-root"></div>
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.0/jquery-ui.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/app.js"></script>
    <script src="js/controllers.js"></script>
    <script src="js/functions.js"></script>
          
    
    
    <script src="https://mpsnare.iesnare.com/snare.js"></script>
    <script src="js/cj-lavalife.js"></script>
  </body>
</html>
