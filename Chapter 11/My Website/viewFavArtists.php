<?php
  require('header.php');
  require_once("file_exceptions.php");
?>
<body>
    <?php
    $document_root = $_SERVER['DOCUMENT_ROOT'];
    $favArtist = $_POST["favArtist"];

    try 
    {
    if (!($fp = fopen($document_root."/My Website/FavArtList.txt", 'ab'))) {
      throw new fileOpenException();
    }

    if (!flock($fp, LOCK_EX)) {
      throw new fileLockExection();
    }

    if (!fwrite($fp, "\n".$favArtist)) {
      throw new fileWriteException();
    }

    
    flock($fp, LOCK_UN);
    fclose($fp);
  }
  catch (fileOpenException $foe)
  {
    echo "<p>File could not be opened</p>";
  }
  catch (Exception $e)
  {
    echo "<p>Data could not be added to list at this time try again later.</p>";
  }
    $fp = fopen($document_root."/My Website/FavArtList.txt", 'rb');

    rewind($fp);

    while (!feof($fp)) {
        $list= fgets($fp);
        echo htmlspecialchars($list)."<br />";
    }
    fclose($fp);

    require('FavArtForm.php');
    ?>
</body>
</html>