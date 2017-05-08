<?php
/* put license here */

class iVolunteerDB {

	// The actual instance of PDO
	private $db;

	function connect($dbtype, $host, $dbname, $username, $passwd) {
		global $idb;
		$this->db = new PDO("$dbtype:host=$host;dbname=$dbname;charset=utf8", $username, $passwd);
		$this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$this->db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
		$idb = $this->db;
	}

	/**
	 * Constructor
	 */
	function __construct($dbtype, $host, $dbname, $username, $passwd) {
		$this->connect($dbtype, $host, $dbname, $username, $passwd);
	}

	/**
	 * Singleton
	 */
	static function getInstance() {
		global $idb;
		return $idb;
	}

}

if(empty($idb)) {
	$iVolunteerDB = new iVolunteerDB($dbtype, $host, $dbname, $username, $passwd);
}

?>