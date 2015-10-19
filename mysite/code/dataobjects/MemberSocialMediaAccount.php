<?php
class MemberSocialMediaAccount extends DataObject {
	/**
	 * Set properties
	 * 
	 * @var array
	 */
	private static $db = array(
		'Title' => 'Varchar', 
		'Accounts' => "Enum(array('Facebook', 'Twitter', 'Google+', 'Instagram', 'Vine', 'LinkedIn', 'Pinterest', 'RSS'))",
		'ExternalURL' => 'Varchar(2083)', 
		'SortOrder' => 'Int'
	);

	/**
	 * Set has one
	 * 
	 * @var array
	 */
	private static $has_one = array(
		'Member' => 'Member'
	);

	/**
	 * Set singular name
	 * 
	 * @var string
	 */
	private static $singular_name = 'Social media account';

	/**
	 * Set plural name
	 * 
	 * @var string
	 */
	private static $plural_name = 'Social media accounts';

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
			array('Title', 'SortOrder', 'MemberID')
		);

		$fields->dataFieldByName('Accounts')
			->setEmptyString('select from our list of social media services');

		$fields->dataFieldByName('ExternalURL')
			->setTitle('Address');

		return $fields;
	}

	public function onBeforeWrite() {
		parent::onBeforeWrite();

		$this->Title = $this->Accounts;
	}
}