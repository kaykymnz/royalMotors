<?php require('acts/sec.php')?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/main.css">
    <link rel="icon" type="image/png" href="../images/icons/iconPag.png">
    <title>Apolo Veiculos | Cadastro Carro</title>
    <script>
        function previewImage(event, imgId) {
            var input = event.target;
            var output = document.getElementById(imgId);
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function(){
                    output.src = reader.result;
                    output.style.display = 'block';
                };
                reader.readAsDataURL(input.files[0]);
            } else {
                output.src = "";
                output.style.display = 'none';
            }
        }
    </script>
</head>
<body>
    <?php include('componentes/navbar.php');
    @session_start();
    if(isset($_SESSION['msgCadCarro'])){
        echo "<p> $_SESSION[msgCadCarro]</p>";
        unset($_SESSION['msgCadCarro']);
    }?>
    
    <div class="cadCarro">

    
<form action="acts/cadCarro.act.php" method="POST" enctype="multipart/form-data" class="formCadCarro">
    <div class="parte1">


        <div>
            <label>Modelo:</label>
            <input type="text" name="modeloCarro" required>
        </div>
        
        <div>
            <label>Marca:</label>
            <select name="marcaCarro" required>
            <!-- <option value="Audi">Audi</option> -->
                <option value="BMW">BMW</option>
                <!-- <option value="BYD">BYD</option> -->
                <option value="Chevrolet">Chevrolet</option>
                <!-- <option value="Citroën">Citroën</option> -->
                <option value="Fiat">Fiat</option>
                <option value="Ford">Ford</option>
                <option value="Honda">Honda</option>
                <option value="Hyundai">Hyundai</option>
                <!-- <option value="Jeep">Jeep</option>
                <option value="Kia">Kia</option> -->
                <!-- <option value="Mercedes">Mercedes</option> -->
                <option value="Mitsubishi">Mitsubishi</option>
                <!-- <option value="Nissan">Nissan</option> -->
                <!-- <option value="Peugeot">Peugeot</option> -->
                <!-- <option value="Porsche">Porsche</option> -->
                <option value="Renault">Renault</option>
                <!-- <option value="Subaru">Subaru</option>
                <option value="Suzuki">Suzuki</option> -->
                <option value="Toyota">Toyota</option>
                <option value="Volkswagen">Volkswagen</option>
            </select>
        </div>
        
        <div>
            <label>Ano:</label>
            <input type="number" name="anoCarro" maxlength="14" required>
        </div>
        
        <div>
            <label>Motor:</label>
            <input type="text" name="motorCarro" required>
        </div>
        <div>
            <label>Quilometragem:</label>
            <input type="number" name="kmCarro" required>
        </div>
        
        <div>
            <label>Valor de Custo:</label>
            <input type="number" name="valorCustoCarro" required>
        </div>
        
        <div>
            <label>Valor de Venda:</label>
            <input type="number" name="valorVendaCarro" required>
        </div>
        
        <div>
            <label>Cor:</label>
            <select name="corCarro" required>
                <option value="vermelho">Vermelho</option>
                <option value="azul">Azul</option>
                <option value="verde">Verde</option>
                <option value="preto">Preto</option>
                <option value="branco">Branco</option>
                <option value="cinza">Cinza</option>
                <option value="prata">Prata</option>
                <option value="roxo">Roxo</option>
                <option value="amarelo">Amarelo</option>
                <option value="laranja">Laranja</option>
                <option value="marrom">Marrom</option>
            </select>
        </div>
        
        <div>
            <label>Categoria:</label>
            <select name="categoriaCarro" required>
                <option value="SUVS">SUVS</option>
                <option value="HATCH">HATCH</option>
                <option value="SEDANS">SEDANS</option>
                <option value="PICAPES">PICAPES</option>
            </select>
        </div>
            </div>
            <div class="parte2">


        <!-- <br> -->
        <div>
            <label>Descrição:</label><br>
            <textarea name="descCarro" rows="30" cols="50" required></textarea>
        </div>
        <div>
            <!-- <label>Data de Cadastro:</label> -->
            <input type="date" name="dataCadastroCarro" id="dataCadastroCarro" required readonly>
            <script>
                document.getElementById('dataCadastroCarro').value = new Date().toISOString().split('T')[0];
            </script>
        </div>
        </div>
        <div class="parte3">
<div>
            <label>Imagem Principal:</label>
            <input type="file" name="img1" accept="image/*" onchange="previewImage(event, 'preview1')">
            <img id="preview1" src="" alt="Preview" style="max-width: 200px; display: none; margin-top: 10px;">
        </div>
        
        <div>
            <label>Imagem Extra 1:</label>
            <input type="file" name="img2" accept="image/*" onchange="previewImage(event, 'preview2')">
            <img id="preview2" src="" alt="Preview" style="max-width: 200px; display: none; margin-top: 10px;">
        </div>
        
        <div>
            <label>Imagem Extra 2:</label>
            <input type="file" name="img3" accept="image/*" onchange="previewImage(event, 'preview3')">
            <img id="preview3" src="" alt="Preview" style="max-width: 200px; display: none; margin-top: 10px;">
        </div>
        
        <div>
            <label>Imagem Extra 3:</label>
            <input type="file" name="img4" accept="image/*" onchange="previewImage(event, 'preview4')">
            <img id="preview4" src="" alt="Preview" style="max-width: 200px; display: none; margin-top: 10px;">
        </div>
        <button type="submit">Cadastrar</button>
        </div>
        
        

        
        
    
    </form>
    </div>
</body>
</html>