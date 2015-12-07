<?php
class ServicesQuote extends DataObject {

	private static $db = array(
		'Title' => 'Text', 
		'Content' => 'HTMLText', 
		'Estimate' => 'Currency'
	);

	private static $belongs_many_many = array(
		'BlockQuote' => 'BlockQuote'
	);

	private static $summary_fields = array(
		'Title' => 'Title', 
		'Estimate.Nice' => 'Estimate'
	);

	private static $singular_name = 'Quote';

	private static $plural_name = 'Quotes';

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('ServicesPage');
		$fields->replaceField(
			'Title', 
			TextField::create('Title', 'Title')
		);

		$fields->dataFieldByName('Content')
			->setRows(20);

		return $fields;
	}
}