<?php
/**
 * Represents the page base class
 *
 * @author Julius <julius@sentromedia.com>
 */
class Page extends SiteTree {}

/**
 * Represents the page base class controller
 *
 * @author Julius <julius@sentromedia.com>
 */
class Page_Controller extends ContentController {

	/**
	 * Set allowed actions
	 * 
	 * @var array
	 */
	private static $allowed_actions = array(
		'MailChimpForm', 
		'SearchForm', 
		'Form'
	);

	/**
	 * Initialise the controller
	 */
	public function init() {
		parent::init();
		
		Requirements::combine_files(
			'style.css', 
			array(
				'themes/reen/css/bootstrap.min.css', 
				'themes/reen/css/main.css', 
				'themes/reen/css/green.css', 
				'themes/reen/css/owl.carousel.css', 
				'themes/reen/css/owl.transitions.css', 
				'themes/reen/css/animate.min.css', 
				'themes/reen/fonts/fontello.css', 
				'themes/reen/fonts/google-fonts.css', 
				'mailchimp/css/mailchimp.css'
			)
		);

		Requirements::combine_files(
			'script.js', 
			array(
				'themes/reen/js/jquery.min.js', 
				'themes/reen/js/jquery.easing.1.3.min.js', 
				'themes/reen/js/jquery.form.js', 
				'themes/reen/js/jquery.validate.min.js', 
				'themes/reen/js/bootstrap.min.js', 
				'themes/reen/js/bootstrap-hover-dropdown.min.js', 
				'themes/reen/js/skrollr.min.js', 
				'themes/reen/js/skrollr.stylesheets.min.js', 
				'themes/reen/js/waypoints.min.js', 
				'themes/reen/js/waypoints-sticky.min.js', 
				'themes/reen/js/owl.carousel.min.js', 
				'themes/reen/js/jquery.isotope.min.js', 
				'themes/reen/js/jquery.easytabs.min.js', 
				'themes/reen/js/viewport-units-buggyfill.js', 
				'themes/reen/js/scripts.js', 
				'mailchimp/javascript/jquery.mailchimp.js'
			)
		);

		Requirements::customScript(<<<JS
			(function($) {
			    $(document).ready(function(){
			        $('form#newsletter').mailchimp();
			    });
			})(jQuery);
JS
		);
	}

	/**
	 * Get Mailchimp form
	 *
	 * @return MailchimpForm
	 */
	public function MailChimpForm() {
		$form = parent::MailChimpForm();
		$form->addExtraClass('contactform');
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

	public function getLatestTwitterFeeds() {
		$list = new ArrayList();
		$tweets = $this->LatestTweets();
		if ($tweets) {
			foreach ($tweets as $tweet) {
				$list->push(new ArrayData(array(
					'User' => $tweet->User,
					'Date' => $tweet->Date->Long(),
					'Content' => preg_replace("/<img[^>]+\>/i", "", $tweet->Content)
				)));
			}
		}

		return $list;
	}	
}
