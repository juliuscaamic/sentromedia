<?php
class GenericPage extends UserDefinedForm {

}

class GenericPage_Controller extends UserDefinedForm_Controller {

	/**
	 * Set allowed actions
	 * 
	 * @var array
	 */
	private static $allowed_actions = array(
		'Form'
	);

	public function init() {
		parent::init();

		Requirements::customCSS(<<<CSS
			ul.step-buttons {
				padding: 0;
			}
CSS
		);

		Requirements::block(FRAMEWORK_DIR .'/thirdparty/jquery/jquery.js');
		Requirements::block(USERFORMS_DIR . '/thirdparty/jquery-validate/jquery.validate.min.js');
	}

	/**
	 * User form
	 *
	 * @return  UserForm
	 */
	public function Form() {
		$form = parent::Form();
		$form->addExtraClass('forms');
		$fields = $form->Fields();

		$actions = $form->Actions();
		foreach ($actions as $action) {
			$action->useButtonTag = true;
			$action->addExtraClass('btn btn-default btn-submit');
		}

		return $form;
	}	
}