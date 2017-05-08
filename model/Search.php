<?php
/* put license here */

require_once 'view/Search.php';

class Search {

	function __construct() {
		
	}

	function process() {
		if (!empty($_POST['_ivosearch'])) {
			global $idb;
			$stmt = $idb->query('SELECT NameOrg FROM organization');
			$recordset = $stmt->fetchAll(PDO::FETCH_ASSOC);
			$searcview = new SearchView();
			$searcview->output($recordset);
		} else { // no search we go bak to home page
			$model = new HomePage();
			$model->process();
		}
	}
}
?>