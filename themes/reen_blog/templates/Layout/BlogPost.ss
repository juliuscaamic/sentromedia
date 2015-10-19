<section id="blog-post" class="light-bg">
	<div class="container inner-top-sm inner-bottom classic-blog">
		<div class="row">
			
			<div class="col-md-9 inner-right-sm">
				<div class="sidemeta">
					
					<div class="post format-image">
						
						<div class="date-wrapper">
							<div class="date">
								<span class="day">$PublishDate.Format("d")</span>
								<span class="month">$PublishDate.Format("M")</span>
							</div>
						</div>
						
						<div class="post-content">
							
							<% if $FeaturedImage %>
								<figure class="icon-overlay icn-link post-media">
									<a href="$Link" title="Go to $Title page">
										<img src="$FeaturedImage.Link" alt="$FeaturedImage.Title">
									</a>
								</figure>
							<% end_if %>							
							
							<% if $Authors %>
								<p class="author">
									<a href="javascript:void(0);" title="Post author" data-rel="tooltip" data-placement="left">$Authors.First.FirstName $Authors.First.Surname</a>
								</p>
							<% end_if %>
							
							<h1 class="post-title">$Title</h1>
							
							<ul class="meta">
								<% if $Categories %>
									<li class="categories">
										<% loop $Categories %><a href="#">$Title</a><% if not $Last %>, <% end_if %><% end_loop %>
									</li>
								<% end_if %>
							</ul>
							$Content
						</div>
					</div>
					
					<% if $Authors %>
					<div class="post-author">
						<figure>
							<% if $Authors.First.BlogProfileImage %>
								<div class="author-image icon-overlay icn-link">
									<a href="javascript:void(0);">
										<img src="$Authors.First.BlogProfileImage.CroppedImage(350, 350).Link" alt="$Authors.First.BlogProfileImage.Title">
									</a>
								</div>
							<% end_if %>
							<figcaption class="author-details">
								<h3>About the author</h3>
								<p>$Authors.First.BlogProfileSummary</p>
								<ul class="meta">
									<% if $$Authors.First.BlogProfileWebsite %>
										<li class="url"><a href="$Authors.First.BlogProfileWebsite" target="_blank">$Authors.First.BlogProfileWebsite</a></li>
									<% end_if %>
								</ul>
								<% if $Authors.First.SocialMediaAccounts %>
									<ul class="social">
										<% loop $Authors.First.SocialMediaAccounts %>
											<li><a href="$ExternalURL">

													<% if $Accounts == 'Facebook' %>
														<i class="icon-s-facebook"></i>
													<% end_if %>

													<% if $Accounts == 'Google+' %>
														<i class="icon-s-gplus"></i>
													<% end_if %>

													<% if $Accounts == 'Twitter' %>
														<i class="icon-s-twitter"></i>
													<% end_if %>

													<% if $Accounts == 'Instagram' %>
														<i class="icon-s-instagrem"></i>
													<% end_if %>

													<% if $Accounts == 'LinkedIn' %>
														<i class="icon-s-linkedin"></i>
													<% end_if %>

													<% if $Accounts == 'Pinterest' %>
														<i class="icon-pinterest-squared"></i>
													<% end_if %>

													<% if $Accounts == 'RSS' %>
														<i class="icon-s-rss"></i>
													<% end_if %>													
												</a>
											</li>
										<% end_loop %>
									</ul>
								<% end_if %>
							</figcaption>
						</figure>
					</div>
					<% end_if %>
					
					<div id="share" class="row">
						<div class="container">
							<div class="col-sm-2 reset-padding">
								<a href="javascript:void(0);" class="btn-share-md">
									<p class="name">Facebook</p>
									<i class="icon-s-facebook st_facebook_custom" displayText='Facebook'></i>
								</a>
							</div>
							
							<div class="col-sm-2 reset-padding">
								<a href="javascript:void(0);" class="btn-share-md">
									<p class="name">Twitter</p>
									<i class="icon-s-twitter st_twitter_custom" displayText='Tweet'></i>
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
					</div>
					
					<% if $RelatedPosts %>
						<div id="accordion-related-posts" class="panel-group">
							<div class="panel panel-default">			  
								
								<div class="panel-heading">
									<h2 class="panel-title">
										<a class="panel-toggle" data-toggle="collapse" data-parent="#accordion-related-posts" href="#content-related-posts">
											<span>Related posts</span>
										</a>
									</h2>
								</div>
								
								<div id="content-related-posts" class="panel-collapse collapse in">
									<div class="panel-body">
										<div id="owl-related-posts" class="owl-carousel owl-item-gap">
											<% loop $RelatedPosts %>
												<div class="item">
													<figure>
														<% if $FeaturedImage %>
															<div class="icon-overlay icn-link">
																<a href="$Link" title="Go to $Title page">
																	<img src="$FeaturedImage.Link" alt="$FeaturedImage.Title">
																</a>
															</div>
														<% end_if %>
														
														<figcaption class="bordered no-top-border">
															<div class="info">
																<h4><a href="$Link" title="Go to $Title page"><% if $MenuTitle %>$MenuTitle<% else %>$Title<% end_if %></a></h4>
															</div>
														</figcaption>
														
													</figure>
												</div>
											<% end_loop %>
										</div>
									</div>
								</div>
							</div>
						</div>
					<% end_if %>
				
				</div>
			</div>
			
			<% if $SideBarView %>
				<aside class="col-md-3">
					$SideBarView
				</aside>
			<% end_if %>

		</div>
	</div>
</section>