<!DOCTYPE html>
<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
<head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)

	<!-- HTML5 elements and media queries Support for IE8 : HTML5 shim and Respond.js -->
	<!--[if lt IE 9]>
		<script src="$ThemeDir/js/html5shiv.js"></script>
		<script src="$ThemeDir/js/respond.min.js"></script>
	<![endif]-->

</head>
<body style="background:#FFF;">
	
	<header>
		<div class="container inner-xs">
			<div class="row">
				<div class="col-md-12">
					<a class="navbar-brand" href="/">
						<img src="$SiteConfig.Logo.Link" class="logo" alt="$SiteConfig.Title">
					</a>
				</div>				
			</div>
		</div>
	</header>

	<main>
		<section id="product" style="color:#424e5a; font-size:16px; line-height:1.5em;">
			<div class="container inner-xs">
				<div class="row">
					<div class="col-md-7 inner-top-xs inner-right-sm">
						<h2 class="outer-bottom-xs">$Title</h2>

						<% if $FeaturedImage %>
							<p style="float: right; margin: 0 0 0 40px;">
								<img src="$FeaturedImage.Link" alt="$FeaturedImage.Title">
							</p>
						<% end_if %>

						$Content
					</div>
					<div class="col-sm-5 inner-top-xs inner-left-sm inner-right-sm inner-bottom-sm light-bg">
						<% if $FormTitle %>
							<h2 class="outer-bottom-xs">$FormTitle</h2>
						<% end_if %>

						<% if $FormDescription %>
							<p>$FormDescription</p>
						<% end_if %>

						$Form
					</div>
				</div>
				<hr>
				<div id="share" class="row">
					<div class="container">
						<div class="col-sm-2 reset-padding">
							<a href="javascript:void(0);" class="btn-share-md">
								<p class="name">Facebook</p>
								<i class="icon-s-facebook st_facebook_custom" displayText='Facebook'></i>
							</a>
						</div>
						
						<div class="col-sm-2 reset-padding">
							<a href="javascript:void(0);" class="btn-share-md">
								<p class="name">Twitter</p>
								<i class="icon-s-twitter st_twitter_custom" displayText='Tweet'></i>
							</a>
						</div>
						
						<div class="col-sm-2 reset-padding">
							<a href="javascript:void(0);" class="btn-share-md">
								<p class="name">LinkedIn</p>
								<i class="icon-s-linkedin st_linkedin_custom" displayText='LinkedIn'></i>
							</a>
						</div>

						<div class="col-sm-2 reset-padding">
							<a href="javascript:void(0);" class="btn-share-md">
								<p class="name">Google +</p>
								<i class="icon-s-gplus st_googleplus_custom" displayText='Google+'></i>
							</a>
						</div>

						<div class="col-sm-2 reset-padding">
							<a href="javascript:void(0);" class="btn-share-md">
								<p class="name">Pinterest</p>
								<i class="icon-pinterest-squared st_pinterest_custom" displayText='Pinterest'></i>
							</a>
						</div>						

						<div class="col-sm-2 reset-padding">
							<a href="javascript:void(0);" class="btn-share-md">
								<p class="name">Mail</p>
								<i class="icon-mail-alt st_email_custom" displayText='Mail'></i>
							</a>
						</div>	
					</div>
				</div>
			</div>
		</section>		
	</main>

</body>
</html>
