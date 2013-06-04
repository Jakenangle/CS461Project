<!DOCTYPE HTML PUBLIC
  "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html401/loose.dtd">
<html>
<body>
  <p>
    <?php
    $field_array = array('Professor_idProfessor', 'Class_idClass');
    $query = "SELECT name  
    FROM Crib WHERE ";
    $conditions = array(); 
    foreach($field_array as $field) {
      $value = $_GET[$field];
      if(empty($value)) continue;
      $condition = mysql_real_escape_string($field) . ' = ';
      $quote = '';
      if(!is_numeric($value)) $quote = '"';
      $condition .= $quote . mysql_real_escape_string($value) . $quote;
      $conditions[] = $condition; 
    }
    $query .= implode(' AND ', $conditions) . ';';
    $connection = mysql_connect("localhost","nang4839","700984839");
    mysql_select_db("nang4839", $connection);
    $result = mysql_query ($query , $connection);

   while ($row = mysql_fetch_array($result))
   {
      $url = $row[0];
      
      print "<a href= upload\\" . str_replace(' ', '%20', $url) . ">" . $url . "<br>";
   }
    ?>
  </p>
</body>
</html>