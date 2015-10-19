<% if $Posts %>
	<div class="row thumbs gap-xs">
		<% loop $Posts %>
			<div class="col-xs-6 thumb">
				<% if $FeaturedImage %>
					<figure class="icon-overlay icn-link">
						<a href="$Link" title="$Title">
							<img src="$FeaturedImage.Liink" alt="$FeaturedImage.Title">
						</a>
					</figure>
				<% end_if %>
			</div>
		<% end_loop %>
	</div>
<% end_if %>