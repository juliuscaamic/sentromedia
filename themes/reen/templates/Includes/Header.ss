<header>
	<div class="navbar">
		
		<div class="navbar-header">
			<div class="container">
				
				<ul class="info pull-left">
					<% if $SiteConfig.Email %>
						<li><a href="mailto:$SiteConfig.Email">
							<i class="icon-mail-1 contact"></i> $SiteConfig.Email</a>
						</li>
					<% end_if %>

					<% if $SiteConfig.ContactNumber %>
						<li>
							<i class="icon-mobile contact"></i> $SiteConfig.ContactNumber
						</li>
					<% end_if %>
				</ul>
				
				<% if $SiteConfig.SocialMediaServices %>
					<ul class="social pull-right">
						<% loop $SiteConfig.SocialMediaServices %>
							<li>
								<a href="$ExternalURL" title="$Title" target="_blank">
									<% if $SocialMediaServices == 'Facebook' %>
										<i class="icon-s-facebook"></i>
									<% end_if %>
									<% if $SocialMediaServices == 'Twitter' %>
										<i class="icon-s-twitter"></i>
									<% end_if %>
									<% if $SocialMediaServices == 'Google+' %>
										<i class="icon-s-gplus"></i>
									<% end_if %>
									<% if $SocialMediaServices == 'LinkedIn' %>
										<i class="icon-s-linkedin"></i>
									<% end_if %>
									<% if $SocialMediaServices == 'Pinterest' %>
										<i class="icon-s-pinterest"></i>
									<% end_if %>
									<% if $SocialMediaServices == 'Instagram' %>
										<i class="icon-s-instagrem"></i>
									<% end_if %>
									<% if $SocialMediaServices == 'Youtube' %>
										<i class="icon-s-youtube"></i>
									<% end_if %>
								</a>
							</li>
						<% end_loop %>
					</ul>
				<% end_if %>
				
				<a class="navbar-brand" href="/">
					<img src="$SiteConfig.Logo.Link" class="logo" alt="$SiteConfig.Title">
				</a>
				
				<a class="btn responsive-menu pull-right" data-toggle="collapse" data-target=".navbar-collapse"><i class='icon-menu-1'></i></a>
				
			</div>
		</div>
		
		<div class="yamm">
			<div class="navbar-collapse collapse">
				<div class="container">
					
					<a class="navbar-brand" href="/">
						<img src="$SiteConfig.Logo.Link" class="logo" alt="$SiteConfig.Title">
					</a>
					
					<% include Navigation %>
					
				</div><!-- /.container -->
			</div><!-- /.navbar-collapse -->
		</div><!-- /.yamm -->
	</div><!-- /.navbar -->
</header>
