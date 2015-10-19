<?php
/**
 * Extension to Blog
 * 
 * @author Julius <julius@greenbrainer.com>
 * @copyright Copyright (c) 2015, Julius Caamic
 */
class Blog_Extension extends DataExtension {

	/**
	 * Set icon
	 * 
	 * @var string
	 */
	private static $icon = 'mysite/images/blog-icon.png';

	/**
	 * Hook to extend get blog posts
	 * 
	 * @param  DataList &$blogPosts
	 * @return DataList
	 */
	public function updateGetBlogPosts(&$blogPosts) {
		$searchKeyword = Controller::curr()->request->getVar('Search');
		if ($searchKeyword) {
			$blogPosts = $blogPosts->filterAny(array(
				'Title:PartialMatch' => $searchKeyword, 
				'Content:PartialMatch' => $searchKeyword, 
				'Summary:PartialMatch' => $searchKeyword
			));
		}
	}
}

/**
 * Extension to Blog post
 * 
 * @author Julius <julius@greenbrainer.com>
 * @copyright Copyright (c) 2015, Julius Caamic
 */
class BlogPost_Extension extends DataExtension {

	/**
	 * Set many many
	 * 
	 * @var array
	 */
	private static $many_many = array(
		'RelatedPosts' => 'BlogPost'
	);

	/**
	 * Set icon
	 * 
	 * @var string
	 */
	private static $icon = 'mysite/images/blog-post-icon.png';	

	/**
	 * Update CMS fields
	 * 
	 * @param  FieldList $fields
	 * @return FieldList
	 */
	public function updateCMSFields(FieldList $fields) {
		$fields->addFieldToTab(
			'Root.RelatedPosts', 
			GridField::create(
				'RelatedPosts', 
				'Related Posts', 
				$this->owner->RelatedPosts(), 
				GridFieldConfig_RelationEditor::create()
			)
		);
	}
}

/**
 * Extension to Blog post controller
 * 
 * @author Julius <julius@greenbrainer.com>
 * @copyright Copyright (c) 2015, Julius Caamic
 */
class BlogPost_Controller_Extension extends Extension {

	/**
	 * Hook on after initialise controller
	 */
	public function onAfterInit() {
		Requirements::customScript(<<<JS
			var switchTo5x=true;
JS
		);
		Requirements::javascript('http://w.sharethis.com/button/buttons.js');
		Requirements::customScript(<<<JS
			stLight.options({
				publisher: "4a367cf2-1472-4630-98c7-6bcd0878fc56", 
				doNotHash: false, 
				doNotCopy: false, 
				hashAddressBar: false, 
				servicePopup: true
			});			
JS
		);		
	}
}

class BlogCategory_Extension extends DataExtension {
	public function CodeIdentifier() {
		return str_replace(' ', '', strtolower($this->owner->Title));
	}
}