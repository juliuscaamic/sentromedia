<?php
/**
 * Represents the featured work
 * 
 * @author Juius <julius@greenbrainer.com>
 * @copyright Copyright (c) 2015, Julius
 */
class FeaturedWork extends DataObject {

	/**
	 * Set properties
	 * 
	 * @var array
	 */
	private static $db = array(
		'Title' => 'Text', 
		'SortOrder' => 'Int'
	);

	/**
	 * Set has one
	 * 
	 * @var array
	 */
	private static $has_one = array(
		'FeaturedWorkParent' => 'BlockFeaturedWork', 
		'Work' => 'WorkPage'
	);

	/**
	 * Get CMS fields
	 * 
	 * @return FieldList
	 */
	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeFieldsFromTab(
			'Root.Main', 
			array('Title', 'SortOrder', 'FeaturedWorkParentID')
		);

		$fields->replaceField(
			'WorkID', 
			TreeDropdownField::create('WorkID', 'Work', 'SiteTree')
		);

		return $fields;
	}

	/**
	 * Hook on before write
	 */
	public function onBeforeWrite() {
		parent::onBeforeWrite();

		$this->Title = $this->Work()->Title;
	}
}