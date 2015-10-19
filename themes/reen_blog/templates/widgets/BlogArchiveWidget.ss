<% if $Archive %>
	<ul class="circled">
		<% loop $Archive %>
			<li><a href="$Link" title="$Title">$Title</a></li>
		<% end_loop %>
	</ul>
	
	<a href="#" class="txt-btn">All archives</a>
<% end_if %>