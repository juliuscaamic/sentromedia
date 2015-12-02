<main>
	<section id="dark-background" class="dark-bg">
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

	<section id="services">
		<div class="container inner-top inner-bottom-sm">
			
			<div class="row inner-top-sm">
				<% loop $Children %>
					<div class="col-sm-2">
						<div class="icon pull-right">
							<a href="$Link" title="Go to $Title.XML page">
								<img src="$FeaturedImage.Link" alt="$FeaturedImage.Title" />
							</a>
						</div>
					</div>

					<div class="col-sm-4 inner-bottom-sm">
						<h2><a href="$Link" title="Go to $Title.XML page">$FeaturedTitle</a></h2>
						$FeaturedContent
						<a href="$Link" title="Go to $Title page" class="txt-btn">Learn More</a>
					</div>

				<% end_loop %>
								
			</div>
		</div>
	</section>

	<% if $Blocks %>
		<% loop $Blocks %>

			<% if $ClassName == 'BlockActionBox' %>
				<section id="pattern-background-2" class="tint-bg img-bg-softer" <% if $ActionBoxes.First.BackgroundImage %>style="background-image: url($ActionBoxes.First.BackgroundImage.Link);"<% end_if %>>
					<div class="container">
						<div class="row">
							<div class="col-md-8 col-sm-9 inner center-block text-center">
								<header>
									<h1>$ActionBoxes.First.Title</h1>
									$ActionBoxes.First.Content
								</header>

								<% if $ActionBoxes.First.RedirectPage %>
									<a href="$ActionBoxes.First.RedirectPage.Link" title="Go to $ActionBoxes.First.RedirectPage.Title" class="btn btn-large">$ActionBoxes.First.ButtonText</a>
								<% end_if %>

							</div>
						</div>
					</div>
				</section>
			<% end_if %>

		<% end_loop %>	
	<% end_if %>
</main>