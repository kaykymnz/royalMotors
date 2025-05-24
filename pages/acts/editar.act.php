<?php extract($_POST);
// var_dump($_POST);

        require('../../db/connect.php');
        @session_start();
extract($_FILES);
// var_dump($_FILES);

// var_dump($fotoAnterior1);
// var_dump($img1);

///tratamento das imagens
//imagem 1
if ($img1['size'] > 0) {
    // Gera nome novo ou reutiliza o antigo
    $arquivo1 = ($fotoAnterior1 == "") ? md5(time() . $img1['size']) . ".jpg" : $fotoAnterior1;
    
    // Caminho completo
    $caminho1 = "../../images/carrosVenda/".$arquivo1;

    // Move o novo arquivo
    move_uploaded_file($img1['tmp_name'], $caminho1);
} else {
    // Nenhum novo upload — mantém o arquivo antigo
    $arquivo1 = $fotoAnterior1;
}
//imgem2

if ($img2['size'] > 0) {
    // Gera nome novo ou reutiliza o antigo
    $arquivo2 = ($fotoAnterior2 == "") ? md5(time() . $img2['size']) . ".jpg" : $fotoAnterior2;
    
    // Caminho completo
    $caminho2 = "../../images/carrosVenda/".$arquivo2;

    // Move o novo arquivo
    move_uploaded_file($img2['tmp_name'], $caminho2);
} else {
    // Nenhum novo upload — mantém o arquivo antigo
    $arquivo2 = $fotoAnterior2;
}
//imagem3


if ($img3['size'] > 0) {
    // Gera nome novo ou reutiliza o antigo
    $arquivo3 = ($fotoAnterior3 == "") ? md5(time() . $img3['size']) . ".jpg" : $fotoAnterior3;
    
    // Caminho completo
    $caminho3 = "../../images/carrosVenda/".$arquivo3;

    // Move o novo arquivo
    move_uploaded_file($img3['tmp_name'], $caminho3);
} else {
    // Nenhum novo upload — mantém o arquivo antigo
    $arquivo3 = $fotoAnterior3;
}


//imagem4

if ($img4['size'] > 0) {
    // Gera nome novo ou reutiliza o antigo
    $arquivo4 = ($fotoAnterior4 == "") ? md5(time() . $img4['size']) . ".jpg" : $fotoAnterior4;
    
    // Caminho completo
    $caminho4 = "../../images/carrosVenda/".$arquivo4;

    // Move o novo arquivo
    move_uploaded_file($img4['tmp_name'], $caminho4);
} else {
    // Nenhum novo upload — mantém o arquivo antigo
    $arquivo4 = $fotoAnterior4;
}






// echo "<img src=\"../../images/carrosVenda/$arquivo1\" alt=erro> ";

// echo "<img src=\"../../images/carrosVenda/$arquivo2\" alt=erro> ";

// echo "<img src=\"../../images/carrosVenda/$arquivo3\" alt=erro> ";

// echo "<img src=\"../../images/carrosVenda/$arquivo4\" alt=erro> ";


$queryUpdate = "UPDATE
        carros
        SET
        modeloCarro = '$modeloCarro',
        marcaCarro = '$marcaCarro',
        anoCarro = '$anoCarro',
        motorCarro = '$motorCarro',
        kmCarro = '$kmCarro',
        valorCustoCarro = '$valorCustoCarro',
        valorVendaCarro = '$valorVendaCarro',
        corCarro = '$corCarro',
        descCarro = '$descCarro',
        dtaCadastroCarro= '$dataCadastroCarro',
        imgPrincipalCarro = '$arquivo1',
        imgCarro2 = '$arquivo2',
        imgCarro3 = '$arquivo3',
        imgCarro4 = '$arquivo4'
        
        WHERE
        carros.idCarro = $codCarro";

if(mysqli_query($con, $queryUpdate)){
    $msgEdit = "Informações alteradas com sucesso!";
}else{
        $msgEdit = "Erro ao gravar";
}

echo $msgEdit;
$_SESSION['msgEdit'] = $msgEdit;

header("location:../editarForm.php?cod=$codCarro&editar=editarCarro");