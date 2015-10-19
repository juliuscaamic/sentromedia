<?php
class SiteTree_Extension extends DataExtension {

	private static $db = array(
		'MegaMenu' => 'Boolean'
	);
	
	public function updateSettingsFields(&$fields) {
		$fields->insertAfter(
			CheckboxField::create('MegaMenu', 'Show as mega menu'), 
			'ShowInSearch'
		);
	}	
}