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