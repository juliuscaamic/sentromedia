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

		$source = WorkPage::get();
		$list = $fields->dataFieldByName('ChildPages')
			->setList($source);

		$fields->dataFieldByName('ChildPages')
			->getConfig()
			->addComponent(new GridFieldSortableRows('SortOrder'));

		$fields->dataFieldByName('ChildPages')
			->setTitle('Portfolios')
			->getConfig()
			->getComponentByType('GridFieldPaginator')
			->setItemsPerPage(100);

		return $fields;
	}

	/**
	 * Get posts
	 * 
	 * @return DataList
	 */
	public function getBlogPosts() {
		return WorkPage::get()
			->filter("ParentID", $this->ID)
			->sort('SortOrder ASC');
	}		
}

class Work_Controller extends Blog_Controller {

	public function init() {
		parent::init();
	}
}