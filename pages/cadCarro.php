<?php require('acts/sec.php')?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/main.css">
    <link rel="icon" type="image/png" href="../images/icons/iconPag.png">
    <title>Royal Motors | Cadastro Carro</title>
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
<form action="acts/cadCarro.act.php" method="POST" enctype="multipart/form-data">
        <div>
            <label>Modelo:</label>
            <input type="text" name="modeloCarro" required>
        </div>
        
        <div>
            <label>Marca:</label>
            <select name="marcaCarro" required>
            <option value="Audi">Audi</option>
                <option value="BMW">BMW</option>
                <option value="BYD">BYD</option>
                <option value="Chevrolet">Chevrolet</option>
                <option value="Citroën">Citroën</option>
                <option value="Fiat">Fiat</option>
                <option value="Ford">Ford</option>
                <option value="Honda">Honda</option>
                <option value="Hyundai">Hyundai</option>
                <option value="Jeep">Jeep</option>
                <option value="Kia">Kia</option>
                <option value="Mercedes">Mercedes</option>
                <option value="Mitsubishi">Mitsubishi</option>
                <option value="Nissan">Nissan</option>
                <option value="Peugeot">Peugeot</option>
                <option value="Porsche">Porsche</option>
                <option value="Renault">Renault</option>
                <option value="Subaru">Subaru</option>
                <option value="Suzuki">Suzuki</option>
                <option value="Toyota">Toyota</option>
                <option value="Volkswagen">Volkswagen</option>
            </select>
        </div>
        
        <div>
            <label>Ano:</label>
            <input type="text" name="anoCarro" required>
        </div>
        
        <div>
            <label>Motor:</label>
            <input type="text" name="motorCarro" required>
        </div>
        <div>
            <label>Quilometragem:</label>
            <input type="text" name="kmCarro" required>
        </div>
        
        <div>
            <label>Valor de Custo:</label>
            <input type="text" name="valorCustoCarro" required>
        </div>
        
        <div>
            <label>Valor de Venda:</label>
            <input type="text" name="valorVendaCarro" required>
        </div>
        
        <div>
            <label>Cor:</label>
            <input type="text" name="corCarro" required>
        </div>
        
        <div>
            <label>Categoria:</label>
            <select name="categoriaCarro" required>
                <option value="SUVS">SUVS</option>
                <option value="ELETRICOS">ELETRICOS</option>
                <option value="SEDANS">SEDANS</option>
                <option value="PICAPES">PICAPES</option>
            </select>
        </div>
        
        <div>
            <label>Data de Cadastro:</label>
            <input type="date" name="dataCadastroCarro" id="dataCadastroCarro" required readonly>
            <script>
                document.getElementById('dataCadastroCarro').value = new Date().toISOString().split('T')[0];
            </script>
        </div>
        
        <div>
            <label>Imagem Principal:</label>
            <input type="file" name="img1" accept="image/*" onchange="previewImage(event, 'preview1')" required>
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
    </form>
</body>
</html>