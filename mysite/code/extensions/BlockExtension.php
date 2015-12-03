<?php
class Block_Extension extends Extension {

	public function updateListComponents(&$components) {
		$components['BlockFeaturedWork'] = 'Featured Work';
		$components['BlockTeam'] = 'Team';
		$components['BlockContactForm'] = 'Contact Form';
		$components['BlockCallOut'] = 'Call Out';
	}
}