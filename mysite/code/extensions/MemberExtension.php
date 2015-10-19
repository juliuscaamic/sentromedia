<?php
class Member_Extension extends DataExtension {

	private static $db = array(
		'BlogProfileWebsite' => 'Text'
	);

	private static $has_many = array(
		'SocialMediaAccounts' => 'MemberSocialMediaAccount'
	);

	public function updateCMSFields(FieldList $fields) {
		$fields->addFieldToTab(
			'Root.BlogProfile', 
			TextField::create('BlogProfileWebsite', 'Blog profile website')
		);

		$fields->addFieldToTab(
			'Root.BlogProfile', 
			$fields->dataFieldByName('BlogProfileSummary')
		);

		$fields->addFieldToTab(
			'Root.BlogProfile', 
			$fields->dataFieldByName('BlogProfileImage')
		);
	}
}