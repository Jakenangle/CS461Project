<?php
echo "file name is " . $_FILES[0]["name"] . "<br>";
if ($_FILES["file"]["error"] > 0)
{
    echo "Return Code: " . $_FILES["file"]["error"] . "<br>";
}
else
{

    echo "Upload: " . $_FILES["file"]["name"] . "<br>";
    echo "Type: " . $_FILES["file"]["type"] . "<br>";
    echo "Size: " . ($_FILES["file"]["size"] / 1024) . " kB<br>";
    echo "Temp file: " . $_FILES["file"]["tmp_name"] . "<br>";

    if (file_exists("upload/" . $_FILES["file"]["name"]))
    {
        echo $_FILES["file"]["name"] . " already exists. ";
    }
    else
    {
        if (move_uploaded_file($_FILES["file"]["tmp_name"],
            "upload/" . $_FILES["file"]["name"])){
            echo "Stored in: " . "upload/" . $_FILES["file"]["name"];
        }else{
            echo "Failed to store file";
        }

        $connection = mysql_connect("localhost","nang4839","700984839");
        mysql_select_db("nang4839", $connection);
       
        $result = mysql_query ("INSERT INTO Crib (name, filePath, Professor_idProfessor, Class_idClass) 
            VALUES (\"" . $_FILES["file"]["name"] . "\", \"" . $_POST["name"] . "\")", $connection);
    }
}
?> 