<?php
class WorkFeature extends DataObject {

	private static $db = array(
		'Title' => 'Varchar', 
		'Content' => 'HTMLText', 
		'BackgroundColour' => 'Color', 
		'SortOrder' => 'Int'
	);

	private static $has_one = array(
		'WorkPage' => 'WorkPage'
	);

	private static $many_many = array(
		'FeaturedImages' => 'Image'
	);

	private static $default_sort = 'SortOrder';

	private static $singular_name = 'Feature';

	private static $plural_name = 'Features';

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('FeaturedImages');
		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('WorkPageID', 'SortOrder', 'FeaturedImages')
		);

		$fields->dataFieldByName('Content')
			->setRows(20);

		if ($this->ID) {
		$fields->insertAfter(
			UploadField::create('FeaturedImages', 'Images')
				->setAllowedMaxFileNumber(10)
				->setFolderName('Portfolios/' .$this->WorkPage()->ID. '/FeaturedImages'), 
			'BackgroundColour'
		);			
		}

		return $fields;
	}
}