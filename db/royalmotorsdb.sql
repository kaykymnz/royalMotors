-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 08/05/2025 às 04:20
-- Versão do servidor: 9.1.0
-- Versão do PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `royalmotorsdb`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `adm`
--

DROP TABLE IF EXISTS `adm`;
CREATE TABLE IF NOT EXISTS `adm` (
  `idAdm` int NOT NULL AUTO_INCREMENT,
  `nomeAdm` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `cpfAdm` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL,
  `senhaAdm` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`idAdm`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `adm`
--

INSERT INTO `adm` (`idAdm`, `nomeAdm`, `cpfAdm`, `senhaAdm`) VALUES
(1, 'Kayky Bezerra', '47859738899', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Estrutura para tabela `carros`
--

DROP TABLE IF EXISTS `carros`;
CREATE TABLE IF NOT EXISTS `carros` (
  `idCarro` int NOT NULL AUTO_INCREMENT,
  `modeloCarro` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `marcaCarro` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `anoCarro` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL,
  `motorCarro` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `kmCarro` int NOT NULL,
  `valorCustoCarro` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `valorVendaCarro` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `corCarro` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `categoriaCarro` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL,
  `descCarro` mediumtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `dtaCadastroCarro` date NOT NULL,
  `imgPrincipalCarro` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `imgCarro2` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `imgCarro3` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `imgCarro4` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`idCarro`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `carros`
--

INSERT INTO `carros` (`idCarro`, `modeloCarro`, `marcaCarro`, `anoCarro`, `motorCarro`, `kmCarro`, `valorCustoCarro`, `valorVendaCarro`, `corCarro`, `categoriaCarro`, `descCarro`, `dtaCadastroCarro`, `imgPrincipalCarro`, `imgCarro2`, `imgCarro3`, `imgCarro4`) VALUES
(14, 'Camaro', 'Chevrolet', '2014', '6.2 SS COUPÉ', 0, '23000', '50000', 'Preto', 'SEDANS', '', '2025-03-15', '6a7c52c10c0614496fbcfdad0f333368.jpg', 'a0fa864bc0134c5256848f14bc4673f0.jpg', 'b5e52d5b4fc55994d60dde8265dd5b2e.jpg', 'b5e52d5b4fc55994d60dde8265dd5b2e.jpg'),
(15, 'Camaro', 'Chevrolet', '2014', '6.2 SS COUPÉ', 0, '23000', '50000', 'Preto', 'SEDANS', '', '2025-03-15', '9e04085545d8e0b6087ee9c6f77aaee4.jpg', '3ae1c8f567c937ae9a1b61074636a624.jpg', 'f09f27985af2dd5c2ff4c19bd752000a.jpg', 'f09f27985af2dd5c2ff4c19bd752000a.jpg'),
(16, 'Civic', 'Honda', '2024', '2.0 16V FLEXONE EX', 130000, '50000', '100000', 'Preto', 'SEDANS', '', '2025-03-15', '0acf3679be55be71fda05d251e551510.jpg', 'a886c1754661a48c4bf1d83a0476e14c.jpg', '3c55d46bfcf8a407b31afaf7ad7b353c.jpg', '3c55d46bfcf8a407b31afaf7ad7b353c.jpg'),
(17, 'Camaro', 'Chevrolet', '2014', '6.2 SS COUPÉ', 130000, '23000', '50000', 'Preto', 'SEDANS', '', '2025-03-15', 'f9e2febdbf259e9ad3e9c9c89a59273e.jpg', 'e22f0f7b8ee19c5eb8a53bc025a65c22.jpg', 'faacc6587969898136c5d8515fb339ec.jpg', 'faacc6587969898136c5d8515fb339ec.jpg'),
(18, 'Camaro', 'Chevrolet', '2014', '6.2 SS COUPÉ', 130000, '23000', '50000', 'Preto', 'SEDANS', '', '2025-03-15', '9cb82b61d2b04899f1d7e6d68e9bd9c2.jpg', '9b0a54edcbb0d28d56781f029e3b2c12.jpg', 'd7880ba99794e74571c45066837ad84c.jpg', 'd7880ba99794e74571c45066837ad84c.jpg'),
(19, 'Camaro', 'Chevrolet', '2014', '6.2 SS COUPÉ', 130000, '23000', '50000', 'Preto', 'SEDANS', '', '2025-03-15', '87df5d1fdde1b0e21b79176a2d82ab15.jpg', 'f562c9d75513f05dead06a8da90a843c.jpg', '0249154f3c083996f0c0d7cd0230f4f7.jpg', '0249154f3c083996f0c0d7cd0230f4f7.jpg'),
(26, 'Camaro', 'Chevrolet', '2014', '6.2 SS COUPÉ', 0, '23000', '50000', 'Preto', 'SEDANS', '', '2025-03-15', '9e04085545d8e0b6087ee9c6f77aaee4.jpg', '3ae1c8f567c937ae9a1b61074636a624.jpg', 'f09f27985af2dd5c2ff4c19bd752000a.jpg', 'f09f27985af2dd5c2ff4c19bd752000a.jpg'),
(25, 'Camaro', 'Chevrolet', '2014', '6.2 SS COUPÉ', 0, '23000', '50000', 'Preto', 'SEDANS', '', '2025-03-15', '6a7c52c10c0614496fbcfdad0f333368.jpg', 'a0fa864bc0134c5256848f14bc4673f0.jpg', 'b5e52d5b4fc55994d60dde8265dd5b2e.jpg', 'b5e52d5b4fc55994d60dde8265dd5b2e.jpg'),
(24, 'Grand Siena', 'Fiat', '2021', '1.6 MPI ESSENCE 16V FLEX 4P AUTOMATIZADO', 131000, '50000', '70000', 'Preto', 'SEDANS', '', '2025-03-15', '9b971067571f7f00e8c516d26fb5b12d.jpg', '1555d581ac145da2490cebb68d3ef1cc.jpg', '87f63ec2d6a90d137ec9e68f78158a43.jpg', '87f63ec2d6a90d137ec9e68f78158a43.jpg'),
(27, 'Camaro', 'Chevrolet', '2014', '6.2 SS COUPÉ', 130000, '23000', '50000', 'Preto', 'SEDANS', '', '2025-03-15', '9cb82b61d2b04899f1d7e6d68e9bd9c2.jpg', '9b0a54edcbb0d28d56781f029e3b2c12.jpg', 'd7880ba99794e74571c45066837ad84c.jpg', 'd7880ba99794e74571c45066837ad84c.jpg'),
(28, 'Camaro', 'Chevrolet', '2014', '6.2 SS COUPÉ', 130000, '23000', '50000', 'Preto', 'SEDANS', '', '2025-03-15', '87df5d1fdde1b0e21b79176a2d82ab15.jpg', 'f562c9d75513f05dead06a8da90a843c.jpg', '0249154f3c083996f0c0d7cd0230f4f7.jpg', '0249154f3c083996f0c0d7cd0230f4f7.jpg'),
(29, 'Camaro', 'Chevrolet', '2014', '6.2 SS COUPÉ', 0, '23000', '50000', 'Preto', 'SEDANS', '', '2025-03-15', '9e04085545d8e0b6087ee9c6f77aaee4.jpg', '3ae1c8f567c937ae9a1b61074636a624.jpg', 'f09f27985af2dd5c2ff4c19bd752000a.jpg', 'f09f27985af2dd5c2ff4c19bd752000a.jpg'),
(30, 'Camaro', 'Chevrolet', '2014', '6.2 SS COUPÉ', 0, '23000', '50000', 'Preto', 'SEDANS', '', '2025-03-15', '6a7c52c10c0614496fbcfdad0f333368.jpg', 'a0fa864bc0134c5256848f14bc4673f0.jpg', 'b5e52d5b4fc55994d60dde8265dd5b2e.jpg', 'b5e52d5b4fc55994d60dde8265dd5b2e.jpg'),
(42, 'Argo', 'Fiat', '2023', '1.0 FIREFLY FLEX DRIVE MANUAL', 12000, '23000', '67999', 'branco', 'SEDANS', 'FIAT ARGO DISPONÍVEL NA APOLO VEÍCULOS!Uma combinação perfeita entre design, performance e tecnologia. Pronto para transformar cada trajeto em uma experiência única!  Destaques do veículo: Ano/Modelo: 2022/2023 Motor: 1.3 Firefly 109 cv Torque: 14,2 kgfm Transmissão automática CVT de 7 marchas Direção elétrica progressiva Suspensão reforçada para maior conforto e estabilidade Consumo médio: até 13,9 km/l (gasolina) na cidade  Tecnologia: Central multimídia UConnect de 7 polegadas com espelhamento via Android Auto e Apple CarPlay Volante multifuncional com comandos de voz Ar-condicionado digital Sensor de ré com câmera traseira Computador de bordo completo Entrada USB para os passageiros traseiros', '2025-05-08', '8cc190a50f444c03c1748ba78404d33d.jpg', 'a17efcdfd1dad226f6eb10198fb6db8d.jpg', 'e8ee9199afd2cadfe60ebdea16f28068.jpg', 'e8ee9199afd2cadfe60ebdea16f28068.jpg'),
(43, 'Grand Siena', 'Fiat', '2021', '1.6 MPI ESSENCE 16V FLEX 4P AUTOMATIZADO', 131000, '50000', '70000', 'Preto', 'SEDANS', '', '2025-03-15', '9b971067571f7f00e8c516d26fb5b12d.jpg', '1555d581ac145da2490cebb68d3ef1cc.jpg', '87f63ec2d6a90d137ec9e68f78158a43.jpg', '87f63ec2d6a90d137ec9e68f78158a43.jpg'),
(41, 'Grand Siena', 'Fiat', '2021', '1.6 MPI ESSENCE 16V FLEX 4P AUTOMATIZADO', 131000, '50000', '70000', 'Preto', 'SEDANS', '', '2025-03-15', '9b971067571f7f00e8c516d26fb5b12d.jpg', '1555d581ac145da2490cebb68d3ef1cc.jpg', '87f63ec2d6a90d137ec9e68f78158a43.jpg', '87f63ec2d6a90d137ec9e68f78158a43.jpg'),
(40, 'Argo', 'Fiat', '2023', '1.0 FIREFLY FLEX DRIVE MANUAL', 12000, '23000', '67999', 'branco', 'SEDANS', 'FIAT ARGO DISPONÍVEL NA APOLO VEÍCULOS!Uma combinação perfeita entre design, performance e tecnologia. Pronto para transformar cada trajeto em uma experiência única!  Destaques do veículo: Ano/Modelo: 2022/2023 Motor: 1.3 Firefly 109 cv Torque: 14,2 kgfm Transmissão automática CVT de 7 marchas Direção elétrica progressiva Suspensão reforçada para maior conforto e estabilidade Consumo médio: até 13,9 km/l (gasolina) na cidade  Tecnologia: Central multimídia UConnect de 7 polegadas com espelhamento via Android Auto e Apple CarPlay Volante multifuncional com comandos de voz Ar-condicionado digital Sensor de ré com câmera traseira Computador de bordo completo Entrada USB para os passageiros traseiros', '2025-05-08', '8cc190a50f444c03c1748ba78404d33d.jpg', 'a17efcdfd1dad226f6eb10198fb6db8d.jpg', 'e8ee9199afd2cadfe60ebdea16f28068.jpg', 'e8ee9199afd2cadfe60ebdea16f28068.jpg'),
(38, 'Grand Siena', 'Fiat', '2021', '1.6 MPI ESSENCE 16V FLEX 4P AUTOMATIZADO', 131000, '50000', '70000', 'Preto', 'SEDANS', '', '2025-03-15', '9b971067571f7f00e8c516d26fb5b12d.jpg', '1555d581ac145da2490cebb68d3ef1cc.jpg', '87f63ec2d6a90d137ec9e68f78158a43.jpg', '87f63ec2d6a90d137ec9e68f78158a43.jpg'),
(39, 'Cronos', 'Fiat', '2023', '1.0 FIREFLY FLEX DRIVE MANUAL', 3000, '70000', '88000', 'Vermelho', 'SUVS', 'FIAT CRONOS 1.0 DRIVE – ECONOMIA E ESTILO NA MEDIDA CERTA Disponível na Apolo Veículos, o sedã que une conforto, tecnologia e baixo consumo para o seu dia a dia.  Destaques do veículo: Ano/Modelo: 2023/2024 Motor: 1.0 Firefly Flex – 75 cv (etanol) / 71 cv (gasolina) Torque: 10,7 kgfm Câmbio manual de 5 marchas Direção elétrica progressiva Consumo médio: até 14,1 km/l na estrada (gasolina) Porta-malas espaçoso com 525 litros  Tecnologia e Conforto: Central multimídia UConnect 7\" com Android Auto e Apple CarPlay Ar-condicionado Computador de bordo com tela TFT Volante multifuncional Vidros elétricos nas quatro portas Sistema de som com conexão USB e Bluetooth  Veículo periciado e com garantia Documentação em dia Visite a Apolo Veículos e surpreenda-se com o Cronos Fale com um de nossos consultores e agende seu test drive', '2025-05-08', '5aa0a3d91deb663fb9ebe853af83af5f.jpg', '8aed86b2111cfd0a48fc300d9ed03985.jpg', '614e835095a8f28ee46f773b100594a1.jpg', '614e835095a8f28ee46f773b100594a1.jpg'),
(37, 'Cronos', 'Fiat', '2023', '1.0 FIREFLY FLEX DRIVE MANUAL', 3000, '70000', '88000', 'Vermelho', 'SUVS', 'FIAT CRONOS 1.0 DRIVE – ECONOMIA E ESTILO NA MEDIDA CERTA Disponível na Apolo Veículos, o sedã que une conforto, tecnologia e baixo consumo para o seu dia a dia.  Destaques do veículo: Ano/Modelo: 2023/2024 Motor: 1.0 Firefly Flex – 75 cv (etanol) / 71 cv (gasolina) Torque: 10,7 kgfm Câmbio manual de 5 marchas Direção elétrica progressiva Consumo médio: até 14,1 km/l na estrada (gasolina) Porta-malas espaçoso com 525 litros  Tecnologia e Conforto: Central multimídia UConnect 7\" com Android Auto e Apple CarPlay Ar-condicionado Computador de bordo com tela TFT Volante multifuncional Vidros elétricos nas quatro portas Sistema de som com conexão USB e Bluetooth  Veículo periciado e com garantia Documentação em dia Visite a Apolo Veículos e surpreenda-se com o Cronos Fale com um de nossos consultores e agende seu test drive', '2025-05-08', '5aa0a3d91deb663fb9ebe853af83af5f.jpg', '8aed86b2111cfd0a48fc300d9ed03985.jpg', '614e835095a8f28ee46f773b100594a1.jpg', '614e835095a8f28ee46f773b100594a1.jpg'),
(36, 'Argo', 'Fiat', '2023', '1.0 FIREFLY FLEX DRIVE MANUAL', 12000, '23000', '67999', 'branco', 'SEDANS', 'FIAT ARGO DISPONÍVEL NA APOLO VEÍCULOS!Uma combinação perfeita entre design, performance e tecnologia. Pronto para transformar cada trajeto em uma experiência única!  Destaques do veículo: Ano/Modelo: 2022/2023 Motor: 1.3 Firefly 109 cv Torque: 14,2 kgfm Transmissão automática CVT de 7 marchas Direção elétrica progressiva Suspensão reforçada para maior conforto e estabilidade Consumo médio: até 13,9 km/l (gasolina) na cidade  Tecnologia: Central multimídia UConnect de 7 polegadas com espelhamento via Android Auto e Apple CarPlay Volante multifuncional com comandos de voz Ar-condicionado digital Sensor de ré com câmera traseira Computador de bordo completo Entrada USB para os passageiros traseiros', '2025-05-08', '8cc190a50f444c03c1748ba78404d33d.jpg', 'a17efcdfd1dad226f6eb10198fb6db8d.jpg', 'e8ee9199afd2cadfe60ebdea16f28068.jpg', 'e8ee9199afd2cadfe60ebdea16f28068.jpg'),
(44, 'Cronos', 'Fiat', '2023', '1.0 FIREFLY FLEX DRIVE MANUAL', 3000, '70000', '88000', 'Vermelho', 'SUVS', 'FIAT CRONOS 1.0 DRIVE – ECONOMIA E ESTILO NA MEDIDA CERTA Disponível na Apolo Veículos, o sedã que une conforto, tecnologia e baixo consumo para o seu dia a dia.  Destaques do veículo: Ano/Modelo: 2023/2024 Motor: 1.0 Firefly Flex – 75 cv (etanol) / 71 cv (gasolina) Torque: 10,7 kgfm Câmbio manual de 5 marchas Direção elétrica progressiva Consumo médio: até 14,1 km/l na estrada (gasolina) Porta-malas espaçoso com 525 litros  Tecnologia e Conforto: Central multimídia UConnect 7\" com Android Auto e Apple CarPlay Ar-condicionado Computador de bordo com tela TFT Volante multifuncional Vidros elétricos nas quatro portas Sistema de som com conexão USB e Bluetooth  Veículo periciado e com garantia Documentação em dia Visite a Apolo Veículos e surpreenda-se com o Cronos Fale com um de nossos consultores e agende seu test drive', '2025-05-08', '5aa0a3d91deb663fb9ebe853af83af5f.jpg', '8aed86b2111cfd0a48fc300d9ed03985.jpg', '614e835095a8f28ee46f773b100594a1.jpg', '614e835095a8f28ee46f773b100594a1.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
CREATE TABLE IF NOT EXISTS `vendedor` (
  `idVendedor` int NOT NULL AUTO_INCREMENT,
  `nomeVendedor` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `cpfVendedor` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL,
  `senhaVendedor` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`idVendedor`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `vendedor`
--

INSERT INTO `vendedor` (`idVendedor`, `nomeVendedor`, `cpfVendedor`, `senhaVendedor`) VALUES
(1, 'Hugo Andrade', '12312312312', '202cb962ac59075b964b07152d234b70');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
