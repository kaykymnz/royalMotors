-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 18/05/2025 às 15:00
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
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `carros`
--

INSERT INTO `carros` (`idCarro`, `modeloCarro`, `marcaCarro`, `anoCarro`, `motorCarro`, `kmCarro`, `valorCustoCarro`, `valorVendaCarro`, `corCarro`, `categoriaCarro`, `descCarro`, `dtaCadastroCarro`, `imgPrincipalCarro`, `imgCarro2`, `imgCarro3`, `imgCarro4`) VALUES
(79, 'Lancer Evolution', 'Mitsubishi', '2013', '2.0 EVOLUTION X 4X4 16V TURBO INTERCOOLER GASOLINA', 12000, '23000', '80000', 'branco', 'SEDANS', 'Mitsubishi Lancer Evolution X 2013/2014\r\n\r\n\r\nDestaques do veículo:\r\n Ano/Modelo: 2013/2014\r\nMotor: 2.0 Turbo Intercooler – 295 cv \r\nTorque: 37,3 kgfm p Tração integral 4x4 (AWD)\r\nCâmbio automático de dupla embreagem (SST) de 6 marchas\r\nSuspensão esportiva \r\nAceleração de 0 a 100 km/h: 5,4 segundos!\r\n\r\n\r\nTecnologia:\r\n\r\nPaddle Shifters no volante para uma condução mais esportiva\r\nBancos esportivos\r\nRecaro para máximo suporte e estilo\r\nCentral multimídia com Bluetooth e sistema de som premium Ar-condicionado digital Dual Zone', '2025-05-10', '8fa54bd39a7b5a0316475a0df2c4d871.jpg', '10180698eb676febaa6dc7745061ea44.jpg', '823c528dbcd54568dccdfc4cf0366c79.jpg', '7d83c3f025c910e2893c6a8cde4c4a77.jpg'),
(80, 'Lancer Evolution', 'Mitsubishi', '2013', '2.0 EVOLUTION X 4X4 16V TURBO INTERCOOLER GASOLINA', 12000, '23000', '80000', 'branco', 'SEDANS', 'Mitsubishi Lancer Evolution X 2013/2014\r\n\r\n\r\nDestaques do veículo:\r\n Ano/Modelo: 2013/2014\r\nMotor: 2.0 Turbo Intercooler – 295 cv \r\nTorque: 37,3 kgfm p Tração integral 4x4 (AWD)\r\nCâmbio automático de dupla embreagem (SST) de 6 marchas\r\nSuspensão esportiva \r\nAceleração de 0 a 100 km/h: 5,4 segundos!\r\n\r\n\r\nTecnologia:\r\n\r\nPaddle Shifters no volante para uma condução mais esportiva\r\nBancos esportivos\r\nRecaro para máximo suporte e estilo\r\nCentral multimídia com Bluetooth e sistema de som premium Ar-condicionado digital Dual Zone', '2025-05-10', 'c7369a200a7671ae0c0b88596430c91a.jpg', '23545ecc2d7631a563ded2165c265664.jpg', '05ad0f3af54cee56040968a2376795e7.jpg', 'cbe5851375aea2005b4977464357294c.jpg'),
(91, 'Grand Siena', 'Fiat', '2021', '1.4 MPI ATTRACTIVE 8V FLEX 4P MANUAL', 20000, '44000', '60000', 'Branco', 'SEDANS', 'FIAT GRAND SIENA 1.4 ATTRACTIVE – ESPAÇO, ECONOMIA E CONFIANÇA\r\nO sedã ideal para quem busca conforto, robustez e ótimo custo-benefício. Disponível na Apolo Veículos.\r\n\r\nDestaques do veículo:\r\nAno/Modelo: 2021\r\nMotor: 1.4 MPI Flex – 88 cv (etanol) / 85 cv (gasolina)\r\nTorque: 12,5 kgfm\r\nCâmbio manual de 5 marchas\r\nDireção hidráulica\r\nPorta-malas amplo com 520 litros\r\nConsumo médio: até 12,3 km/l na estrada (gasolina)\r\nBaixo custo de manutenção\r\n\r\nTecnologia e Conforto:\r\nAr-condicionado\r\nVidros e travas elétricas\r\nComputador de bordo\r\nSistema de som com rádio, USB e Bluetooth\r\nVolante com comandos de mídia\r\nAlarme e chave com telecomando\r\n\r\nVeículo com histórico aprovado e garantia\r\nDocumentação em dia\r\nVisite a Apolo Veículos e conheça de perto esse excelente sedã\r\nFale com um de nossos consultores e agende seu test drive', '2025-05-17', 'be33a28d6d7b4bd193814d4c091a74ed.jpg', 'dc0b1c67a6323b443f8818d5d300aa44.jpg', 'fde9b4ed964551757323690f8b36815a.jpg', '397c09c96507e357cbb009e7fba331eb.jpg'),
(88, 'X6', 'BMW', '2023', '3.0 TWINPOWER GASOLINA XDRIVE40I M SPORT AUTOMÁTIC', 4000, '100000', '150000', 'Preto', 'SUVS', 'BMW X5 xDrive40i M Sport 3.0 Turbo 2023\r\n\r\nDestaques do veículo:\r\nAno/Modelo: 2023\r\nMotor: 3.0 TwinPower Turbo de 6 cilindros em linha – 340 cv\r\nTorque: 45,9 kgfm\r\nTração integral inteligente xDrive\r\nCâmbio automático Steptronic de 8 marchas\r\nSuspensão adaptativa M\r\nAceleração de 0 a 100 km/h: 5,5 segundos\r\n\r\nTecnologia:\r\nSistema multimídia iDrive 7.0 com tela curva de 14,9\"\r\nHead-Up Display projetado no para-brisa\r\nFaróis full LED adaptativos com assistente de farol alto\r\nPiloto automático adaptativo com assistente de faixa\r\nSistema de som surround Harman Kardon\r\nCâmera 360° com assistente de estacionamento\r\nChave digital BMW (via smartphone)\r\n\r\nConforto e Estilo:\r\nPacote M Sport com acabamento exclusivo\r\nAr-condicionado digital de 4 zonas\r\nBancos esportivos elétricos com memória e ventilação\r\nTeto solar panorâmico Sky Lounge\r\nRodas de liga leve aro 21” com design M', '2025-05-10', 'c87762fcdb00b7489e6b6e24d7296798.jpg', '5e078d2e5674cfabd32be3483da48f9f.jpg', 'f90971728112348764b1c97b5b37c623.jpg', '72c29b26c1cdda978ec5ed0edea31ddb.jpg'),
(89, 'X6', 'BMW', '2023', '3.0 TWINPOWER GASOLINA XDRIVE40I M SPORT AUTOMÁTIC', 4000, '100000', '150000', 'Preto', 'SUVS', 'BMW X5 xDrive40i M Sport 3.0 Turbo 2023\r\n\r\nDestaques do veículo:\r\nAno/Modelo: 2023\r\nMotor: 3.0 TwinPower Turbo de 6 cilindros em linha – 340 cv\r\nTorque: 45,9 kgfm\r\nTração integral inteligente xDrive\r\nCâmbio automático Steptronic de 8 marchas\r\nSuspensão adaptativa M\r\nAceleração de 0 a 100 km/h: 5,5 segundos\r\n\r\nTecnologia:\r\nSistema multimídia iDrive 7.0 com tela curva de 14,9\"\r\nHead-Up Display projetado no para-brisa\r\nFaróis full LED adaptativos com assistente de farol alto\r\nPiloto automático adaptativo com assistente de faixa\r\nSistema de som surround Harman Kardon\r\nCâmera 360° com assistente de estacionamento\r\nChave digital BMW (via smartphone)\r\n\r\nConforto e Estilo:\r\nPacote M Sport com acabamento exclusivo\r\nAr-condicionado digital de 4 zonas\r\nBancos esportivos elétricos com memória e ventilação\r\nTeto solar panorâmico Sky Lounge\r\nRodas de liga leve aro 21” com design M', '2025-05-10', 'c87762fcdb00b7489e6b6e24d7296798.jpg', '5e078d2e5674cfabd32be3483da48f9f.jpg', 'f90971728112348764b1c97b5b37c623.jpg', '72c29b26c1cdda978ec5ed0edea31ddb.jpg'),
(90, 'X6', 'BMW', '2023', '3.0 TWINPOWER GASOLINA XDRIVE40I M SPORT AUTOMÁTIC', 4000, '100000', '150000', 'Preto', 'SUVS', 'BMW X5 xDrive40i M Sport 3.0 Turbo 2023\r\n\r\nDestaques do veículo:\r\nAno/Modelo: 2023\r\nMotor: 3.0 TwinPower Turbo de 6 cilindros em linha – 340 cv\r\nTorque: 45,9 kgfm\r\nTração integral inteligente xDrive\r\nCâmbio automático Steptronic de 8 marchas\r\nSuspensão adaptativa M\r\nAceleração de 0 a 100 km/h: 5,5 segundos\r\n\r\nTecnologia:\r\nSistema multimídia iDrive 7.0 com tela curva de 14,9\"\r\nHead-Up Display projetado no para-brisa\r\nFaróis full LED adaptativos com assistente de farol alto\r\nPiloto automático adaptativo com assistente de faixa\r\nSistema de som surround Harman Kardon\r\nCâmera 360° com assistente de estacionamento\r\nChave digital BMW (via smartphone)\r\n\r\nConforto e Estilo:\r\nPacote M Sport com acabamento exclusivo\r\nAr-condicionado digital de 4 zonas\r\nBancos esportivos elétricos com memória e ventilação\r\nTeto solar panorâmico Sky Lounge\r\nRodas de liga leve aro 21” com design M', '2025-05-10', '486ebc93736c419456e15555b7ad626f.jpg', '3c113f065c0b55784317d199597c4a24.jpg', '0fbbc1955c859d41349bed3d6e0fb4bc.jpg', '6f7d7e98ec74b01a21dc4dacddd92ea9.jpg'),
(81, 'Lancer Evolution', 'Mitsubishi', '2013', '2.0 EVOLUTION X 4X4 16V TURBO INTERCOOLER GASOLINA', 12000, '23000', '80000', 'branco', 'SEDANS', 'Mitsubishi Lancer Evolution X 2013/2014\r\n\r\n\r\nDestaques do veículo:\r\n Ano/Modelo: 2013/2014\r\nMotor: 2.0 Turbo Intercooler – 295 cv \r\nTorque: 37,3 kgfm p Tração integral 4x4 (AWD)\r\nCâmbio automático de dupla embreagem (SST) de 6 marchas\r\nSuspensão esportiva \r\nAceleração de 0 a 100 km/h: 5,4 segundos!\r\n\r\n\r\nTecnologia:\r\n\r\nPaddle Shifters no volante para uma condução mais esportiva\r\nBancos esportivos\r\nRecaro para máximo suporte e estilo\r\nCentral multimídia com Bluetooth e sistema de som premium Ar-condicionado digital Dual Zone', '2025-05-10', 'd60093abebb65443126865571699ecea.jpg', '7d700ddb0217141bcf3a42416c3d003e.jpg', '6dd3caa9bdf02241b6e6166abb641b46.jpg', 'd2223df6fc5b454df71f602d810a3a7d.jpg'),
(82, 'Lancer Evolution', 'Mitsubishi', '2013', '2.0 EVOLUTION X 4X4 16V TURBO INTERCOOLER GASOLINA', 12000, '23000', '80000', 'branco', 'SEDANS', 'Mitsubishi Lancer Evolution X 2013/2014\r\n\r\n\r\nDestaques do veículo:\r\n Ano/Modelo: 2013/2014\r\nMotor: 2.0 Turbo Intercooler – 295 cv \r\nTorque: 37,3 kgfm p Tração integral 4x4 (AWD)\r\nCâmbio automático de dupla embreagem (SST) de 6 marchas\r\nSuspensão esportiva \r\nAceleração de 0 a 100 km/h: 5,4 segundos!\r\n\r\n\r\nTecnologia:\r\n\r\nPaddle Shifters no volante para uma condução mais esportiva\r\nBancos esportivos\r\nRecaro para máximo suporte e estilo\r\nCentral multimídia com Bluetooth e sistema de som premium Ar-condicionado digital Dual Zone', '2025-05-10', 'a1ae9f4a3a851c8e3ada4cc0c9b9e309.jpg', '23544672469dc12591375b80dd852da2.jpg', '0fab70abdad050b2f97de7cc81da3be7.jpg', '9010cdd64c89b6f4a797e5151aacf8e2.jpg'),
(83, 'Lancer Evolution', 'Mitsubishi', '2013', '2.0 EVOLUTION X 4X4 16V TURBO INTERCOOLER GASOLINA', 12000, '23000', '80000', 'branco', 'SEDANS', 'Mitsubishi Lancer Evolution X 2013/2014\r\n\r\n\r\nDestaques do veículo:\r\n Ano/Modelo: 2013/2014\r\nMotor: 2.0 Turbo Intercooler – 295 cv \r\nTorque: 37,3 kgfm p Tração integral 4x4 (AWD)\r\nCâmbio automático de dupla embreagem (SST) de 6 marchas\r\nSuspensão esportiva \r\nAceleração de 0 a 100 km/h: 5,4 segundos!\r\n\r\n\r\nTecnologia:\r\n\r\nPaddle Shifters no volante para uma condução mais esportiva\r\nBancos esportivos\r\nRecaro para máximo suporte e estilo\r\nCentral multimídia com Bluetooth e sistema de som premium Ar-condicionado digital Dual Zone', '2025-05-10', 'dd8e1663c919478dbb74ab3aa2fdaeda.jpg', '8b1690acc2cace882da928eed53fafe0.jpg', '2a8b4bf0c85e8f6c13864b43043feffc.jpg', 'a0df1d0649d05ec0c2a48e6279644cba.jpg'),
(84, 'X6', 'BMW', '2023', '3.0 TWINPOWER GASOLINA XDRIVE40I M SPORT AUTOMÁTIC', 4000, '100000', '150000', 'Preto', 'SUVS', 'BMW X5 xDrive40i M Sport 3.0 Turbo 2023\r\n\r\nDestaques do veículo:\r\nAno/Modelo: 2023\r\nMotor: 3.0 TwinPower Turbo de 6 cilindros em linha – 340 cv\r\nTorque: 45,9 kgfm\r\nTração integral inteligente xDrive\r\nCâmbio automático Steptronic de 8 marchas\r\nSuspensão adaptativa M\r\nAceleração de 0 a 100 km/h: 5,5 segundos\r\n\r\nTecnologia:\r\nSistema multimídia iDrive 7.0 com tela curva de 14,9\"\r\nHead-Up Display projetado no para-brisa\r\nFaróis full LED adaptativos com assistente de farol alto\r\nPiloto automático adaptativo com assistente de faixa\r\nSistema de som surround Harman Kardon\r\nCâmera 360° com assistente de estacionamento\r\nChave digital BMW (via smartphone)\r\n\r\nConforto e Estilo:\r\nPacote M Sport com acabamento exclusivo\r\nAr-condicionado digital de 4 zonas\r\nBancos esportivos elétricos com memória e ventilação\r\nTeto solar panorâmico Sky Lounge\r\nRodas de liga leve aro 21” com design M', '2025-05-10', '098812578664af541a6485919545dad9.jpg', 'afe9c625b18596f77ee39cf1d404dc26.jpg', 'c3a6b4a24d12d56ea29748f3cdf86527.jpg', 'f43be8c00272648406bba3b2d0fc7c40.jpg'),
(85, 'X6', 'BMW', '2023', '3.0 TWINPOWER GASOLINA XDRIVE40I M SPORT AUTOMÁTIC', 4000, '100000', '150000', 'Preto', 'SUVS', 'BMW X5 xDrive40i M Sport 3.0 Turbo 2023\r\n\r\nDestaques do veículo:\r\nAno/Modelo: 2023\r\nMotor: 3.0 TwinPower Turbo de 6 cilindros em linha – 340 cv\r\nTorque: 45,9 kgfm\r\nTração integral inteligente xDrive\r\nCâmbio automático Steptronic de 8 marchas\r\nSuspensão adaptativa M\r\nAceleração de 0 a 100 km/h: 5,5 segundos\r\n\r\nTecnologia:\r\nSistema multimídia iDrive 7.0 com tela curva de 14,9\"\r\nHead-Up Display projetado no para-brisa\r\nFaróis full LED adaptativos com assistente de farol alto\r\nPiloto automático adaptativo com assistente de faixa\r\nSistema de som surround Harman Kardon\r\nCâmera 360° com assistente de estacionamento\r\nChave digital BMW (via smartphone)\r\n\r\nConforto e Estilo:\r\nPacote M Sport com acabamento exclusivo\r\nAr-condicionado digital de 4 zonas\r\nBancos esportivos elétricos com memória e ventilação\r\nTeto solar panorâmico Sky Lounge\r\nRodas de liga leve aro 21” com design M', '2025-05-10', 'd985f75b6e6ba26a78d6699e5d3df2cf.jpg', '7c9c551122fea01e78893ed97594f9dd.jpg', '286f6ff135a9cd0ff49201d2288bc031.jpg', '69ac8decbe9963f36dbd04834329e01c.jpg'),
(86, 'X6', 'BMW', '2023', '3.0 TWINPOWER GASOLINA XDRIVE40I M SPORT AUTOMÁTIC', 4000, '100000', '150000', 'Preto', 'SUVS', 'BMW X5 xDrive40i M Sport 3.0 Turbo 2023\r\n\r\nDestaques do veículo:\r\nAno/Modelo: 2023\r\nMotor: 3.0 TwinPower Turbo de 6 cilindros em linha – 340 cv\r\nTorque: 45,9 kgfm\r\nTração integral inteligente xDrive\r\nCâmbio automático Steptronic de 8 marchas\r\nSuspensão adaptativa M\r\nAceleração de 0 a 100 km/h: 5,5 segundos\r\n\r\nTecnologia:\r\nSistema multimídia iDrive 7.0 com tela curva de 14,9\"\r\nHead-Up Display projetado no para-brisa\r\nFaróis full LED adaptativos com assistente de farol alto\r\nPiloto automático adaptativo com assistente de faixa\r\nSistema de som surround Harman Kardon\r\nCâmera 360° com assistente de estacionamento\r\nChave digital BMW (via smartphone)\r\n\r\nConforto e Estilo:\r\nPacote M Sport com acabamento exclusivo\r\nAr-condicionado digital de 4 zonas\r\nBancos esportivos elétricos com memória e ventilação\r\nTeto solar panorâmico Sky Lounge\r\nRodas de liga leve aro 21” com design M', '2025-05-10', '7e512a419dfb15f80331fd9782817652.jpg', '81ef978d296ce35ef57c08a82b0e7299.jpg', '74c25f3ce9f3468c00a71e162be03a4f.jpg', '7e67d8b8a09424c433fdf3fbbcb3118c.jpg'),
(87, 'X6', 'BMW', '2023', '3.0 TWINPOWER GASOLINA XDRIVE40I M SPORT AUTOMÁTIC', 4000, '100000', '150000', 'Preto', 'SUVS', 'BMW X5 xDrive40i M Sport 3.0 Turbo 2023\r\n\r\nDestaques do veículo:\r\nAno/Modelo: 2023\r\nMotor: 3.0 TwinPower Turbo de 6 cilindros em linha – 340 cv\r\nTorque: 45,9 kgfm\r\nTração integral inteligente xDrive\r\nCâmbio automático Steptronic de 8 marchas\r\nSuspensão adaptativa M\r\nAceleração de 0 a 100 km/h: 5,5 segundos\r\n\r\nTecnologia:\r\nSistema multimídia iDrive 7.0 com tela curva de 14,9\"\r\nHead-Up Display projetado no para-brisa\r\nFaróis full LED adaptativos com assistente de farol alto\r\nPiloto automático adaptativo com assistente de faixa\r\nSistema de som surround Harman Kardon\r\nCâmera 360° com assistente de estacionamento\r\nChave digital BMW (via smartphone)\r\n\r\nConforto e Estilo:\r\nPacote M Sport com acabamento exclusivo\r\nAr-condicionado digital de 4 zonas\r\nBancos esportivos elétricos com memória e ventilação\r\nTeto solar panorâmico Sky Lounge\r\nRodas de liga leve aro 21” com design M', '2025-05-10', 'e61e13674e3da97ceac3a37d1733a642.jpg', '874eaf70d6d96ae0efb007242557a9d5.jpg', '4d12951d417e5d004bac625c51e7e755.jpg', 'a7d4d9164974db24abdbfe35588fa3f8.jpg'),
(92, 'Grand Siena', 'Fiat', '2021', '1.4 MPI ATTRACTIVE 8V FLEX 4P MANUAL', 20000, '44000', '60000', 'Branco', 'SEDANS', 'FIAT GRAND SIENA 1.4 ATTRACTIVE – ESPAÇO, ECONOMIA E CONFIANÇA\r\nO sedã ideal para quem busca conforto, robustez e ótimo custo-benefício. Disponível na Apolo Veículos.\r\n\r\nDestaques do veículo:\r\nAno/Modelo: 2021\r\nMotor: 1.4 MPI Flex – 88 cv (etanol) / 85 cv (gasolina)\r\nTorque: 12,5 kgfm\r\nCâmbio manual de 5 marchas\r\nDireção hidráulica\r\nPorta-malas amplo com 520 litros\r\nConsumo médio: até 12,3 km/l na estrada (gasolina)\r\nBaixo custo de manutenção\r\n\r\nTecnologia e Conforto:\r\nAr-condicionado\r\nVidros e travas elétricas\r\nComputador de bordo\r\nSistema de som com rádio, USB e Bluetooth\r\nVolante com comandos de mídia\r\nAlarme e chave com telecomando\r\n\r\nVeículo com histórico aprovado e garantia\r\nDocumentação em dia\r\nVisite a Apolo Veículos e conheça de perto esse excelente sedã\r\nFale com um de nossos consultores e agende seu test drive', '2025-05-17', '804aff5fa2c87f7eccb831c55a374b9a.jpg', 'ebc96d6d57652ed191a9f264d1f5a985.jpg', 'ec68d38c3e705ac6c29af10798365fb0.jpg', 'b103b9ee6a003b1ba5d23e997ce5218b.jpg'),
(78, 'Lancer Evolution', 'Mitsubishi', '2013', '2.0 EVOLUTION X 4X4 16V TURBO INTERCOOLER GASOLINA', 12000, '23000', '80000', 'branco', 'SEDANS', 'Mitsubishi Lancer Evolution X 2013/2014\r\n\r\n\r\nDestaques do veículo:\r\n Ano/Modelo: 2013/2014\r\nMotor: 2.0 Turbo Intercooler – 295 cv \r\nTorque: 37,3 kgfm p Tração integral 4x4 (AWD)\r\nCâmbio automático de dupla embreagem (SST) de 6 marchas\r\nSuspensão esportiva \r\nAceleração de 0 a 100 km/h: 5,4 segundos!\r\n\r\n\r\nTecnologia:\r\n\r\nPaddle Shifters no volante para uma condução mais esportiva\r\nBancos esportivos\r\nRecaro para máximo suporte e estilo\r\nCentral multimídia com Bluetooth e sistema de som premium Ar-condicionado digital Dual Zone', '2025-05-10', '0b52551570110f2765b688f0456f9096.jpg', '93ae81cf3163d746d455f183aa39bd7c.jpg', 'd1f809270411be6f56d46d6ad7523c96.jpg', '07f3be9c7040492b2c91d02f7a07cdd6.jpg'),
(93, 'Grand Siena', 'Fiat', '2021', '1.4 MPI ATTRACTIVE 8V FLEX 4P MANUAL', 20000, '44000', '60000', 'Branco', 'SEDANS', 'FIAT GRAND SIENA 1.4 ATTRACTIVE – ESPAÇO, ECONOMIA E CONFIANÇA\r\nO sedã ideal para quem busca conforto, robustez e ótimo custo-benefício. Disponível na Apolo Veículos.\r\n\r\nDestaques do veículo:\r\nAno/Modelo: 2021\r\nMotor: 1.4 MPI Flex – 88 cv (etanol) / 85 cv (gasolina)\r\nTorque: 12,5 kgfm\r\nCâmbio manual de 5 marchas\r\nDireção hidráulica\r\nPorta-malas amplo com 520 litros\r\nConsumo médio: até 12,3 km/l na estrada (gasolina)\r\nBaixo custo de manutenção\r\n\r\nTecnologia e Conforto:\r\nAr-condicionado\r\nVidros e travas elétricas\r\nComputador de bordo\r\nSistema de som com rádio, USB e Bluetooth\r\nVolante com comandos de mídia\r\nAlarme e chave com telecomando\r\n\r\nVeículo com histórico aprovado e garantia\r\nDocumentação em dia\r\nVisite a Apolo Veículos e conheça de perto esse excelente sedã\r\nFale com um de nossos consultores e agende seu test drive', '2025-05-17', '9c9376eb6572a7a2393b4606b55eae00.jpg', '5cf22b8eb06fd30aeb3a4351037917ef.jpg', '6895e49a4f0ac8bc19ba5edc23225b31.jpg', '24b1d830df0e5bc0891401a9b4957217.jpg'),
(94, 'Grand Siena', 'Fiat', '2021', '1.4 MPI ATTRACTIVE 8V FLEX 4P MANUAL', 20000, '44000', '60000', 'Branco', 'SEDANS', 'FIAT GRAND SIENA 1.4 ATTRACTIVE – ESPAÇO, ECONOMIA E CONFIANÇA\r\nO sedã ideal para quem busca conforto, robustez e ótimo custo-benefício. Disponível na Apolo Veículos.\r\n\r\nDestaques do veículo:\r\nAno/Modelo: 2021\r\nMotor: 1.4 MPI Flex – 88 cv (etanol) / 85 cv (gasolina)\r\nTorque: 12,5 kgfm\r\nCâmbio manual de 5 marchas\r\nDireção hidráulica\r\nPorta-malas amplo com 520 litros\r\nConsumo médio: até 12,3 km/l na estrada (gasolina)\r\nBaixo custo de manutenção\r\n\r\nTecnologia e Conforto:\r\nAr-condicionado\r\nVidros e travas elétricas\r\nComputador de bordo\r\nSistema de som com rádio, USB e Bluetooth\r\nVolante com comandos de mídia\r\nAlarme e chave com telecomando\r\n\r\nVeículo com histórico aprovado e garantia\r\nDocumentação em dia\r\nVisite a Apolo Veículos e conheça de perto esse excelente sedã\r\nFale com um de nossos consultores e agende seu test drive', '2025-05-17', '6e9f8b52dafc93dd9659dcdc4d3cc877.jpg', '4a67a00e829cc0e88e41d6c823dff210.jpg', '213b60daf43b4a166f6edaecf8afa4dc.jpg', '45dd0817f8f0b0dec77c5f2e24386c33.jpg'),
(95, 'Grand Siena', 'Fiat', '2021', '1.4 MPI ATTRACTIVE 8V FLEX 4P MANUAL', 20000, '44000', '60000', 'Branco', 'SEDANS', 'FIAT GRAND SIENA 1.4 ATTRACTIVE – ESPAÇO, ECONOMIA E CONFIANÇA\r\nO sedã ideal para quem busca conforto, robustez e ótimo custo-benefício. Disponível na Apolo Veículos.\r\n\r\nDestaques do veículo:\r\nAno/Modelo: 2021\r\nMotor: 1.4 MPI Flex – 88 cv (etanol) / 85 cv (gasolina)\r\nTorque: 12,5 kgfm\r\nCâmbio manual de 5 marchas\r\nDireção hidráulica\r\nPorta-malas amplo com 520 litros\r\nConsumo médio: até 12,3 km/l na estrada (gasolina)\r\nBaixo custo de manutenção\r\n\r\nTecnologia e Conforto:\r\nAr-condicionado\r\nVidros e travas elétricas\r\nComputador de bordo\r\nSistema de som com rádio, USB e Bluetooth\r\nVolante com comandos de mídia\r\nAlarme e chave com telecomando\r\n\r\nVeículo com histórico aprovado e garantia\r\nDocumentação em dia\r\nVisite a Apolo Veículos e conheça de perto esse excelente sedã\r\nFale com um de nossos consultores e agende seu test drive', '2025-05-17', 'b5f3ad51c447dbfb268f121069be14c3.jpg', '01c790f5ca78ef11603015fe73f92dc9.jpg', '1e5f86df6142ed2691846c9cbc9bea14.jpg', 'a50dcb23023098935b13d068771cfd43.jpg'),
(96, 'Grand Siena', 'Fiat', '2021', '1.4 MPI ATTRACTIVE 8V FLEX 4P MANUAL', 20000, '44000', '60000', 'Branco', 'SEDANS', 'FIAT GRAND SIENA 1.4 ATTRACTIVE – ESPAÇO, ECONOMIA E CONFIANÇA\r\nO sedã ideal para quem busca conforto, robustez e ótimo custo-benefício. Disponível na Apolo Veículos.\r\n\r\nDestaques do veículo:\r\nAno/Modelo: 2021\r\nMotor: 1.4 MPI Flex – 88 cv (etanol) / 85 cv (gasolina)\r\nTorque: 12,5 kgfm\r\nCâmbio manual de 5 marchas\r\nDireção hidráulica\r\nPorta-malas amplo com 520 litros\r\nConsumo médio: até 12,3 km/l na estrada (gasolina)\r\nBaixo custo de manutenção\r\n\r\nTecnologia e Conforto:\r\nAr-condicionado\r\nVidros e travas elétricas\r\nComputador de bordo\r\nSistema de som com rádio, USB e Bluetooth\r\nVolante com comandos de mídia\r\nAlarme e chave com telecomando\r\n\r\nVeículo com histórico aprovado e garantia\r\nDocumentação em dia\r\nVisite a Apolo Veículos e conheça de perto esse excelente sedã\r\nFale com um de nossos consultores e agende seu test drive', '2025-05-17', '29722a02e89811f4a11b9a6dbd8c3064.jpg', '52bb94f842d9357e5c29e6f2679c7df0.jpg', '24ca0c98d90a2694f7f39da12a3a881f.jpg', '0feed5774090c63b388d5f193838d1fb.jpg'),
(97, 'Grand Siena', 'Fiat', '2021', '1.4 MPI ATTRACTIVE 8V FLEX 4P MANUAL', 20000, '44000', '60000', 'Branco', 'SEDANS', 'FIAT GRAND SIENA 1.4 ATTRACTIVE – ESPAÇO, ECONOMIA E CONFIANÇA\r\nO sedã ideal para quem busca conforto, robustez e ótimo custo-benefício. Disponível na Apolo Veículos.\r\n\r\nDestaques do veículo:\r\nAno/Modelo: 2021\r\nMotor: 1.4 MPI Flex – 88 cv (etanol) / 85 cv (gasolina)\r\nTorque: 12,5 kgfm\r\nCâmbio manual de 5 marchas\r\nDireção hidráulica\r\nPorta-malas amplo com 520 litros\r\nConsumo médio: até 12,3 km/l na estrada (gasolina)\r\nBaixo custo de manutenção\r\n\r\nTecnologia e Conforto:\r\nAr-condicionado\r\nVidros e travas elétricas\r\nComputador de bordo\r\nSistema de som com rádio, USB e Bluetooth\r\nVolante com comandos de mídia\r\nAlarme e chave com telecomando\r\n\r\nVeículo com histórico aprovado e garantia\r\nDocumentação em dia\r\nVisite a Apolo Veículos e conheça de perto esse excelente sedã\r\nFale com um de nossos consultores e agende seu test drive', '2025-05-17', 'b31d1a909170eae03803b7801e764744.jpg', 'f1e49237893a0f20669a889e0cf64315.jpg', '6ed98a6e32bde778a8ab15d3702788ef.jpg', '9f04e2be3e006f8d34e93671adcc5e2d.jpg'),
(98, 'Grand Siena', 'Fiat', '2021', '1.4 MPI ATTRACTIVE 8V FLEX 4P MANUAL', 20000, '44000', '60000', 'Branco', 'SEDANS', 'FIAT GRAND SIENA 1.4 ATTRACTIVE – ESPAÇO, ECONOMIA E CONFIANÇA\r\nO sedã ideal para quem busca conforto, robustez e ótimo custo-benefício. Disponível na Apolo Veículos.\r\n\r\nDestaques do veículo:\r\nAno/Modelo: 2021\r\nMotor: 1.4 MPI Flex – 88 cv (etanol) / 85 cv (gasolina)\r\nTorque: 12,5 kgfm\r\nCâmbio manual de 5 marchas\r\nDireção hidráulica\r\nPorta-malas amplo com 520 litros\r\nConsumo médio: até 12,3 km/l na estrada (gasolina)\r\nBaixo custo de manutenção\r\n\r\nTecnologia e Conforto:\r\nAr-condicionado\r\nVidros e travas elétricas\r\nComputador de bordo\r\nSistema de som com rádio, USB e Bluetooth\r\nVolante com comandos de mídia\r\nAlarme e chave com telecomando\r\n\r\nVeículo com histórico aprovado e garantia\r\nDocumentação em dia\r\nVisite a Apolo Veículos e conheça de perto esse excelente sedã\r\nFale com um de nossos consultores e agende seu test drive', '2025-05-17', '5c53499237b47fd8eb87b0eaed3c2b87.jpg', '0594e3b4cbb529ebb0bcf768b376bdc5.jpg', '6ac9e8a4e647f17b845b78d34d8b7d7e.jpg', '17d48e5aea8465b2841b8b711ee66c38.jpg'),
(99, 'Grand Siena', 'Fiat', '2021', '1.4 MPI ATTRACTIVE 8V FLEX 4P MANUAL', 20000, '44000', '60000', 'Branco', 'SEDANS', 'FIAT GRAND SIENA 1.4 ATTRACTIVE – ESPAÇO, ECONOMIA E CONFIANÇA\r\nO sedã ideal para quem busca conforto, robustez e ótimo custo-benefício. Disponível na Apolo Veículos.\r\n\r\nDestaques do veículo:\r\nAno/Modelo: 2021\r\nMotor: 1.4 MPI Flex – 88 cv (etanol) / 85 cv (gasolina)\r\nTorque: 12,5 kgfm\r\nCâmbio manual de 5 marchas\r\nDireção hidráulica\r\nPorta-malas amplo com 520 litros\r\nConsumo médio: até 12,3 km/l na estrada (gasolina)\r\nBaixo custo de manutenção\r\n\r\nTecnologia e Conforto:\r\nAr-condicionado\r\nVidros e travas elétricas\r\nComputador de bordo\r\nSistema de som com rádio, USB e Bluetooth\r\nVolante com comandos de mídia\r\nAlarme e chave com telecomando\r\n\r\nVeículo com histórico aprovado e garantia\r\nDocumentação em dia\r\nVisite a Apolo Veículos e conheça de perto esse excelente sedã\r\nFale com um de nossos consultores e agende seu test drive', '2025-05-17', '97fe0099485944c574e6c1eeec9bb7db.jpg', 'ea61145d0b7b7b4148d715bd082db5ec.jpg', 'cae61476464a417c170a09bbbb3df803.jpg', '9dd62745b700d777ba09a7de379f8171.jpg'),
(100, '500', 'Fiat', '2011/2012', '1.4 CULT 8V FLEX 2P MANUAL', 128000, '10000', '15000', 'Vermelha', 'SUVS', 'FIAT 500 1.4 CULT – ESTILO, PERSONALIDADE E ECONOMIA EM UM COMPACTO PREMIUM\r\nDesign icônico com dirigibilidade divertida e excelente aproveitamento urbano. Perfeito para quem quer um carro compacto, moderno e cheio de charme. Disponível na Apolo Veículos.\r\n\r\nDestaques do veículo:\r\nAno/Modelo: 2012/2013 (ou atualize conforme o ano do modelo)\r\nMotor: 1.4 8V Flex – 88 cv (etanol) / 85 cv (gasolina)\r\nTorque: 12,5 kgfm\r\nCâmbio manual de 5 marchas\r\nCompacto ideal para o dia a dia urbano\r\nConsumo médio: até 13 km/l na estrada (gasolina)\r\nDesign italiano e acabamento interno refinado\r\n\r\nTecnologia e Conforto:\r\nAr-condicionado\r\nDireção elétrica Dual Drive\r\nCentral de som com rádio, USB e entrada auxiliar\r\nComandos de som no volante\r\nVidros, travas e retrovisores elétricos\r\nAirbags frontais e freios ABS\r\nBanco traseiro bipartido\r\nSistema “My Car Fiat” de personalização de configurações\r\n\r\nVeículo periciado e com garantia\r\nDocumentação em dia\r\nVenha até a Apolo Veículos e conheça o Fiat 500\r\nEntre em contato com nossa equipe e agende um test drive', '2025-05-17', '95cac7361a65bbbff86828f6eac0d494.jpg', '81761cd059cff36157beecb6b3d2a7f7.jpg', 'e2c7820e8ccd55657452e28e55dda5fb.jpg', '0cb36070fda5ef771b88dd7b9403aafd.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `cpfCliente` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `nomeCliente` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `emailCliente` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `telefoneCliente` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `cpfCliente`, `nomeCliente`, `emailCliente`, `telefoneCliente`) VALUES
(9, '478.597.388-99', 'Kayky Bezerra', 'menezeskayky16@gmail.com', '(11) 13214-2342'),
(10, '796.228.130-89', 'Hugo Andrade', 'hugo@gmail.com', '(11) 94732-6263'),
(11, '941.307.410-04', 'Diego Garcia', 'diego@gmail.com', '(11) 94784-9783'),
(12, '651.168.200-50', 'William Alves', 'william@gmail.com', '(11) 89492-3843'),
(13, '388.770.948-93', 'Ana Luisa', 'analu@gmail.com', '(11) 98832-4673');

-- --------------------------------------------------------

--
-- Estrutura para tabela `negociacao`
--

DROP TABLE IF EXISTS `negociacao`;
CREATE TABLE IF NOT EXISTS `negociacao` (
  `idNegoc` int NOT NULL AUTO_INCREMENT,
  `idCliente` int NOT NULL,
  `idCarro` int NOT NULL,
  `idVendedor` int DEFAULT NULL,
  `dtaSolic` date NOT NULL,
  `dtaInicioContato` date DEFAULT NULL,
  `dtaConclusao` date NOT NULL,
  `statusNegoc` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `valorVenda` int NOT NULL,
  PRIMARY KEY (`idNegoc`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Despejando dados para a tabela `negociacao`
--

INSERT INTO `negociacao` (`idNegoc`, `idCliente`, `idCarro`, `idVendedor`, `dtaSolic`, `dtaInicioContato`, `dtaConclusao`, `statusNegoc`, `valorVenda`) VALUES
(24, 12, 97, NULL, '2025-05-17', NULL, '0000-00-00', 'pendente', 0),
(23, 11, 91, 1, '2025-05-17', '2025-05-17', '0000-00-00', 'vendido', 0),
(22, 10, 85, 1, '2025-05-17', '2025-05-17', '0000-00-00', 'cancelado', 0),
(21, 9, 79, 1, '2025-05-16', '2025-05-17', '0000-00-00', 'cancelado', 0),
(20, 9, 90, 1, '2025-05-14', '2025-05-17', '2025-05-18', 'vendido', 122322),
(25, 13, 99, 1, '2025-05-17', '2025-05-17', '0000-00-00', 'vendido', 0),
(26, 13, 100, 1, '2025-05-17', '2025-05-18', '0000-00-00', 'em andamento', 0);

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
