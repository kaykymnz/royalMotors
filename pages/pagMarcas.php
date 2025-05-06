<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/main.css">
    <link rel="icon" type="image/png" href="../images/icons/iconPag.png">
    <title> Royal Motors | Marcas </title>
</head>
<body>
    <?php
    include("componentes/navbar.php");
    // require('acts/sec.php');
    echo "<div class=mainVitrine>
    <img src=../images/bannerVertical.png>";
    include('componentes/vitrineCarros.php');
    echo "<div>";

?>
</body>
</html>