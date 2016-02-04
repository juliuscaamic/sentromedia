<?php
class DownloadController extends Controller {

	private static $allowed_actions = array('file');

	public function init() {
		parent::init();
	}

	public function file() {
		$filename = Convert::raw2sql($this->request->param('ID'));
		if ($filename) {
			$file = File::get()->filter('Name', $filename . '.pdf');
			if ($file->exists()) {
				return SS_HTTPRequest::send_file(file_get_contents(Director::absoluteBaseURL() . $file->First()->Filename), $file->First()->Name);
			}
		}

		return false;
	}
}