<% if $Tags %>
	<div class="tagcloud">
		<% loop $Tags %>
			<a href="$Link" title="$Title" style="font-size: 12pt;">$Title</a>
		<% end_loop %>
	</div>
<% end_if %>