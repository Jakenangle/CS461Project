<!DOCTYPE HTML PUBLIC
 "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html401/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
  <title>Stuffy Stuff Stuff</title>
</head>

<body>
  <form name="input" action="upload.php" method="post" enctype="multipart/form-data">
      Directory Name: <input type="text" name="name"><br>
      Image: <input type="file" name="file" id="file"><br>
      <input type="submit" value="Upload">
  </form>
  ------------------------------------
    <p>
      <form name="input" action="results.php" method="get">
        Directory Name: <input type="text" name="Directory.name"><br>
        Creator Name: <input type="text" name="creator"><br>
        Event Name: <input type="text" name="eventName"><br>
        Date: <input type="date" name = "eventDate"><br>
        <select name="keyword">
          <option value=0></option>a
          <?php
          $connection = mysql_connect("localhost","nang4839","700984839");
          mysql_select_db("nang4839", $connection);
          $result = mysql_query ("SELECT * 
           FROM Keyword", $connection);

          while ($row = mysql_fetch_array($result, MYSQL_NUM))
          {
            print " <option value=";
            print $row[0];
            print ">";
            print $row[1];
            print "</option>";
            print "\n";
          }
          ?>
        </select><br>
        <input type="submit" value="Submit">
    </form>
  </p>
  </body>

  </html>
