<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="indexLavalRencontre.aspx.cs" Inherits="prjWebCsAdoLavalRencontre.indexLavalRencontre" %>

<!DOCTYPE html>
<html lang="en" ng-app="Lavalife">
  <head>
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="google-site-verification" content="n51P6yI5wya3UgdQvF4j95bxjlrvS3b9Wq5GyPyYpS4" />
    <title>Lavalife.com Online Dating Site & Mobile Apps – Where Singles Click®</title>
	<meta name="description" content="Match interests and make connections with Lavalife’s online dating site. Browse profiles, send messages and meet new people today. Try it free for 7 days!">
	
    <!-- Styles -->
    <link href="css/finalbuild.css" rel="stylesheet">
    <link href="css/style_changes.css" rel="stylesheet">
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

	
	
  </head>
  <body  ng-controller="SignupController as signup">
    <div class="home-header">
		<img href="indexLavalRencontre.aspx" src="images/spring/ll_logo_march2015.png" />
		
	</div>

    <form id="form1" runat="server" class="container container-full split">
    	<div class="row home-page-top split">    		
			<div class="col-sm-12 col-md-5 ll-voice-plug">
				
  			</div>
    		    		
    		<div class="col-sm-12 col-md-7 signup-home">
    <asp:Image  DescriptionUrl="images/spring/lavalife_regist_text_header_v1.jpg" ImageUrl="images/spring/lavalife_regist_text_header_v1.jpg" CssClass="main-img" runat="server" />
    			
    			
    			<p>    			
    				<span>Lavalife wants to put the excitement back in dating. We match your interests to help you break the ice and give you online dating tips along the way to make sure you have the best experience possible. Get started today.</span>
    			</p>    			
    			
    			<div class=" col-md-12 signup-login-holder">
    				<div class="col-md-1 col-sm-1 col-xs-0"></div>
    				
    				<div class="col-md-5 col-sm-5 col-xs-6">
                        <asp:Button ID="btnInsc" runat="server" ForeColor="white" Font-Bold="true" BackColor="Red" class="signup-home-btn" Text="Inscription" OnClick="btnInsc_Click" />
    					
    				</div>
    				
    				<div class="col-md-5 col-sm-5 col-xs-6">
        <asp:Button ID="btnConn" runat="server" ForeColor="Red" Font-Bold="true"  class="login-home-btn"  Text="Connection" OnClick="btnConn_Click" />
    					
    				</div>
    				
    				<div class="col-md-1 col-sm-1 col-xs-0"></div>					
    			</div>
				
				<div class="clearfix"></div>

    		</div>
		</div>
		<div class="clearfix"></div>
    </form>
	
	
	
	<div class="modal fade" id="oldBrowser" tabindex="-1" role="dialog" aria-labelledby="basicModal">
	  <div class="modal-dialog">
		<div class="modal-content">
		  <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h4 class="modal-title" style="text-align:center;"><h3 style="text-align:center; color:red;">Outdated Browser</h3> Hey there! Looks like you're using an outdated version of Internet Explorer. Please download an up-to-date browser compatible with the latest web technology. </h4>
		  </div>
		  <div class="modal-footer">
			<a style="margin:auto;" class="redBtn save" data-dismiss="modal">OKAY</a>
		  </div>
		</div>
	  </div>
	</div>
	
	<div class="scroll-to-top"></div>

  </body>
</html>
