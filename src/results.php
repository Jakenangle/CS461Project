<!DOCTYPE HTML PUBLIC
  "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html401/loose.dtd">
<html>
<body>
  <p>
    <?php
    $field_array = array('Directory_name', 'creator', 'eventName', 'eventDate');
    $query = "SELECT Image.name, Directory.name  
    FROM Image LEFT JOIN Directory ON Image.Directory_name = Directory.name
    LEFT JOIN Directory_has_Keyword ON Directory.name = Directory_has_Keyword.Directory_name
    LEFT JOIN Keyword ON Directory_has_Keyword.Keyword_idKeyword = Keyword.idKeyword WHERE ";
    $conditions = array(); 
    foreach($field_array as $field) {
      $value = $_GET[$field];
      if(empty($value)) continue;
      $condition = mysql_real_escape_string(str_replace('_', '.', $field)) . ' = ';
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
      $dir = $row[1];
      
      print $dir . ".<br>";
      print "<img src = upload/" . $url . "><br>";
   }
    ?>
  </p>
</body>
</html>