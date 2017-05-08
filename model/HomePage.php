<?php
/* put license here */

require_once 'view/HomePage.php';

class HomePage {

	function __construct() {
		
	}

	function process() {
		$homepageview = new HomePageView();
		$homepageview->output();
	}
}
?>