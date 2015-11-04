<main>
	
	<section id="portfolio-post">
		<div class="container inner-top-md">
			
			<% if $FeaturedImage %>
				<div class="row">
					<div class="col-sm-12">
						<figure>
							<img src="$FeaturedImage.Link" alt="$FeaturedImage.Title">
						</figure>
					</div>
				</div>
			<% end_if %>
			
			<div class="row inner-top-xs reset-xs">
				
				<div class="col-sm-7 inner-top-xs inner-right-xs">
					<header class="text-justify">
						<h2>$Title</h2>
						$Content
					</header>
				</div>
				
				<div class="col-sm-4 col-sm-offset-1 outer-top-xs inner-left-xs border-left">
					<ul class="item-details">
						<li class="date">$PublishDate.Format('M d, Y')</li>

						<% if $Categories %>
							<li class="categories"><% loop $Categories %>$Title<% if not $Last %>,<% end_if %> <% end_loop %></li>
						<% end_if %>

						<% if $Client %>
							<li class="client">$Client</li>
						<% end_if %>

						<% if $WebsiteAddress %>
							<li class="url">
								<a href="$WebsiteAddress" target="_blank">$WebsiteAddress</a>
							</li>
						<% end_if %>
					</ul>
				</div>
				
			</div>
			
			<% if $Features %>
				<% loop $Features %>
					<div class="row inner-top <% if $Last %>inner-bottom<% end_if %>">
						
						<% if $Odd %>
							<div class="col-sm-6 inner-top-xs">
								<figure>
									<img src="$Image.Link" alt="$Image.Title">
								</figure>
							</div>

							<div class="col-sm-6 inner-top-xs inner-left-xs text-justify">
								<h3>$Title</h3>
								$Content
							</div>

						<% else %>
							<div class="col-sm-6 inner-top-xs inner-left-xs text-justify">
								<h3>$Title</h3>
								$Content
							</div>

							<div class="col-sm-6 inner-top-xs">
								<figure>
									<img src="$Image.Link" alt="$Image.Title">
								</figure>
							</div>
						<% end_if %>
												
					</div>
				<% end_loop %>
			<% end_if %>
			</div>
		</div>
		
	</section>
		
	<section id="share" class="light-bg">
		<div class="container">
			<div class="col-sm-2 reset-padding">
				<a href="javascript:void(0);" class="btn-share-md">
					<p class="name">Twitter</p>
					<i class="icon-s-twitter st_twitter_custom" displayText='Tweet'></i>
				</a>
			</div>
			<div class="col-sm-2 reset-padding">
				<a href="javascript:void(0);" class="btn-share-md">
					<p class="name">Facebook</p>
					<i class="icon-s-facebook st_facebook_custom" displayText='Facebook'></i>
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
	</section>

	<% if $ActionBoxTitle %>
		<section id="get-in-touch" class="tint-bg">
				<div class="container inner-sm">
					<div class="row">
						<div class="col-sm-10 center-block text-center">
							<h1 class="single-block">$ActionBoxTitle</h1>
							$ActionBoxContent

							<% if $ActionBoxRedirectPage %>
								<a href="$ActionBoxRedirectPage.Link" class="btn btn-large">$ActionBoxRedirectButtonText</a>
							<% end_if %>
						</div>
					</div>
				</div>
			</section>	
	<% end_if %>
</main>