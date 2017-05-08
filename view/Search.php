<?php
/* put license here */

class SearchView {

	function __construct() {
		
	}

	function output($results) {
		include 'view/LoadAssets.php';
		if (count($results)>0) {
			echo "<h1>Found</H1>";
			foreach ($results as $row) {
				foreach ($row as $field => $value) {
					echo '<b>'.$field.'</b>: '.$value.'<br>';
				}
			}
		} else {
			echo "<h1>No results found</H1>";
		}
	}
}
?>