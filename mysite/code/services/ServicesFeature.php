<?php
class ServicesFeature extends DataObject {

	private static $db = array(
		'Title' => 'Varchar', 
		'Content' => 'HTMLText', 
		'SortOrder' => 'Int'
	);

	private static $has_one = array(
		'ServicesPage' => 'ServicesPage',
		'Image' => 'Image'
	);

	private static $default_sort = 'SortOrder';

	private static $singular_name = 'Feature';

	private static $plural_name = 'Features';

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('ServicesPageID', 'SortOrder')
		);

		$fields->dataFieldByName('Content')
			->setRows(20);

		return $fields;
	}
}