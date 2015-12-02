<?php
class Page extends SiteTree {}

class Page_Controller extends ContentController {

	private static $allowed_actions = array(
		'MailChimpForm', 
		'SearchForm', 
		'Form'
	);

	public function init() {
		parent::init();

		Requirements::css('themes/reen/css/bootstrap.min.css');
		Requirements::css('themes/reen/css/main.css');
		Requirements::css('themes/reen/css/green.css');
		Requirements::css('themes/reen/css/owl.carousel.css');
		Requirements::css('themes/reen/css/owl.transitions.css');
		Requirements::css('themes/reen/css/animate.min.css');
		
		Requirements::css('http://fonts.googleapis.com/css?family=Lato:400,900,300,700');
		Requirements::css('http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700,400italic,700italic');

		Requirements::css('https://fonts.googleapis.com/css?family=Old+Standard+TT:400,700');
		Requirements::css('https://fonts.googleapis.com/css?family=Old+Standard+TT:700,400|Oranienbaum');		

		Requirements::css('themes/reen/fonts/fontello.css');

		Requirements::javascript('themes/reen/js/jquery.min.js');
		Requirements::javascript('themes/reen/js/jquery.easing.1.3.min.js');
		Requirements::javascript('themes/reen/js/jquery.form.js');
		Requirements::javascript('themes/reen/js/jquery.validate.min.js');
		Requirements::javascript('themes/reen/js/bootstrap.min.js');
		Requirements::javascript('themes/reen/js/bootstrap-hover-dropdown.min.js');
		Requirements::javascript('themes/reen/js/skrollr.min.js');
		Requirements::javascript('themes/reen/js/skrollr.stylesheets.min.js');
		Requirements::javascript('themes/reen/js/waypoints.min.js');
		Requirements::javascript('themes/reen/js/waypoints-sticky.min.js');
		Requirements::javascript('themes/reen/js/owl.carousel.min.js');
		Requirements::javascript('themes/reen/js/jquery.isotope.min.js');
		Requirements::javascript('themes/reen/js/jquery.easytabs.min.js');
		Requirements::javascript('https://maps.googleapis.com/maps/api/js?key=AIzaSyD0jji5gjOj_ImX4uSgNd0dwIy09yL7kbQ');
		Requirements::javascript('themes/reen/js/viewport-units-buggyfill.js');
		Requirements::javascript('themes/reen/js/scripts.js');
	}

	/**
	 * Get Mailchimp form
	 *
	 * @return MailchimpForm
	 */
	public function MailChimpForm() {
		$form = parent::MailChimpForm();
		$form->addExtraClass('form-inline newsletter');
		$form->setAttribute('role', 'form');
		$form->setAttribute('id', 'newsletter');

		foreach ($form->Actions() as $action) {
			$action->setUseButtonTag(true)->addExtraClass('btn btn-default btn-submit');
		}

		return $form;
	}

	/**
	 * Get search form
	 * 
	 * @return Form
	 */
	public function SearchForm() {
		$form = parent::SearchForm();
		$form->addExtraClass('navbar-form search')->setAttribute('role', 'search');

		$fields = $form->Fields();
		$fields->dataFieldByName('Search')
			->addExtraClass('form-control')
			->setAttribute('placeholder', 'Search')
			->setValue('');

		return $form;
	}

	public function getContactPage() {
		return ContactPage::get()->First();
	}
}
