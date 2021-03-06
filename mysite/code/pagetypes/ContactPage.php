<?php
/**
 * Represents the contact page
 * 
 * @author Julius <julius@greenbrainer.com>
 * @copyright Copyright (c) 2015, Julius
 */
class ContactPage extends GenericPage {

	/**
	 * Set page icon
	 * 
	 * @var string
	 */
	private static $icon = 'mysite/images/phone-icon.png';
}

/**
 * Controls the contact page
 * 
 * @author Julius <julius@greenbrainer.com>
 * @copyright Copyright (c) 2015, Julius
 */
class ContactPage_Controller extends GenericPage_Controller {

	/**
	 * Initialise the controller
	 */
	public function init() {
		parent::init();

		Requirements::javascript('https://maps.googleapis.com/maps/api/js?key=AIzaSyD0jji5gjOj_ImX4uSgNd0dwIy09yL7kbQ');

		$blockMap = $this->getBlockMap();
		$title = '';
		$lat = '';
		$long = '';
		$marker = $this->getBlockMap()->Marker()->Link();
		if ($blockMap) {
			if ($blockMap->RegionalOffices()->First()) {
				$title = $blockMap->RegionalOffices()->First()->Title;
				$lat = $blockMap->RegionalOffices()->First()->GoogleMapLat;
				$long = $blockMap->RegionalOffices()->First()->GoogleMapLong;
			}

			Requirements::customScript(<<<JS
				var googleMapTitle = '$title';
				var googleMapMarker = '$marker';
				var googleLat = '$lat';
				var googleLong = '$long';
JS
			);			
		}
	}

	/**
	 * Get the map block
	 * 
	 * @return BlockMap
	 */
	public function getBlockMap() {
		return $this->Blocks()->filter(array('ClassName' => 'BlockMap'))->first();
	}
}