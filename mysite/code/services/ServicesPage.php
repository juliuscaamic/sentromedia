<?php
class ServicesPage extends Page {

	private static $db = array(
		'FeaturedTitle' => 'Text', 
		'FeaturedContent' => 'HTMLText'
	);

	private static $has_one = array(
		'FeaturedImage' => 'Image', 
		'HeaderImage' => 'Image'
	);

	private static $has_many = array(
		'Features' => 'ServicesFeature'
	);

	private static $icon = 'mysite/images/repair-icon.png';

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldToTab(
			'Root.Featured', 
			TextField::create('FeaturedTitle', 'Title')
		);

		$fields->addFieldToTab(
			'Root.Featured', 
			HTMLEditorField::create('FeaturedContent', 'Content')
				->setRows(20)
		);

		$fields->addFieldToTab(
			'Root.Featured', 
			UploadField::create('FeaturedImage', 'Image')
				->setFolderName('Services')
		);

		$fields->addFieldToTab(
			'Root.Features', 
			GridField::create(
				'Features', 
				'Features', 
				$this->Features(), 
				GridFieldConfig_RecordEditor::create()
					->addComponent(new GridFieldSortableRows('SortOrder'))
			)
		);

		$fields->addFieldToTab(
			'Root.Main', 
			UploadField::create('HeaderImage', 'Header image')
		);

		return $fields;
	}
}

class ServicesPage_Controller extends Page_Controller {

	public function init() {
		parent::init();
	}
}