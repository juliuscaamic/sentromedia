<?php
class WorkFeature extends DataObject {

	private static $db = array(
		'Title' => 'Varchar', 
		'Content' => 'HTMLText', 
		'SortOrder' => 'Int'
	);

	private static $has_one = array(
		'WorkPage' => 'WorkPage',
		'Image' => 'Image'
	);

	private static $default_sort = 'SortOrder';

	private static $singular_name = 'Feature';

	private static $plural_name = 'Features';

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('WorkPageID', 'SortOrder')
		);

		$fields->dataFieldByName('Content')
			->setRows(20);

		return $fields;
	}
}