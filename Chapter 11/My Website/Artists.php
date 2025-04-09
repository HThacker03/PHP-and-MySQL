<?php
  require('header.php');
?>
<body>
    <h1>in the genre:</h1>
    <?php
    $genre1 = $_POST["genre1"];
    $genre2 = $_POST["genre2"];

    $popPunk = array ('Fall Out Boy', 'All Time Low', 'blink-182', 'The Offspring');
    sort($popPunk);
    $popRock = array('Fleetwood Mac', 'Elton John', 'The Beatles', 'Prince');
    sort($popRock);
    $popHiphop = array('Nicki Minaj', 'will.i.am', 'Macklemore', 'the Black Eyed Peas');
    sort($popHiphop);
    $popCountry = array('Taylor Swift', 'Shania Twain', 'Luke Bryan', 'Jessica Simpson');
    sort($popCountry);
    $punkRock = array('Green Day', 'Ramones', 'The Clash', 'Misfits');
    sort($punkRock);
    $rockHiphop = array('Beastie Boys', 'Limp Bizkit', 'Gorillaz', 'Insane Clown Posse');
    sort($rockHiphop);
    $rockCountry = array('Alabama', 'The Chicks', 'Eagles', 'The Grateful Dead');
    sort($rockCountry);
    $punkHiphop = array('Nothing,Nowhere', 'Travis Scott', 'Public Enemy', '6ix9ine');
    sort($punkHiphop);
    $punkCountry = array('Social Distortion', 'The Gun Club', 'The Long Ryders', 'The Beat Farmers');
    sort($punkCountry);
    $countryHiphop = array('Jelly Roll', 'Beyonce', 'Lil Nas X', 'Gutter Souls');
    sort($countryHiphop);

    echo "<h2>".$genre1." ".$genre2."</h2>";
    
    if (($genre1 == "Pop" && $genre2 == "Rock") || ($genre2 == "Pop" && $genre1 == "Rock")) {
        for ($i = 0; $i<4; $i++) {  
        echo $popRock[$i]."<br/>";
        }
    }
    else if (($genre1 == "Pop" && $genre2 == "Punk") || ($genre2 == "Pop" && $genre1 == "Punk")) {
        for ($i = 0; $i<4; $i++) {
        echo $popPunk[$i]."<br/>";
        }
    }
    else if (($genre1 == "Pop" && $genre2 == "Hip-hop") || ($genre2 == "Pop" && $genre1 == "Hip-hop")) {
        for ($i = 0; $i<4; $i++) {
            echo $popHiphop[$i]."<br/>";
            }
    }
    else if (($genre1 == "Pop" && $genre2 == "Country") || ($genre2 == "Pop" && $genre1 == "Country")) {
        for ($i = 0; $i<4; $i++) {
            echo $popCountry[$i]."<br/>";
            }
    }
    else if (($genre1 == "Punk" && $genre2 == "Rock") || ($genre2 == "Punk" && $genre1 == "Rock")) {
        for ($i = 0; $i<4; $i++) {
            echo $punkRock[$i]."<br/>";
            }
    }
    else if (($genre1 == "Hip-hop" && $genre2 == "Rock") || ($genre2 == "Hip-hop" && $genre1 == "Rock")) {
        for ($i = 0; $i<4; $i++) {
            echo $rockHiphop[$i]."<br/>";
            }
    }
    else if (($genre1 == "Country" && $genre2 == "Rock") || ($genre2 == "Country" && $genre1 == "Rock")) {
        for ($i = 0; $i<4; $i++) {
            echo $rockCountry[$i]."<br/>";
            }
    }
    else if (($genre1 == "Punk" && $genre2 == "Hip-hop") || ($genre2 == "Punk" && $genre1 == "Hip-hop")) {
        for ($i = 0; $i<4; $i++) {
            echo $punkHiphop[$i]."<br/>";
            }
    }
    else if (($genre1 == "Punk" && $genre2 == "Country") || ($genre2 == "Punk" && $genre1 == "Country")) {
        for ($i = 0; $i<4; $i++) {
            echo $punkCountry[$i]."<br/>";
            }
    }
    else if (($genre1 == "Hip-hop" && $genre2 == "Country") || ($genre2 == "Hip-hop" && $genre1 == "Country")) {
        for ($i = 0; $i<4; $i++) {
            echo $countryHiphop[$i]."<br/>";
            }
    }
    ?>
    <article>
        <?php
        function favArtForm () {
        echo '<form action="viewFavArtists.php" method="post">';
        echo '<label for="favArtist">Enter your favorite artist in this genre:</label>';
        echo '<input type="text" id="favArtist" name="favArtist">';
        echo '</form>';
        };
        
        favArtForm();
        ?>
    </article>
</body>
</html> 