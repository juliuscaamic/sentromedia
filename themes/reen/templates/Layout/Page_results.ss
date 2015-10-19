<section class="img-bg-bottom img-bg-soft tint-bg" id="hero">
	<div class="container inner">
		<div class="row">
			<div class="col-sm-10 animated fadeInUp">
				<header>
					<h1>$Title</h1>
						<% if $Query %>
							<h2>You searched for &quot;{$Query}&quot;</h2>
						<% end_if %>
				</header>
			</div>
		</div>
	</div>
</section>

<section class="light-bg">
	<div class="container inner-md">
		<div class="row">
			<% if $Results %>
				<% loop $Results %>
					<div class="col-md-12 inner-right-xs inner-bottom-xs">
						<h2>
							<a href="$Link">
	        					<% if $MenuTitle %>$MenuTitle<% else %>$Title<% end_if %>									
							</a>
						</h2>
						<p>$Content.LimitWordCountXML</p>
						<a class="btn" href="$Link" title="Read more about $Title">Read more</a>
					</div>
				<% end_loop %>

				<% if $Results.MoreThanOnePage %>
					<ul class="pagination pull-right">
						<% if $Results.NotFirstPage %>
							<li><a href="$Results.PrevLink" title="View the previous page">Prev</a></li>
						<% end_if %>

						<% loop $Results.Pages %>
						<li class="<% if $CurrentBool %>active<% end_if %>"><a href="$Link" title="View page number $PageNum">$PageNum</a></li>
						<% end_loop %>

						<% if $Results.NotLastPage %>
							<li><a href="$Results.NextLink" title="View the next page">Next</a></li>
						<% end_if %>
					</ul>
				<% end_if %>
			<% else %>
				<div class="col-md-12 inner-right-xs inner-bottom-xs">
					<h2>Sorry, your search query did not return any results.</h2>
				</div>
			<% end_if %>
		</div>
	</div>
</section>