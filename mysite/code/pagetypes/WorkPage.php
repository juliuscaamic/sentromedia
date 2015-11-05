<?php
/**
 * Represents the portfolio page
 * 
 * @author Julius <julius@greenbrainer.com>
 * @copyright Copyright (c) 2015, Julius
 */
class WorkPage extends BlogPost {

	/**
	 * Set properties
	 * 
	 * @var array
	 */
	private static $db = array(
		'Client' => 'Varchar', 
		'WebsiteAddress' => 'Text', 
		'ActionBoxTitle' => 'Text', 
		'ActionBoxContent' => 'HTMLText', 
		'ActionBoxRedirectButtonText' => 'Varchar', 
		'SortOrder' => 'Int'
	);

	/**
	 * Set has one
	 * 
	 * @var array
	 */
	private static $has_one = array(
		'ActionBoxRedirectPage' => 'SiteTree', 
		'ActionBoxBackgroundImage' => 'Image'
	);

	/**
	 * Set has many
	 * 
	 * @var array
	 */
	private static $has_many = array(
		'Features' => 'WorkFeature'
	);

	/**
	 * Set page icon
	 * 
	 * @var string
	 */
	private static $icon = 'mysite/images/wrench-icon.png';

	/**
	 * Set singular name
	 * 
	 * @var string
	 */
	private static $singular_name = 'Porfolio';

	/**
	 * Set plural name
	 * 
	 * @var string
	 */
	private static $plural_name = 'Porfolios';

	/**
	 * Set default sort
	 * 
	 * @var string
	 */
	private static $default_sort = 'SortOrder';

	/**
	 * Get CMS fields
	 * 
	 * @return FieldList
	 */
	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('Widgets');
		$fields->removeByName('RelatedPosts');
		$fields->removeByName('Authors');
		$fields->removeByName('AuthorNames');

		$fields->dataFieldByName('PublishDate')
			->setTitle('Deployment Date');

		$fields->insertBefore(
			TextField::create('WebsiteAddress', 'Website Address'), 
			'Categories'
		);

		$fields->insertAfter(
			TextField::create('Client', 'Client'), 
			'WebsiteAddress'
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
			'Root.ActionBox', 
			TextField::create('ActionBoxTitle', 'Title')
		);

		$fields->addFieldToTab(
			'Root.ActionBox', 
			HTMLEditorField::create('ActionBoxContent', 'Content')
				->setRows(20)
		);

		$fields->addFieldToTab(
			'Root.ActionBox', 
			TextField::create('ActionBoxRedirectButtonText', 'Redirect button text')
		);

		$fields->addFieldToTab(
			'Root.ActionBox', 
			TreeDropdownField::create('ActionBoxRedirectPageID', 'Redirect page', 'SiteTree')
		);

		$fields->addFieldToTab(
			'Root.ActionBox', 
			UploadField::create('ActionBoxBackgroundImage', 'Background image')
				->setFolderName('Works/')
		);

		return $fields;
	}

}

class WorkPage_Controller extends BlogPost_Controller {

	public function init() {
		parent::init();
	}
}