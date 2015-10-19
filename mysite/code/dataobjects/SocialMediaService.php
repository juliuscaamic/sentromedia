<?php
/**
 * 
 * @author Julius <julius@greenbrainer.com>
 * @copyright Copyright (c) 2015, Julius
 */
class SocialMediaService extends DataObject {

	/**
	 * Set properties
	 * 
	 * @var array
	 */
	private static $db = array(
		'Title' => 'Varchar', 
		'SocialMediaServices' => "Enum(array('Facebook', 'Twitter', 'Google+', 'Instagram', 'Vine', 'LinkedIn', 'Pinterest', 'RSS'))",
		'ExternalURL' => 'Varchar(2083)', 
		'SortOrder' => 'Int'
	);

	/**
	 * Set has one
	 * 
	 * @var array
	 */
	private static $has_one = array(
		'SiteConfig' => 'SiteConfig'
	);

	/**
	 * Set singular name
	 * 
	 * @var string
	 */
	private static $singular_name = 'Social media service';

	/**
	 * Set plural name
	 * 
	 * @var string
	 */
	private static $plural_name = 'Social media services';

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

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('Title', 'SortOrder', 'SiteConfigID')
		);

		$fields->dataFieldByName('SocialMediaServices')
			->setEmptyString('select from our list of social media services');

		$fields->dataFieldByName('ExternalURL')
			->setTitle('Address');

		return $fields;
	}

	public function onBeforeWrite() {
		parent::onBeforeWrite();

		$this->Title = $this->SocialMediaServices;
	}
}