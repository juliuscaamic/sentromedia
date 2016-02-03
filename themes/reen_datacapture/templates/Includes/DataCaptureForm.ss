<form $AttributesHTML>

	<div class="row">
		<div class="col-sm-12">
			$Fields.dataFieldByName(Name)
		</div>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			$Fields.dataFieldByName(Email)
		</div>
	</div>

	$Fields.dataFieldByName(SecurityID)

	<div class="row">
		<div class="col-sm-12">
			<% loop $Actions %>$Field<% end_loop %>
		</div>
	</div>
</form>