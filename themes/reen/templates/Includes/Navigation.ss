<ul class="nav navbar-nav">
	<% loop $Menu(1) %>
		<% if $MegaMenu %>
			<li class="dropdown yamm-fullwidth $LinkingMode">
				<a href="$Link" title="Go to $Title.XML page" class="dropdown-toggle js-activated">$MenuTitle.XML</a>
				<ul class="dropdown-menu yamm-dropdown-menu">
					<li>
						<div class="yamm-content row">
							<% if $Children %>
								<% loop $Children %>
									<div class="col-sm-3 inner">
										<h4><a href="$Link" title="Go to $Title.XML page">$MenuTitle.XML</a></h4>
										
										<% if $Children %>
											<ul class="circled">
												<% loop $Children %>
													<li>
														<a href="$Link" title="Go to $Title.XML page">$MenuTitle.XML</a>
													</li>
												<% end_loop %>
											</ul>
										<% end_if %>
									</div>
								<% end_loop %>
							<% end_if %>
						</div>
					</li>
				</ul>
			</li>
		<% else %>
			<li class="dropdown $LinkingMode">
				<a href="$Link" title="Go to $Title.XML page" class="<% if $Children %>dropdown-toggle<% end_if %> js-activated">$MenuTitle.XML</a>
				
				<% if $Children %>
					<ul class="dropdown-menu">
						<% loop $Children %>
							<li class="<% if $Children %>dropdown-submenu<% end_if %>">
								<a href="$Link" title="Go to $Title.XML page">$MenuTitle.XML</a>
								<% if $Children %>
									<ul class="dropdown-menu">
										<% loop $Children %>
											<li><a href="$Link" title="Go to $Title.XML page">$MenuTitle.XML</a></li>
										<% end_loop %>
									</ul>
								<% end_if %>
							</li>
						<% end_loop %>
					</ul>
				<% end_if %>
			</li>
		<% end_if %>
	<% end_loop %>

	<li class="dropdown pull-right searchbox">
		<a href="#" class="dropdown-toggle js-activated"><i class="icon-search"></i></a>
				  
		<div class="dropdown-menu">
			$SearchForm
		</div>
	</li>

</ul>