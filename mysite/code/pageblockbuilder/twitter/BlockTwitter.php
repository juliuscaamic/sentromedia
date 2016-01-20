<?php
/**
 * Represents the team block
 * 
 * @author Juius <julius@greenbrainer.com>
 * @copyright Copyright (c) 2015, Julius
 */
class BlockTwitter extends Block {

	/**
	 * Set has one
	 * 
	 * @var array
	 */
	private static $has_one= array(
		'BackgroundImage' => 'Image'
	);

	/**
	 * Get component title
	 * 
	 * @var string
	 */
	protected $component_title = 'Twitter';

	/**
	 * Get CMS fields
	 * 
	 * @return FieldList
	 */
	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('Content');

		$fields->insertAfter(
			UploadField::create('BackgroundImage', 'Background')
				->setFolderName('Twitter'), 
			'Title'
		);

		return $fields;
	}
}