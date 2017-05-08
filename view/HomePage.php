<?php
/* put license here */

class HomePageView {

	function __construct() {
		
	}

	function output() {
		include 'view/LoadAssets.php';
?>
<form name="search" id="search" method="post" action="index.php">
<input type="hidden" name="_ivolop" value="search">
<input type="text" name="_ivosearch" placeholder="Introduce your search">
<input type="submit" value="Search">
</form>
<?php
	}
}
?>