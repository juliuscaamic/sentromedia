<section id="blog" class="light-bg">
	<div class="container inner-top-sm inner-bottom classic-blog">
		<div class="row">
			<div class="col-md-9 inner-right-sm">
				<% if $PaginatedList.Exists %>
					<div class="posts sidemeta">
						<% loop $PaginatedList %>
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
									<h2 class="post-title">
										<a href="$Link">
											<% if $MenuTitle %>$MenuTitle<% else %>$Title<% end_if %>									
										</a>
									</h2>
									<ul class="meta">
										<% if $Categories %>
										<li class="categories">
											<% loop $Categories %>
												<a href="$Link">$Title</a><% if not $Last %>, <% end_if %>
											<% end_loop %>
										</li>
										<% end_if %>
									</ul>
									<% if $Summary %>$Summary<% else %>$Excerpt<% end_if %>
									<a href="$Link" title="Go to $Title page" class="btn">Read more</a>
								</div>
							</div>
						<% end_loop %>
					</div>

					<% with $PaginatedList %>
						<% if $MoreThanOnePage %>
							<ul class="pagination">

								<% if $NotFirstPage %>
									<li><a href="$PrevLink" title="Go to previous page">Prev</a></li>
								<% end_if %>

								 <% loop $Pages %>
									<li class="<% if $CurrentBool %>active<% end_if %>">
										<a href="$Link" title="Go to page $PageNum">$PageNum</a>
									</li>
								 <% end_loop %>

								<% if $NotLastPage %>
									<li><a href="$NextLink" title="Go to next page">Next</a></li>
								<% end_if %>
							</ul>
						<% end_if %>
					<% end_with %>

				<% end_if %>
			</div>

			<% if $SideBarView %>
				<aside class="col-md-3">
					$SideBarView
				</aside>
			<% end_if %>			
		</div>
	</div>
</section>