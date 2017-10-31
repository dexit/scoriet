<?php 
  if (isset($_POST['Daten'])) {
    $p_daten = explode(";", $_POST['Daten']);
  } else {
    header("Location: table_{filename}.php");
  }
  
  require 'database.php';
	
	if ( isset($_POST['ok'])) {
		// delete data
    if ($_POST['ok']) {
      $pdo = Database::connect();
      $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
      foreach ($p_daten as $id) {
        try
        {
          $sql = "DELETE FROM {filename} WHERE {fileprimarykey} = ?";
          $q = $pdo->prepare($sql);
          $q->execute(array($id));
        }
        catch(PDOException $err) 
        {
          echo $err->getTrace().'<br />'.strval($err->getLine()).'<br />'.$err->getPrevious();        
        }
        if (!$q->rowCount() == 1) {
          header("Location: table_{filename}.php");
        }
      }
      Database::disconnect();
      header("Location: table_{filename}.php");
    }
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
        <h1>Artikel</h1>
          <form class="form-horizontal" action="delete_checked_artikel.php" method="post">
            <input type="hidden" name="Daten" value="<?php echo $_POST['Daten'];?>"/>
            <input type="hidden" name="ok" value="1"/>
<?php
              $pdo = Database::connect();
              $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	    			  foreach ($p_daten as $id) {
                $sql = 'SELECT * FROM {filename} WHERE {fileprimarykey}=' . $id;
                $q = $pdo->prepare($sql);
                $q->execute(array($id));
                if ($q->rowCount() > 0) {
                  $data = $q->fetch(PDO::FETCH_ASSOC);
                  echo $data['{fileprimarykey}'] . "<br>\r\n";
                }
              }
              Database::disconnect();
?>
          <p class="alert alert-error">Do you want to 
          delete these records?</p>
          <div class="form-actions">
            <button type="submit" class="btn btn-danger">Yes</button>
            <a class="btn" href="table_artikel.php">No</a>
          </div>
        </form>
      </div>
    </div>
<?php
	include_once('footer.php');