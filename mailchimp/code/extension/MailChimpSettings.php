<?php
class MailChimpSettings extends DataExtension {

	private static $db = array(
		'APIKey' => 'Text'
	);

	private static $has_many = array(
		'MailChimpList' => 'MailChimpList'
	);

	public function updateCMSFields(FieldList $fields) {

		$fields->addFieldToTab('Root.MailChimp', TextareaField::create('APIKey', 'API Key'));

		$listField = new GridField('MailChimpList', 'MailChimp list', $this->owner->MailChimpList(), GridFieldConfig_RelationEditor::create());
		$fields->addFieldToTab('Root.MailChimp', $listField);
	}
}