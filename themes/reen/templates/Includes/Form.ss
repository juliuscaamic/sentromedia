<% if $IncludeFormTag %>
	<form $AttributesHTML>
<% end_if %>

<% loop $Fields %>
	<div class="row">
		<div class="col-sm-12">
			$FieldHolder
		</div>
	</div>
<% end_loop %>

<% if $Actions %>
	<% loop $Actions %>
		$Field
	<% end_loop %>
<% end_if %>


<% if $IncludeFormTag %>
	</form>
<% end_if %>