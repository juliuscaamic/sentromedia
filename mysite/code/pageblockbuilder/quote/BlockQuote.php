<?php
class BlockQuote extends Block {

	private static $db = array(
		'RedirectButtonText' => 'Varchar'
	);

	private static $has_one = array(
		'RedirectPage' => 'SiteTree'
	);

	private static $many_many = array(
		'ServicesQuote' => 'ServicesQuote'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->replaceField(
			'RedirectPageID', 
			TreeDropdownField::create("RedirectPageID", "Choose a page to redirect:", "SiteTree")
		);

		$fields->insertAfter(
			$fields->dataFieldByName('RedirectButtonText'), 
			'Content'
		);

		$fields->insertAfter(
			$fields->dataFieldByName('RedirectPageID'), 
			'RedirectButtonText'
		);

		return $fields;
	}

	public function getTotalEstimate() {
		$result = 0;
		if ($this->ServicesQuote()->exists()) {
			$estimates = $this->ServicesQuote()->column('Estimate');
			foreach ($estimates as $estimate) {
				$result += $estimate;
			}

			return $result;
		}

		return $result;
	}
}