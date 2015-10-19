<footer class="dark-bg">
	<div class="container inner">
		<div class="row">

		<% loop $SiteConfig.FooterMenus %>
			<div class="col-md-2 col-sm-4 col-xs-12 inner links">
				<h4>$Title</h4>
				<% if $Pages %>
					<ul>
						<% loop $Pages %>
							<li><a href="$Page.Link" title="Go to $Page.Title.XML">$Page.MenuTitle.XML</a></li>
						<% end_loop %>
					</ul>
				<% end_if %>
			</div>
		<% end_loop %>

			<div class="col-md-4 col-sm-4 col-xs-12 inner">
				<h4>$SiteConfig.FooterContactTitle</h4>
				<p>$SiteConfig.FooterContactText</p>
				<ul class="contacts">
					<% if $SiteConfig.Address %>
						<li><i class="icon-location contact"></i> $SiteConfig.Address</li>
					<% end_if %>

					<% if $SiteConfig.ContactNumber %>
						<li><i class="icon-mobile contact"></i> $SiteConfig.ContactNumber</li>
					<% end_if %>

					<% if $SiteConfig.Email %>
						<li><a href="mailto:$SiteConfig.Email"><i class="icon-mail-1 contact"></i> $SiteConfig.Email</a></li>
					<% end_if %>
				</ul>
			</div>

			<div class="col-md-4 col-sm-4 col-xs-12 inner">
				<% if $SiteConfig.SocialMediaServices %>
					<ul class="social list-inline">
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
								</a>
							</li>
						<% end_loop %>
					</ul>	
				<% end_if %>
				<p>Conecus iure posae volor remped modis aut lor volor accabora incim resto explabo.</p>
				$MailChimpForm
			</div>
			
		</div>
	</div>
  
	<div class="footer-bottom">
		<div class="container inner">
			<p class="pull-left">$SiteConfig.CopyrightText</p>
		</div>
	</div>
</footer>