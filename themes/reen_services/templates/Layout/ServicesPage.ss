<main>
	<section id="hero" class="light-bg img-bg-bottom img-bg-softer" style="background-image: url(assets/images/art/slider03.jpg);">
		<div class="container inner">
			
			<div class="row">
				<div class="col-md-8 col-sm-9">
					<header>
						<h1>$Title</h1>
						$Content
					</header>
				</div>
			</div>
		</div>
	</section>

	<section id="product">
		<div class="container inner">
			<% loop $Features %>			
				<div class="row inner-top-md">
					
					<div class="col-sm-6 <% if $Odd %>inner-right-xs text-right<% else %>col-sm-push-6 inner-left-xs<% end_if %>">
						<figure><img src="$Image.Link" alt="$FeaturedImage.Title"></figure>
					</div>
					
					<div class="col-sm-6 text-justify <% if $Odd %>inner-top-xs inner-left-xs<% else %>col-sm-pull-6 inner-top-xs inner-right-xs<% end_if %>">
						<h2>$Title</h2>
						$Content
					</div>
					
				</div>
			<% end_loop %>
		</div>
	</section>

</main>