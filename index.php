<?php
/* put license here */

require 'libs/include.php';

$_ivolop = (isset($_POST['_ivolop']) ? $_POST['_ivolop'] : '');
switch ($_ivolop) {
	case 'search':
		$model = new Search();
		$model->process();
		break;
	default:
		$model = new HomePage();
		$model->process();
}

?>