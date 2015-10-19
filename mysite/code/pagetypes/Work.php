<?php
/**
 * Creates a 
 * 
 * @author Julius <julius@greenbrainer.com>
 * @copyright Copyright (c) 2015, Julius
 */
class Work extends Blog {
	/**
	 * Set page icon
	 * 
	 * @var string
	 */
	private static $icon = 'mysite/images/folder-icon.png';	

	/**
	 * Set allowed children
	 * 
	 * @var array
	 */
	private static $allowed_children = array(
		'WorkPage',
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('Widgets');

		$fields->fieldByName('Root')
			->fieldByName('ChildPages')
			->setTitle('Portfolios');
		$fields->dataFieldByName('ChildPages')
			->setTitle('Portfolios');

		return $fields;
	}
}

class Work_Controller extends Blog_Controller {

}