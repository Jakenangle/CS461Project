<!DOCTYPE HTML PUBLIC
 "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html401/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
  <title>KU CRIB Database</title>
</head>

<body>
  <h2>Upload</h2>
  <form name="input" action="upload.php" method="post" enctype="multipart/form-data">
    Crib: <input type="file" name="file" id="file"><br>
    <select name="Professor">
      <option value=0></option>a
      <?php
      $connection = mysql_connect("localhost","nang4839","700984839");
      mysql_select_db("nang4839", $connection);
      $result = mysql_query ("SELECT * 
        FROM Professor", $connection);

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
      <select name="Class">
        <option value=0></option>
        <?php
        $connection = mysql_connect("localhost","nang4839","700984839");
        mysql_select_db("nang4839", $connection);
        $result = mysql_query ("SELECT * 
          FROM Class", $connection);

        while ($row = mysql_fetch_array($result, MYSQL_NUM))
        {
          print " <option value=";
          print $row[0];
          print ">";
          print $row[1] . $row[2] . '-' . $row[3];
          print "</option>";
          print "\n";
        }
        ?>
        </select><br>
        <input type="submit" value="Upload">
      </form>
      ------------------------------------
      <h2>Search</h2>
      <p>
      <form name="input" action="results.php" method="get">
      <select name="Professor_idProfessor">
      <option value=0></option>a
      <?php
      $connection = mysql_connect("localhost","nang4839","700984839");
      mysql_select_db("nang4839", $connection);
      $result = mysql_query ("SELECT * 
        FROM Professor", $connection);

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
      <select name="Class_idClass">
        <option value=0></option>
        <?php
        $connection = mysql_connect("localhost","nang4839","700984839");
        mysql_select_db("nang4839", $connection);
        $result = mysql_query ("SELECT * 
          FROM Class", $connection);

        while ($row = mysql_fetch_array($result, MYSQL_NUM))
        {
          print " <option value=";
          print $row[0];
          print ">";
          print $row[1] . $row[2] . '-' . $row[3];
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
