<?php 
	require 'database.php';
	$id = 0;
	
	if ( !empty($_GET['id'])) {
		$id = $_REQUEST['id'];
	}
	
	if ( !empty($_POST)) {
		// keep track post values
		$id = $_POST['id'];
		
		// delete data
		$pdo = Database::connect();
		$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$sql = "DELETE FROM {filename} WHERE {fileprimarykey} = ?";
		$q = $pdo->prepare($sql);
		$q->execute(array($id));
		Database::disconnect();
		header("Location: table_{filename}.php");
		
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
	    			<form class="form-horizontal" action="delete_{filename}.php" method="post">
	    			  <input type="hidden" name="id" value="<?php echo $id;?>"/>
					  <p class="alert alert-error">Wollen Sie diesen Datensatz wirklich löschen?</p>
					  <div class="form-actions">
						  <button type="submit" class="btn btn-danger">Ja</button>
						  <a class="btn" href="table_{filename}.php">Nein</a>
						</div>
					</form>
				</div>
				
    </div> <!-- /container -->
<?php
	include_once('footer.php');