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
					<a href="/">
						<img src="themes/reen_datacapture/images/datacapture-logo.png" class="logo" alt="Sentro Media Logo">
					</a>
				</div>				
			</div>
		</div>
	</header>

	$Layout

</body>
</html>
