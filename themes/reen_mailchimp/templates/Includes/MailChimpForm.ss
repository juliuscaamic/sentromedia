<% if $Message %>
	<p class="alert" role="alert"><i class="icon-info"></i> $Message</p>
<% else %>
	<p class="alert" role="alert" style="display: none;"><i class="icon-info"></i> $Message</p>
<% end_if %>

<form $FormAttributes>
	<div class="row">
		<div class="col-sm-12">
			$Fields.dataFieldByName(Name)
		</div>
		<div class="col-sm-12">
			$Fields.dataFieldByName(Email)
		</div>
	</div>

	$Fields.dataFieldByName(SecurityID)

	<% loop $Actions %>$Field<% end_loop %>
</form>