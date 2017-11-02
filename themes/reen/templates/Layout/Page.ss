<main>
<% cached 'BlockCached', LastEdited %>
	<% if $Blocks %>
		<% loop $Blocks %>

			<% if $ClassName == 'BlockText' %>
				<section id="who-we-are">
					<div class="container inner-md">
						<div class="row inner-top-xs">
							
							<div class="col-sm-12 inner-right-xs inner-bottom-xs">
								$Content
							</div>
							
						</div>
					</div>
				</section>			
			<% end_if %>

			<% if $ClassName == 'BlockImage' %>
				<section id="product">
					<div class="container inner">
						<div class="row">
							<div class="col-sm-6 <% if $Position == 'Left' %>inner-right-xs text-right<% else %>col-sm-push-6 inner-left-xs<% end_if %>">
								<figure>
									<img src="$Image.Link" alt="$Image.Title">
								</figure>
							</div>
							
							<div class="col-sm-6 inner-top-xs <% if $Position == 'Left' %>inner-left-xs<% else %>col-sm-pull-6 inner-right-xs<% end_if %>">
								<h2>$Title</h2>
								$Content
								<% if $RedirectPage %>
									<a href="$RedirectPage.Link" class="txt-btn">$ButtonText</a>
								<% end_if %>
							</div>
						</div>
					</div>
				</section>				
			<% end_if %>

			<% if $ClassName == 'BlockBanner' %>
				<section id="hero" class="dark-bg img-bg img-bg-soft" style="<% if $Image %>background-image: url($Image.Link);<% end_if %>">
					<div class="container inner">
						<div class="row">
							<div class="col-sm-10">
								<header>
									<% if $Title %>
										<h1>$Title</h1>
									<% end_if %>
									<% if $Content %>
										$Content
									<% end_if %>
								</header>
							</div>
						</div>
					</div>
				</section>			
			<% end_if %>

			<% if $ClassName == 'BlockSpinningBanner' %>
				<section id="hero">
					<div id="owl-main" class="owl-carousel height-lg owl-inner-nav owl-ui-lg">
						<% loop $SpinningBanners %>
							<div class="item" style="background: #283842 url($Image.CroppedImage(1920, 680).Link);">
								<div class="container">
									<div class="caption vertical-center text-left">
										<h1 class="fadeInRight-1 light-color"><span>$Title</span></h1>
										$Description
										<% if $RedirectPage %>
											<div class="fadeInRight-3" style="z-index:3;">
												<a href="$RedirectPage.Link" title="Go to $RedirectPage.Title page" class="btn btn-large btn-bordered">$RedirectButtonText</a>
											</div>
										<% end_if %>
									</div>
									<div style="opacity: 0.56; background-color: #2f4052; z-index:1; position: absolute; top: 0; left: 0; height: 100%; width: 100%;"></div>
								</div>
							</div>
						<% end_loop %>
					</div>
				</section>
			<% end_if %>

			<% if $ClassName == 'BlockAccordion' %>
				<section id="accordion">
					<div class="container inner">
						<div class="row">
							<div class="col-sm-12 inner-top">
								<h2>$Title</h2>
								$Content
								
								<div id="accordion" class="panel-group">
									
									<% loop $Accordions %>
										<div class="panel panel-default">			  
											
											<div class="panel-heading">
												<h4 class="panel-title">
													<a class="panel-toggle" data-toggle="collapse" data-parent="#accordion" href="#content$Pos">
														<span>$Title</span>
													</a>
												</h4>
											</div>
											
											<div id="content$Pos" class="panel-collapse collapse">
												<div class="panel-body">
													$Content
												</div>
											</div>
										</div>
									<% end_loop %>
								</div>
							</div>
						</div>
					</div>
				</section>
			<% end_if %>

			<% if $ClassName == 'BlockTab' %>
				<section id="circle-tabs">
					<div class="container">

						<div class="row">
							<div class="col-md-8 col-sm-10 center-block text-center">
								<header>
									<h1>$Title</h1>
									
								</header>
							</div>
						</div>
						
						<div class="row">
							<div class="col-xs-12 inner-top-sm outer-bottom-sm">

								<div class="tabs tabs-services tabs-circle-top tab-container">
									
									<ul class="etabs text-center">
										<% loop $Tabs %>
											<li class="tab">
												<a href="#tab-{$Pos}">
													<div><i class="$TabIcon"></i></div>$Title
												</a>
											</li>
										<% end_loop %>
									</ul>
									
									<div class="panel-container">
										
										<% loop $Tabs %>
											<div class="tab-content" id="tab-$Pos">
												<div class="row">
																										
													<div class="<% if not $Image %>col-md-10 col-sm-12<% else %>col-md-6 col-sm-6<% end_if %> inner-top-xs inner-left-xs">
														$Content
														<% if $RedirectPage %>
															<a class="btn btn-large" title="Go to $RedirectPage.Title page" href="$RedirectPage.Link">$ButtonText</a>
														<% end_if %>
													</div>

													<% if $Image %>
														<div class="col-md-4 col-md-offset-1 col-sm-6 inner-right-xs">
															<figure>
																<img src="$Image.Link" alt="$Image.Title">
															</figure>
														</div>
													<% end_if %>

												</div>
											</div>
										<% end_loop %>
										
									</div>
								</div>
							</div>
						</div>						
					</div>
				</section>
			<% end_if %>

			<% if $ClassName == 'BlockFeaturedWork' %>
				<section id="selected-works" class="light-bg">
					<div class="container inner">
						
						<div class="row">
							<div class="col-md-8 col-sm-9 center-block text-center">
								<header>
									<h1>$Title</h1>
									$Content
								</header>
							</div>
						</div>
						
						<div class="row inner-top-sm">
							<div class="col-sm-12 portfolio">
								
								<ul class="items col-3">
									<% loop $Works %>
										<li class="item thumb photography">
											<a href="$Work.Link" title="Go to $Work.Title page">
												<figure>
													<figcaption class="text-overlay">
														<div class="info">
															<h2>$Work.Title</h2>
														</div>
													</figcaption>
													<img src="$Work.FeaturedImage.CroppedImage(570, 390).Link" alt="$Work.FeaturedImage.Title">
												</figure>
											</a>
										</li>
									<% end_loop %>
								</ul>
							</div>
						</div>
						
					</div>
				</section>		
			<% end_if %>

			<% if $ClassName == 'BlockActionBox' %>
				<section id="pattern-background-2" class="tint-bg img-bg-soft img-bg" <% if $ActionBoxes.First.BackgroundImage %>style="background-image: url($ActionBoxes.First.BackgroundImage.Link);"<% end_if %>>
					<div class="container">
						<div class="row">
							<div class="col-md-8 col-sm-9 inner center-block text-center">
								<header>
									<h1>$ActionBoxes.First.Title</h1>
									$ActionBoxes.First.Content
								</header>

								<% if $ActionBoxes.First.RedirectPage %>
									<a href="$ActionBoxes.First.RedirectPage.Link" title="Go to $ActionBoxes.First.RedirectPage.Title" class="btn btn-large btn-bordered">$ActionBoxes.First.ButtonText</a>
								<% end_if %>

							</div>
						</div>
					</div>
				</section>
			<% end_if %>

			<% if $ClassName == 'BlockCallOut' %>
				<section class="tint-bg">
					<div class="container inner-xs">
						<div class="row">
							<div class="col-sm-12 center-block text-center">
								<h2 class="single-block">$Title 
									<% if $RedirectPage %>
										<a href="$RedirectPage.Link" class="btn btn-large btn-bordered">
											$RedirectButtonText
										</a>
									<% end_if %>
								</h2>
							</div>
						</div>
					</div>
				</section>
			<% end_if %>

			<% if $ClassName == 'BlockCarousel' %>
				<section id="clients">
					<div class="container inner">
						
						<div class="row">
							<div class="col-md-8 col-sm-9 center-block text-center">
								<header>
									<h1>$Title</h1>
									$Content
								</header>
							</div>
						</div>
						
						<div class="row inner-top-sm">
							<div class="col-sm-12">
								<div id="owl-clients" class="owl-carousel owl-outer-nav">
									<% loop $Carousels %>
										<div class="item">
											<figure>
												<figcaption class="text-overlay">
													<div class="info">
														<h4>$Title</h4>
													</div>
												</figcaption>
												<img src="$Image.Link" alt="$Image.Title">
											</figure>
										</div>
									<% end_loop %>
								</div>
							</div>
						</div>
					</div>
				</section>			
			<% end_if %>

			<% if $ClassName == 'BlockTeam' %>
				<section id="team" class="light-bg">
					<div class="container inner-top inner-bottom-sm">
						
						<div class="row">
							<div class="col-md-8 col-sm-10 center-block text-center">
								<header>
									<h1>$Title</h1>
									$Content
								</header>
							</div>
						</div>
						
						<div class="row inner-top-sm text-center">
							
							<% loop $TeamMembers %>
								<div class="col-sm-4 inner-bottom-sm inner-left inner-right">
									<figure class="member">
										<% if $Image %>
											<img src="$Image.CroppedImage(400, 400).Link" title="$Image.Title">
										<% end_if %>
										<figcaption>
											<h2>$Title<span>$Position</span></h2>
											$Content
											
											<% if $SocialMediaAccounts %>
												<ul class="social">
													<% loop $SocialMediaAccounts %>
														<li>
															<a href="$AccountAddress" title="Go to my $Title account" target="_blank">
																<% if $Account == 'Facebook' %>
																	<i class="icon-s-facebook"></i>
																<% end_if %>
																<% if $Account == 'Twitter' %>
																	<i class="icon-s-twitter"></i>
																<% end_if %>
																<% if $Account == 'LinkedIn' %>
																	<i class="icon-s-linkedin"></i>
																<% end_if %>
																<% if $Account == 'Instagram' %>
																	<i class="icon-s-instagrem"></i>
																<% end_if %>
															</a>
														</li>
													<% end_loop %>
												</ul>
											<% end_if %>
											
										</figcaption>
										
									</figure>
								</div>
							<% end_loop %>
						</div>
					</div>
				</section>			
			<% end_if %>

			<% if $ClassName == 'BlockMap' %>
				<section id="map" class="height-sm"></section>
			<% end_if %>

			<% if $ClassName == 'BlockContactForm' %>
				<section id="contact-form">
					<div class="container inner-bottom">
						
						<div class="row">
							<div class="col-sm-12">
								<div class="row">
									
									<div class="col-sm-6 outer-top-md inner-right-sm">
										<h2>Leave a Message</h2>
										$Top.Content
									</div>
									
									<div class="col-sm-6 outer-top-md inner-left-sm border-left">
										<h2>$Title</h2>
										$Content

										<ul class="contacts">
											<% if $SiteConfig.Address %>
												<li><i class="icon-location contact"></i> $SiteConfig.Address</li>
											<% end_if %>

											<% if $SiteConfig.ContactNumber %>
												<li><i class="icon-mobile contact"></i> $SiteConfig.ContactNumber</li>
											<% end_if %>

											<% if $SiteConfig.Email %>
												<li><a href="mailto:$SiteConfig.Email">
													<i class="icon-mail-1 contact"></i> $SiteConfig.Email</a>
												</li>
											<% end_if %>
										</ul>
										
										<% if $SiteConfig.SocialMediaServices %>
										<div class="social-network">
											<h3>Social</h3>
											<ul class="social">
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
										</div>
										<% end_if %>
									</div>
								</div>
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
	<% else %>
		<div class="container inner">
			<div class="row">
				<div class="col-md-12 inner-right inner-bottom-md">
					<section id="contact-form">
						$Content
						$Form
					</section>
				</div>
			</div>
		</div>
	<% end_if %>
<% end_cached %>
</main>