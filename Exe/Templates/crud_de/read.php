<?php 
	require 'database.php';
	$id = null;
	if ( !empty($_GET['id'])) {
		$id = $_REQUEST['id'];
	}
	
	if ( null==$id ) {
		header("Location: table_{filename}.php");
	} else {
		$pdo = Database::connect();
		$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$sql = "SELECT * FROM {filename} where {fileprimarykey} = ?";
		$q = $pdo->prepare($sql);
		$q->execute(array($id));
		$data = $q->fetch(PDO::FETCH_ASSOC);
		Database::disconnect();
	}
?>

<?php
	include_once('header.php');
?>
  <body>
	<div class="container">
<?php
	include_once('navbar.php');
	makenavbar("index");
?>    
      <div class="jumbotron">
        <h1>{filedescription}</h1>
	    			<div class="form-horizontal" >
					  {for {nmaxitems}}
            <div class="control-group">
					    <label class="control-label">{item.caption}</label>
					    <div class="controls">
						    <label class="checkbox">
						     	<?php echo $data['{item.name}'];?>
						    </label>
					    </div>
					  </div>
            {endfor}
					  <div class="form-actions">
						  <a class="btn" href="table_{filename}.php">Zurück</a>
					   </div>
					</div>
				</div>
    </div> <!-- /container -->
<?php
include_once('footer.php');