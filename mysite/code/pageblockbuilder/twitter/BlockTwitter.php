<?php
/**
 * Represents the team block
 * 
 * @author Juius <julius@greenbrainer.com>
 * @copyright Copyright (c) 2015, Julius
 */
class BlockTwitter extends Block {

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

		return $fields;
	}
}