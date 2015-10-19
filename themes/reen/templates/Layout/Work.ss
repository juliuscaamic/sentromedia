<main>
	
	<section id="portfolio">
		
		<div class="container inner">
			<div class="row">
				<div class="col-md-8 col-sm-9 center-block text-center">
					<header>
						$Content
					</header>
				</div>
			</div>
		</div>
		
		<div class="portfolio">
			
			<div class="container inner-bottom-xs">
				<% if $Categories %>
					<ul class="filter text-center">
						<li><a href="#" data-filter="*" class="active">All</a></li>
						<% loop $Categories %>
							<li><a href="#" data-filter=".$CodeIdentifier">$Title</a></li>
						<% end_loop %>
					</ul>
				<% end_if %>
			</div>
			
			<% if $PaginatedList.Exists %>
				<ul class="items fullscreen">
					
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
	</section>
	
</main>