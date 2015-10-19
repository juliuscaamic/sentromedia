<?php
class BlockFeaturedWork extends Block {

	/**
	 * Set has many
	 * 
	 * @var array
	 */
	private static $has_many = array(
		'Works' => 'FeaturedWork'
	);

	/**
	 * Get component title
	 * 
	 * @var string
	 */
	protected $component_title = 'Featured Work';

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('Works');

		$fields->addFieldToTab(
			'Root.Main', 
			GridField::create(
				'Works', 
				'Works', 
				$this->Works(), 
				GridFieldConfig_RecordEditor::create()
					->addComponent(new GridFieldSortableRows('SortOrder'))
			)
		);

		return $fields;
	}
}