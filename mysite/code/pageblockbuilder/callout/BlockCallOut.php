<?php
class BlockCallOut extends Block {

	private static $db = array(
		'RedirectButtonText' => 'Varchar'
	);

	private static $has_one = array(
		'RedirectPage' => 'SiteTree'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->insertAfter(
			$fields->dataFieldByName('RedirectButtonText'), 
			'Content'
		);
		$fields->insertAfter(
			TreeDropdownField::create("RedirectPageID", "Choose a page to redirect:", "SiteTree"), 
			'RedirectButtonText'
		);

		return $fields;
	}
}