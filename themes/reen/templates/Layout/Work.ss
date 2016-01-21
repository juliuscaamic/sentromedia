<main>

	<section id="dark-background" class="dark-bg img-bg-soft img-bg">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-sm-9 inner">
					<header>
						<h1>$Title</h1>
						$Content
					</header>
				</div>
			</div>
		</div>
	</section>

	<% if $Blocks %>
		<% loop $Blocks %>
			<% if $ClassName == 'BlockCallOut' %>
				<section class="tint-bg">
					<div class="container inner-xs">
						<div class="row">
							<div class="col-sm-12 center-block text-center">
								<h3 class="single-block">$Title 
									<% if $RedirectPage %>
										<a href="$RedirectPage.Link" class="btn btn-large btn-bordered">
											$RedirectButtonText
										</a>
									<% end_if %>
								</h3>
							</div>
						</div>
					</div>
				</section>
			<% end_if %>

			<% if $ClassName == 'BlockTwitter' %>
				<section id="sliders" class="light-bg img-bg-softer" <% if $BackgroundImage %>style="background-image: url($BackgroundImage.Link);<% end_if %>">
					<div class="container">
						<div class="row">
							<div class="col-md-12 inner-top-xs inner-bottom-xs">

								<h1 class="text-center"><i class="icon-s-twitter"></i></h1>
								<% if $Top.LatestTwitterFeeds %>
									<div id="owl-work" class="owl-carousel owl-inner-nav owl-theme">
									<% loop $Top.LatestTwitterFeeds %>								
										<div class="item">
											<label>
												$Date
											</label>
											<p>$Content</p>
											<a href="http://www.twitter.com/{$User}" target="_blank" class="User">@$User</a>
										</div>
									<% end_loop %>
									</div>
								<% end_if %>
							</div>
						</div>
					</div>
				</section>			
			<% end_if %>			
		<% end_loop %>
	<% end_if %>	

	<section id="portfolio" class="outer-top">
		<div class="portfolio">
			
			<% if $Categories %>
				<div class="container inner-bottom-xs">
					<ul class="filter text-center">
						<li><a href="#" data-filter="*" class="active">All</a></li>
						<% loop $Categories %>
							<li><a href="#" data-filter=".$CodeIdentifier">$Title</a></li>
						<% end_loop %>
					</ul>
				</div>
			<% end_if %>

			<div class="container inner-bottom">
				<div class="row">
					<div class="col-sm-12 portfolio">
						<% if $PaginatedList.Exists %>
							<ul class="items col-3">
								
								<% loop $PaginatedList %>
									<li class="item thumb <% if $Categories %><% loop $Categories %>$CodeIdentifier <% end_loop %><% end_if %>">
										<a href="$Link" title="Go to $Title page">
											<figure>
												<figcaption class="text-overlay">
													<div class="info">
														<h4>$Title</h4>
													</div>
												</figcaption>
												<img src="$FeaturedImage.CroppedImage(570, 390).Link" alt="$FeaturedImage.Title">
											</figure>
										</a>
									</li>
								<% end_loop %>
							</ul>
						<% end_if %>
					</div>
				</div>
			</div>
			
		</div>
	</section>
	
</main>