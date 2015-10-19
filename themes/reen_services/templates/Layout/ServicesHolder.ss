<main>
	<section id="services">
		<div class="container inner-top inner-bottom-sm">
			
			<div class="row">
				<div class="col-md-8 col-sm-9 center-block text-center">
					<header>
						<h1>$Title</h1>
						$Content
					</header>
				</div>
			</div>
			
			<div class="row inner-top-sm">
				<% loop $Children %>
					<div class="col-sm-2">
						<div class="icon pull-right">
							<img src="$FeaturedImage.Link" alt="$FeaturedImage.Title" />
						</div>
					</div>

					<div class="col-sm-4 inner-bottom-sm">
						<h2>$FeaturedTitle</h2>
						$FeaturedContent
						<a href="$Link" title="Go to $Title page" class="btn btn-md">Learn More</a>
					</div>

				<% end_loop %>
								
			</div>
		</div>
	</section>	
</main>