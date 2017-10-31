<?php
	include_once('header.php');
?>
  <body>
	<div class="container">
<?php
	include_once('navbar.php');
	makenavbar("table_{filename}.php");
?>    
      <div class="jumbotron">
        <h1>{filedescription}</h1>
		<div class="row">
			<p>
				<a href="create_{filename}.php" class="btn btn-success">Erzeugen</a>
        <a href="#" class="btn btn-danger" onclick="alle();">Löschen</a>
        <a href="print_{filename}.php" class="btn btn-success">Drucken</a>
			</p>
			<table id="{filename}_Table" class="table table-striped table-bordered">
				  <thead>
					<tr>
            <th>Auswahl</th>
					  {for {nmaxitems}}
					  <th>{item.caption}</th>
					  {endfor}
					</tr>
				  </thead>
				  <tbody>
				  <?php 
				   include 'database.php';
				   $pdo = Database::connect();
				   $sql = 'SELECT * FROM {filename} USE INDEX ({filekeyname})';
				   foreach ($pdo->query($sql) as $row) {
							echo '<tr>';
              echo '<td><input type="checkbox" id="select' . $row['{fileprimarykey}'] . '" value="'. $row['{fileprimarykey}'].'" /></td>';
							{for {nmaxitems}}
							echo '<td>'. $row['{item.name}'] . '</td>';
							{endfor}
							echo '<td width=300>';
							echo '<a class="btn" href="read_{filename}.php?id='.$row['{fileprimarykey}'].'">Anzeigen</a>';
							echo '&nbsp;';
							echo '<a class="btn btn-success" href="update_{filename}.php?id='.$row['{fileprimarykey}'].'">Ändern</a>';
							echo '&nbsp;';
							echo '<a class="btn btn-danger" href="delete_{filename}.php?id='.$row['{fileprimarykey}'].'">Löschen</a>';
							echo '</td>';
							echo '</tr>';
				   }
				   Database::disconnect();
				  ?>
				  </tbody>
			</table>
    	</div>
      </div>
	</div>
<script type="text/javascript">
function alle() {
  var s="";
  $("#{filename}_Table tbody input:checkbox").each(function() {
    if(this.checked==true) {
      s=s+this.value+";";
    }
  });
  if(s=="") {
    return alert("Keine Datensätze ausgewält!");
  } else {
    s=s.substring(0,s.length-1);
    $.redirect('delete_checked_{filename}.php', {'Daten': s});
  };
};
</script>
<?php
include_once('footer.php');