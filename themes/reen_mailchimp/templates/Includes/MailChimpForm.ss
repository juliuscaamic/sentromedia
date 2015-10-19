<% if $Message %>
	<p class="alert" role="alert"><i class="icon-info"></i> $Message</p>
<% else %>
	<p class="alert" role="alert" style="display: none;"><i class="icon-info"></i> $Message</p>
<% end_if %>

<form $FormAttributes>

	<label for="MailChimpForm_MailChimpForm_Email" class="sr-only">$Fields.dataFieldByName(Email).Title</label>
	$Fields.dataFieldByName(Email)

	$Fields.dataFieldByName(SecurityID)

	<% loop $Actions %>$Field<% end_loop %>
</form>