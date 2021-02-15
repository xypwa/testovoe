<?

class PDO_lib {
    private $host = '127.0.0.1';
    private $db   = 'books';
    private $user = 'root';
    private $pass = 'root';
    private $charset = 'utf8';

    private $PDO;

    private $opt = [
        PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        PDO::ATTR_EMULATE_PREPARES   => false,
    ];

    function __construct() {
    	$dns = "mysql:host={$this->host};dbname={$this->db};charset={$this->charset}";
    	$this->PDO = new PDO($dns, $this->user, $this->pass, $this->opt);
    }


    //Functions

    //Items

    public function getItemsByCatId($id) {
    	if(!intval($id)) {
    		return 0;
    	}
    	$query = 'SELECT id, title, img FROM books WHERE cat_id = ?';

    	$PDO = $this->PDO->prepare($query);
    	$result = $PDO->execute(array($id));
    	$result = $PDO->fetchAll();
    	return $result;
    }


    //Categories

    // public function getAllCategories() {
    // 	$query = 'SELECT title FROM categories';
    // 	$result = $this->PDO->query($query);
    // 	return $result;
    // }

    public function getAllRoyalCategories() {
    	$query = 'SELECT title, id FROM categories WHERE parent_id = 0';
    	$result = $this->PDO->query($query);

    	return $result;
    }


    public function getCatChildsById($id) {
    	if(!intval($id)) {
    		return 0;
    	} else {

    		$query = 'SELECT title, id FROM categories WHERE parent_id = ?';
    		$PDO = $this->PDO->prepare($query);
    		$result = $PDO->execute(array($id));
    		$result = $PDO->fetchAll();

    		foreach ($result as $key => $value) {
    			$q = 'SELECT title, id FROM categories WHERE parent_id = ?';
    			$PDO = $this->PDO->prepare($query);
    			$res = $PDO->execute(array($value['id']));
    			$res = $PDO->fetchColumn();
    			if(!$res) {
    				$result[$key]['no_sib'] = 1;
    			}
    		}

    		return $result;
    	}
    	
    }

    //Other

    public function getPathTo($id) {

    }
} 