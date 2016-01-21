	<main>
		<section id="product" style="color:#424e5a; font-size:16px; line-height:1.5em;">
			<div class="container inner-xs">
				<div class="row">
					<div class="col-md-7 inner-top-xs inner-right-sm">
						<h2 class="outer-bottom-xs">$Title</h2>

						<% if $FeaturedImage %>
							<p style="float: right; margin: 0 0 0 40px;">
								<img src="$FeaturedImage.Link" alt="$FeaturedImage.Title">
							</p>
						<% end_if %>

						$Content
					</div>
					<div class="col-sm-5 inner-top-xs inner-left-sm inner-right-sm inner-bottom-sm light-bg">
						<% if $FormTitle %>
							<h2 class="outer-bottom-xs">$FormTitle</h2>
						<% end_if %>

						<% if $FormDescription %>
							<p>$FormDescription</p>
						<% end_if %>

						$Form
					</div>
				</div>
				<hr>
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
			</div>
		</section>		
	</main>