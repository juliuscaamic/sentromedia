<main>

	<% if $FeaturedImage%>
		<section class="dark-bg img-bg-soft img-bg" style="background-image: url($FeaturedImage.Link); height:580px;">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-sm-9 inner">
						<header>
							<h1>$Title.XML</h1>
						</header>
					</div>
				</div>
			</div>
		</section>
	<% end_if %>
	
	<section id="portfolio-post">
		<div class="container">
			
			<div class="row inner-top-xs reset-xs">
				
				<div class="col-sm-7 inner-top-xs inner-right-xs">
					<header class="text-justify">
						$Content
					</header>
				</div>
				
				<div class="col-sm-4 col-sm-offset-1 outer-top-xs inner-left-xs border-left">
					<ul class="item-details">
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
					<div class="row <% if $First %>outer-top-md<% end_if %> <% if $Last %>inner-bottom outer-bottom<% end_if %>" <% if $BackgroundColour %>style="background-color: #$BackgroundColour; color:#FFF;"<% end_if %>>
						
						<% if $Odd %>
							<% if $Image %>
								<div class="<% if $Content %>col-sm-6<% else %>col-sm-12<% end_if %>" style="padding:0;">
									<figure>
										<img src="$Image.Link" alt="$Image.Title">
									</figure>
								</div>
							<% end_if %>

							<% if $Content %>
								<div class="<% if $Image %>col-sm-6<% else %>col-sm-12 text-center<% end_if %> inner-top-md inner-left-md inner-right-md">
									<h2 <% if $BackgroundColour %>style="background-color: #$BackgroundColour; color:#FFF;"<% end_if %>>$Title</h2>
									$Content
								</div>
							<% end_if %>

						<% else %>
							<% if $Content %>
								<div class="<% if $Image %>col-sm-6<% else %>col-sm-12 text-center<% end_if %> inner-top-md inner-left-md inner-right-md">
									<h2 <% if $BackgroundColour %>style="background-color: #$BackgroundColour; color:#FFF;"<% end_if %>>$Title</h2>
									$Content
								</div>
							<% end_if %>

							<% if $Image %>
								<div class="<% if $Content %>col-sm-6<% else %>col-sm-12<% end_if %>" style="padding:0;">
									<figure>
										<img src="$Image.Link" alt="$Image.Title">
									</figure>
								</div>
							<% end_if %>

						<% end_if %>
												
					</div>
				<% end_loop %>
			<% end_if %>
			</div>
		</div>
		
	</section>

	<% if $ActionBoxTitle %>
		<section id="get-in-touch" class="tint-bg img-bg-soft img-bg" <% if $ActionBoxBackgroundImage %>style="background-image: url($ActionBoxBackgroundImage.Link);"<% end_if %>>
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