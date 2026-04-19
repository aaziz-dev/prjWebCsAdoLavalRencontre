
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="connectionLavalRencontre.aspx.cs" Inherits="prjWebCsAdoLavalRencontre.connectionLavalRencontre" %>
<!DOCTYPE html>
<html lang="en" ng-app="Lavalife">
  <head>
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Log In – Lavalife.com Online Dating Site & Mobile Apps – Where Singles Click®</title>
	<meta name="description" content="Welcome back to Lavalife.com! Log in to your online dating profile to see your messages, likes and other notifications now." >
	<meta name="apple-itunes-app" content="app-id=888082770">
    <!-- Styles -->
    <link href="css/finalbuild.css" rel="stylesheet">
    <link href="css/bootstrap-tour.min.css" rel="stylesheet">
    <script src="js/angular.min.js"></script>
    <script src="js/directives.js"></script>
	<script src="js/angulartics.js"></script>
	<script src="js/angulartics-ga.js"></script>
	
    
    
	
  </head>
  <body  ng-controller="LoginController as login">
   	
   
   	<div id="wrap" >
		<div class="mobile-dl">
			<a href=""><img /></a>
		</div>
   	
   		<a href="./" id="logo-signup" class="visible-lg visible-md visible-sm"></a>
   			    	    
		
   	
	    <form id="form1" runat="server" class="container" style="min-width:300px !important;">
	    	
	    	<div class="row login-holder">
	    		
	    		<div class="col-lg-8r col-md-8 col-sm-8 hidden-xs login-left">
	    		
	    		</div>
	    		    		
	    		<div class="col-lg-4 col-md-4 col-sm-12" id="login">
	    				<div class="lil-logo">
	<asp:Image ID="Image1" runat="server"  DescriptionUrl="images/landing/ll_logo_registration_circle_sml.png" ImageUrl="images/landing/ll_logo_registration_circle_sml.png" />
							
	    				</div>
						
	    				<h2>Log in <br /><span>Welcome back to lavalife!</h2>
	    				
	    				<div class="step-content">
	    					
	    					<div class="errors-holder">&nbsp;</div>
	    					
							<form class="login-form" role="form">
								
								<div class="form-group">
									<asp:Label ID="lblEmail" runat="server" Text="Adresse E-mail"></asp:Label>
									<asp:TextBox ID="txtEmail" CssClass="txt" runat="server" TextMode="Email"></asp:TextBox>
									
								</div>
								
								<div class="form-group">
									<asp:Label ID="lblPassword" runat="server" Text="Mot de Passe"><span style="display: block; float: right;"></span></asp:Label>
									<asp:TextBox ID="txtMot2passe" CssClass="txt" runat="server" TextMode="Password"></asp:TextBox>
									
								</div>
								<div class="sign-up" style="margin-top:80px;" >
									<asp:Button ID="btnConnection" runat="server" BackColor="Red" ForeColor="White" Font-Bold="true" Text="Se connecter" OnClick="btnConnection_Click" />

								</div>
								<div>
									<asp:Label ID="lblErreur" Font-Bold="true" ForeColor="Red" runat="server"></asp:Label>
								</div>
								
								
							</form>
							
							
							
							<div class="devider-line"></div>
							
							<div id="" style="text-align: center; margin-top: 25px; margin-bottom:25px;color:#757575;">Not a member yet? <strong><a href="inscriptionLavalRencontre.aspx">Sign Up.</a></strong></div>
						
						</div>
	
	    		</div>
			
			</div>
			
	    </form>
	
	</div>
	
	
	
	<div id="fb-root"></div>
	
	<div class="modal fade" id="reactivate-modal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true" style="display: none;">
		<div class="modal-dialog big">
			<div class="modal-content standard-popup">
				<h3 style="color:#212121;font-weight:600;">Reactivate My Account</h4>
				<div class="row">		
					<div class="col-xs-12">
						<p>Your account is currently deactivated. If you wish to restore your profile and return to Lavalife.com now, please click the “Reactivate” button below. We’d be thrilled to welcome you back!</p>
					</div>
				</div>
				
				<div class="row">
					<div class="col-xs-1"></div>
					<div class="col-xs-10">
						<div class="col-xs-4"></div>
						<div class="col-xs-4"><a ng-click="reactivateAccount()" class="redBtn">REACTIVATE</a></div>
						<div class="col-xs-4"></div>
					</div>
					<div class="col-xs-1"></div>
				</div>
			</div>
		</div>
	</div>
  
    
  
  	
  	<script src="https://mpsnare.iesnare.com/snare.js"></script>
  	
  </body>
</html>
