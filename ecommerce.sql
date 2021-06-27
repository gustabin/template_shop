-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-06-2021 a las 21:50:09
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `imagen` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fecha` datetime NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0 COMMENT '0= Inactivo; 1= Activo; 2=Eliminado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`, `imagen`, `fecha`, `status`) VALUES
(6, 'Celulares', 'Telefonos Celulares De Alta Gama', 'cellphones.png', '2021-01-17 14:20:23', 2),
(7, 'Televisores', 'Equipos Lcd Y Plasma', 'tvs.png', '2021-01-17 22:08:28', 1),
(8, 'Cpu', 'Procesadores De Pc', 'cpus.png', '2021-01-18 20:15:43', 2),
(9, 'Cpu', 'Procesadores De Pc', 'cpus.png', '2021-01-19 10:16:24', 1),
(10, 'Cases', 'Cases Para Pc', 'cases.png', '2021-01-19 11:40:40', 1),
(11, 'Gaming Laptops', 'Laptops Para Jugador', 'gaminglaptops.png', '2021-01-19 11:40:58', 1),
(12, 'Headphones', 'Auriculares', 'headphones.png', '2021-01-19 11:41:10', 1),
(13, 'Motherboard', 'Tarjetas Madres De Pc', 'motherboards.png', '2021-01-19 11:41:26', 1),
(14, 'Networking', 'Switches Routers Y Modems', 'networking.png', '2021-01-19 11:41:46', 1),
(15, 'Ssds', 'Memorias Ssds', 'ssds.png', '2021-01-19 11:42:06', 1),
(16, 'Tarjetas De Videos', 'Tarjetas Graficas Para Pcs', 'videocards.png', '2021-01-19 11:42:30', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `mensaje` text COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0=Inactivo; 1=Activo; 2=Eliminado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id`, `nombre`, `telefono`, `email`, `mensaje`, `fecha`, `status`) VALUES
(1, 'Lorena Bello', '1234567890', 'lorenaqbello.com', 'Quiero comprar al mayor.', '2021-01-01 16:48:34', 2),
(2, 'Jesus Castillo', '4455667788', 'jesus@gmail.com', 'Quiero un catalago.', '2021-01-02 16:48:34', 2),
(3, 'Julieta Rojas', '74747462', 'juli@gmail.com', 'Me gustaria vender sus productos', '2021-01-13 14:24:36', 2),
(4, 'Gustavo Arias', '9546679128', 'gustavoarias@outlook.com', 'Quiero ser su representante en mi pais.', '2021-02-27 22:34:52', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

CREATE TABLE `detalleventa` (
  `id` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `preciounitario` decimal(9,2) NOT NULL,
  `cantidad` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `detalleventa`
--

INSERT INTO `detalleventa` (`id`, `idventa`, `idproducto`, `preciounitario`, `cantidad`) VALUES
(11, 14, 29, '109.99', 1),
(12, 14, 31, '64.99', 1),
(13, 14, 32, '68.99', 1),
(14, 14, 26, '377.99', 1),
(15, 15, 29, '109.99', 1),
(16, 15, 31, '64.99', 1),
(17, 15, 26, '377.99', 1),
(18, 16, 33, '799.99', 1),
(19, 17, 34, '449.99', 1),
(20, 17, 35, '649.99', 1),
(21, 18, 27, '527.99', 1),
(22, 19, 29, '109.99', 1),
(23, 19, 31, '64.99', 1),
(24, 20, 19, '67.75', 1),
(25, 21, 27, '527.99', 2),
(26, 22, 33, '799.99', 2),
(27, 22, 34, '449.99', 1),
(28, 22, 35, '649.99', 4),
(29, 22, 26, '377.99', 1),
(30, 22, 28, '237.99', 3),
(31, 23, 36, '139.99', 2),
(32, 23, 17, '154.99', 1),
(33, 23, 28, '237.99', 1),
(34, 24, 29, '109.99', 2),
(35, 24, 24, '219.99', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `ciudad` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `pais` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `imagen` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `nombre`, `telefono`, `ciudad`, `pais`, `imagen`) VALUES
(1, 'Abc Corp', '1234567890', 'Buenos Aires', 'Argentina', 'logoEmpresa.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `precio` decimal(9,2) NOT NULL,
  `descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `imagen` varchar(50) COLLATE utf8_spanish2_ci DEFAULT 'sinimagen.png',
  `imagen2` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `imagen3` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `imagen4` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `imagen5` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `categoriaid` int(11) DEFAULT NULL,
  `codigo` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0= Inactivo, 1=Activo, 2=Eliminado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `descripcion`, `imagen`, `imagen2`, `imagen3`, `imagen4`, `imagen5`, `categoriaid`, `codigo`, `stock`, `fecha`, `status`) VALUES
(17, 'Corsair Crystal Icue 465x Rgb Cc9011188ww Black Steel Plastic Tempered Glass Atx Mid Tower Computer ', '154.99', 'A Strong Durable Steel Chassis And 4mmthick Tempered Glass Side And Front Panels Showcase Your Components And Rgb Fans With Ventilation Gaps For Plentiful Airflow. Room To Install Up To 6x 120mm Cooling Fans Or Multiple Radiators In Sizes Up To 360mm. Drive Trays Accommodate Up To Two 3.5in Hdds And Two 2.5in Ssds With Two Additional 2.5in Mounts. Includes Three Corsair Ll120 Rgb Cooling Fans That Deliver Powerful Airflow Up To 1500 Rpm With 16 Rgb Leds Per Fan And Seven Mesmerizing Preset Icue Lighting Profiles. Fully Control And Synchronize Your Rgb Lighting Outofthebox With The Included Icue Lighting Node Core And Corsair Icue Software. Direct Airflow Path Ensures An Obstructionfree Layout That Channels Cool Air To Your Pc’s Hottest Components. Intuitively Placed Cable Routing Channels And Tiedowns Make For Simple And Tidy Cabling That Helps Optimize Airflow. Removable Dust Filters In The Front Roof And Floor Keep Your System Clean After The Build Is Finished.', 'N82E16811139149_0.jpg', 'N82E16811139149_1.jpg', 'N82E16811139149_2.jpg', 'N82E16811139149_3.jpg', 'N82E16811139149_4.jpg', 10, 'N82E16811139149', 9, '2021-02-21 09:22:42', 1),
(18, 'Cooler Master Mastercase H500 Argb Airflow Atx Midtower With Mesh Transparent Front Panel Option 2 X', '119.99', 'Mesh Transparent Front Panel Both The Transparent And Mesh Front Panels Are Included For Maximized Airflow And Offering A Crystalclear View Of The Fans Dual 200mm Argb Fan The Iconic 200mm Argb Fans Capable Of Operating Quietly While Moving High Volumes Of Air Due To Their Size. Argb Lighting System The Preinstalled Argb Fans Can Be Managed By Either The Motherboard Or An Included Controller Connected By The Included Splitter To Create A Comprehensive Argb Lighting System. Tempered Glass Side Panel Gaming Hardware Customloop Cooling And The Pure Pride Of The Builder Is Shown In Panoramic View Through An Edgetoedge Tempered Glass Side Panel. Optimized Airflow Filtered Ventilation On The Top Panel Provides Additional Thermal Support While Also Offering Mounting Options For Future Cooling Upgrades. Hidden Handle A Builtin Handle Is Implemented On The Top Panel For Efficient Transport And Utility.', 'N82E16811119350_0.jpg', 'N82E16811119350_1.jpg', 'N82E16811119350_2.jpg', 'N82E16811119350_3.jpg', 'N82E16811119350_4.jpg', 10, 'N82E16811119350', 12, '2021-02-21 09:25:11', 1),
(19, 'Corsair Carbide Series 175r Rgb Tempered Glass Midtower Atx Gaming Case Black Cc9011171ww', '67.75', 'Give Your System A Look That’s Both Clean And Classic With Smooth Curved Edges A Polished Finish And A Frontfacing Corsair Logo Backlit By An Rgb Fan With Six Customizable Rgb Leds. An Edgetoedge Tempered Glass Side Panel Window Shows Off Your Pc’s Components. A Fulllength Psu Cover Hides Your Psu And Cables Out Of Sight Making Immaculate Builds Easier To Create Than Ever. Fits Up To 6x 120mm Or 4x 140mm Cooling Fans For Terrific Airflow That Keeps Your Pc Cool Or Multiple Radiators In Sizes Up To 360mm. Connect The Included Rgb Fan To Compatible Asus Gigabyte Or Msi Motherboards And Their Accompanying Software To Customize And Control Rgb Fan Lighting Supports Up To Four Drives For The Storage Options You Need Two Combo 3.5in 2.5in Trays In A Removable Cage One 2.5in Tray And One 2.5in Mount. Removable Dust Filters In The Floor Roof And Front Help Keep Your System Clean Long After The Build Is Finished.', 'N82E16811139141_0.jpg', 'N82E16811139141_1.jpg', 'N82E16811139141_2.jpg', 'N82E16811139141_3.jpg', 'N82E16811139141_4.jpg', 10, 'N82E16811139141', 19, '2021-02-21 09:26:22', 1),
(20, 'Rosewill Micro Atx Mini Tower Computer Case With Dual Fans Fbm01', '40.00', 'Secc Steel Micro Atx Mini Tower 2 X Usb 2.0 2 Fans Preinstalled 3 External Drive Bays 2 Internal 3.5 Drive Bays 4 Expansion Slots', 'N82E16811_0.jpg', 'N82E16811_1.jpg', 'N82E16811_2.jpg', 'N82E16811_3.jpg', 'N82E16811_4.jpg', 10, 'N82E16811147123', 9, '2021-02-21 09:27:29', 1),
(21, 'Cooler Master Masterbox Nr600 W Front Mesh Ventilation Minimal Design Tempered Glass Side Panel And ', '69.99', 'Optimal Thermal Performance Full Mesh Front Panel And Ventilated Top Panel For High Thermal Performance. Flush Tempered Glass Side Panel Design Fastened By Thumbscrews On The Rear Panel Keeps The Surface Flush And Unobstructed. Graphics Card Support Up To 410mm Generous Clearance Space To Support The Latest Graphics Cards. Headset Jack The Single 4 Pole Headset Jack Features Both Audio And Microphone Capabilities Simultaneously. Cable Management High Quality Longer Length Rubber Grommets And Generous Clearance Behind The Motherboard.', 'N82E16811119368_0.jpg', 'N82E16811119368_1.jpg', 'N82E16811119368_2.jpg', 'N82E16811119368_3.jpg', 'N82E16811119368_4.jpg', 10, 'N82E16811119368', 5, '2021-02-21 09:28:23', 1),
(22, 'Corsair Crystal Series 680x Rgb Cc9011169ww White Steel Plastic High Airflow Tempered Glass Atx Smar', '219.99', 'Outstanding High Airflow Cooling Four Cooling Fans And Direct Airflow Path Layout Delivers Cool Air To Your Pc’s Hottest Components Three Included Ll120 Rgb Fans Light Up Your System With A Total Of 48 Customizable Rgb Leds. Intelligent Control Unlimited Possibilities An Included Corsair Lighting Node Pro Turns The 680x Rgb Into A Smart Case Powered By Corsair Icue Software That Brings Your System To Life With Dynamic Rgb Lighting Synchronized Across All Your Icue Compatible Products Including Fans Rgb Led Light Strips Ddr4 Memory Keyboards Mice And More. Dualchamber Layout A Distinctive Dualchamber Design Makes It Incredibly Easy To Assemble An Immaculate System That Keeps Cables Tidy And Out Of View. Three Crystalclear Tempered Glass Panels Fitted In The Front Roof And A Hinged Easyaccess Side Panel Door Providing A Stunning View Of Your Pc’s Highprofile Components. Massive Cooling Potential Install Up To 8x 120mm Or 7x 140mm Fans', 'N82E16811139138_0.jpg', 'N82E16811139138_1.jpg', 'N82E16811139138_2.jpg', 'N82E16811139138_3.jpg', 'N82E16811139138_4.jpg', 10, 'N82E16811139138', 30, '2021-02-21 09:29:23', 1),
(23, 'Msi Mag B550 Tomahawk Am4 Amd B550 Sata 6gbs Atx Amd Motherboard', '179.99', 'Amd B550 Supports Am4 Socket 3rd Gen Amd Ryzen Processors And Future Amd Ryzen Processors With Bios Update Supports Ddr4 5100 5000 4866 4800 4733 4600 4533 4400 4266 4133 4000 3866 3733 3600 3466 3200 3066 3000 2933 2800 2667 Mhz By Axmp Oc Mode Supports Ddr4 3200 3066 3000 2933 2800 2667 2400 2133 1866 Mhz By Jedec 1dpc 1r Max Speed 5100 Mhz 1dpc 2r Max Speed 3866 Mhz 2dpc 1r Max Speed 4000 Mhz 2dpc 2r Max Speed 3600 Mhz', 'N82E16813144326_0.jpg', 'N82E16813144326_1.jpg', 'N82E16813144326_2.jpg', 'N82E16813144326_3.jpg', 'N82E16813144326_4.jpg', 13, 'N82E16813144326', 4, '2021-02-21 09:30:40', 1),
(24, 'Gigabyte X570 Aorus Elite Wifi Am4 Amd X570 Sata 6gbs Atx Amd Motherboard', '219.99', 'Support For Ryzen 5000 Series With Bios Update Supports Amd Ryzen 5000 Series3rd Gen Ryzen2nd Gen Ryzen 3nd Gen Ryzen With Radeon Vega Graphics2nd Gen Ryzen With Radeon Vega Graphicsryzen With Radeon Vega Graphics Processors Dual Channel Eccnonecc Unbuffered Ddr4 4 Dimms 122 Phases Digital Vrm Advanced Heatsink Design With Enlarge Heatsink Dual Ultrafast Nvme Pcie 4.03.0 X4 M.2 Single Thermal Guard Intel Dualband 802.11 Ac Wifi Bt 4.2 Ampup Audio With Alc1200 Intel Gigabit Lan Rgb Fusion 2.0 With Multizone Addressable Led Light Show Design Smart Fan 5 Hybrid Fan Headers With Fan Stop Front Panel Usb 3.2 Gen 2 Typec Io Shield Armor Qflash Plus Update Bios Without Installing Cpu Memory Gpu', 'N82E16813145165_0.jpg', 'N82E16813145165_1.jpg', 'N82E16813145165_2.jpg', 'N82E16813145165_3.jpg', 'N82E16813145165_4.jpg', 13, 'N82E16813145165', 7, '2021-02-21 09:31:38', 1),
(25, 'Asus Rog Strix B550f Gaming Wifi 6 Amd Am4 3rd Gen Ryzen Atx Gaming Motherboard Pcie 4.0 2.5gb Lan B', '209.99', 'Bios Update Might Require For Amd Zen 3 Ryzen 5000 Series Cpu Amd Am4 Socket And Pcie 4.0 The Perfect Pairing For 3rd Gen Amd Ryzen Cpus Robust Power Design 122 Drmos Power Stages With Highquality Alloy Chokes And Durable Capacitors To Provide Reliable Power For The Latest Highcorecount Amd Cpus Optimized Thermal Solution Fanless Vrm And Chipset Heatsinks With Asus Stack Cool 3 Design Keep Your System Running Reliably Under Heavy Load By Enhancing Passive Cooling Capacity For Critical Onboard Components Highperformance Gaming Networking Onboard Wifi 6 802.11ax Bluetooth V5.1 And 2.5 Gb Lan With Asus Languard Best Gaming Connectivity Supports Hdmi 2.1 4k@60hz And Displayport 1.2 Output Plus Dual M.2 Slots Nvme Ssd One With Pcie 4.0 X4 Connectivity Usb 3.2 Gen 2 Typec Port And Thunderbolt Header', 'N82E16813_0.jpg', 'N82E16813_1.jpg', 'N82E16813_2.jpg', 'N82E16813_3.jpg', 'N82E16813_4.jpg', 13, 'N82E16813119311', 6, '2021-02-21 09:32:32', 1),
(26, 'Samsung 43 Class Tu8000 Series Crystal Uhd 4k Smart Tv Un43tu8000fxza 2020 Model', '377.99', 'Purcolor Color Processing Directlit Led Backlight With Uhd Dimming Frame Dimming Builtin Bixby And Alexa Intelligent Voice Assistants Wifi 5 802.11ac Provides Fast Reliable Wireless Streaming Builtin Downfiring Speakers 10 Watts X 2', 'N82E16889_0.jpg', 'N82E16889_1.jpg', 'N82E16889_2.jpg', 'N82E16889_3.jpg', 'N82E16889_4.jpg', 7, 'N82E16889356614', 1, '2021-02-21 09:33:41', 1),
(27, 'Samsung 43 Class Q60t Series Qled 4k Uhd Hdr Smart Tv Qn43q60tafxza 2020 Model', '527.99', '100 Color Volume With Quantum Dot Quantum Dots Produce Over A Billion Shades Of Color That Stay Truetolife Even In Bright Scenes. Dual Led A System Of Dedicated Warm And Cool Led Backlights Enhance Contrast Details. Quantum Hdr Expands The Range Of Color And Detail Beyond Whats Possible On Hdtvs. Smart Tv Powered By Tizen Go Beyond Smart Tv With Nextgen Apps Super Easy Control And A Host Of Enhancements That Elevate The Tv Watching Experience. Quantum Processor 4k Lite This Ultrafast Processor Optimizes Content For Qled And Transforms Everything You Watch Into Stunning 4k. Alexa Builtin Ask More From Your Tv. Just Ask Alexa To Open Apps Change The Channel Search For Movies And Shows Play Music Control Your Smart Home Devices And More. To Talk To Alexa Press And Hold The Mic Button On Your Remote.', 'N82E16889356578_0.jpg', 'N82E16889356578_1.jpg', 'N82E16889356578_2.jpg', 'N82E16889356578_3.jpg', 'N82E16889356578_4.jpg', 7, 'N82E16889356578', 0, '2021-02-21 09:34:37', 1),
(28, 'Samsung 32 N5300 Full Hd 1080p Smart Tv Un32n5300afxza 2018 Model', '237.99', 'Edgelit Led Backlight With Micro Dimming Pro 802.11ac Wifi Provides Reliable Wireless Streaming Mobiletotv And Tvtomobile Wireless Mirroring Builtin Downfiring Speakers 5 Watts X 2', 'N82E16889356337_0.jpg', 'N82E16889356337_1.jpg', 'N82E16889356337_2.jpg', 'N82E16889356337_3.jpg', 'N82E16889356337_4.jpg', 7, 'N82E16889356337', 4, '2021-02-21 09:35:27', 1),
(29, 'Corsair Hs60 Haptic Usb Connector Circumaural Stereo Gaming Headset With Haptic Bass', '109.99', 'Experience The Game Like Never Before With Haptic Bass Powered By Taction Technology Creating A Much Wider Range Of Perceptible Lowend Frequencies Its Sound You Can Feel. Adjustable Ear Cups Fitted With Plush Memory Foam Provide Exceptional Comfort For Hours Of Gameplay. Highquality Customtuned 50mm Neodymium Audio Drivers Deliver Superb Sound Quality With The Range To Hear Everything You Need On The Battlefield. A Fully Detachable Noisecancelling Unidirectional Microphone Reduces Ambient Noise For Excellent Voice Clarity. Lightweight And Durable Construction With Aluminum Yokes Gives The Hs60 Haptic Years Of Longevity. Onear Volume And Haptic Effect Controls Enable Onthefly Adjustments Without Distracting You From Your Game. Connects To Your Pc Via Usb Enabling Custom Audio Equalizer Settings And More Through Powerful Corsair Icue Software. Compatible With Windows Sonic Surround Sound For 360?? Audio That Puts You Right In The Middle Of The Game.', 'N82E16826816166_0.jpg', 'N82E16826816166_1.jpg', 'N82E16826816166_2.jpg', 'N82E16826816166_3.jpg', 'N82E16826816166_4.jpg', 12, 'N82E16826816166', 3, '2021-02-21 09:36:28', 1),
(30, 'Anker Soundcore Life Q20 Hybrid Active Noise Cancelling Headphones Wireless Over Ear Bluetooth Headp', '64.99', 'Hires Audio Certified Custom Oversized 40 Mm Dynamic Drivers Produce Hires Audio A Certification Only Awarded To Audio Devices Capable Of Producing Exceptional Sound. Life Q20 Active Noise Cancelling Headphones Reproduce Your Music With Extended High Frequencies That Reach Up To 40 Khz For Extraordinary Clarity And Detail. Reduce Ambient Noises By Up To 90 Our Team Of Engineers Conducted More Than 100 000 Tests In Reallife Scenarios To Finetune Life Q20s 4 Builtin Anc Microphones And Digital Active Noise Cancellation Algorithm. As A Result The Hybrid Active Noise Cancellation Can Detect And Cancel Out A Wider Range Of Low And Midfrequency Noises Such As Cars And Airplane Engines. 100 Stronger Bass Our Exclusive Bassup Technology Conducts Realtime Analysis Of The Low Frequencies To Instantly Strengthen The Bass Output. Double Press The Play Button When Listening To Bassheavy Genres Like Edm And Hiphop For An Amplified Listening Experience.', '9SIACCUAMP1526_0.jpg', '9SIACCUAMP1526_1.jpg', '9SIACCUAMP1526_2.jpg', '9SIACCUAMP1526_3.jpg', '9SIACCUAMP1526_4.jpg', 12, '9SIACCUAMP1526', 25, '2021-02-21 09:37:27', 1),
(31, 'Anker Soundcore Life Q20 Hybrid Active Noise Cancelling Headphones Wireless Over Ear Bluetooth Headp', '64.99', 'Hires Audio Certified Custom Oversized 40 Mm Dynamic Drivers Produce Hires Audio—a Certification Only Awarded To Audio Devices Capable Of Producing Exceptional Sound. Life Q20 Active Noise Cancelling Headphones Reproduce Your Music With Extended High Frequencies That Reach Up To 40 Khz For Extraordinary Clarity And Detail. Reduce Ambient Noises By Up To 90 Our Team Of Engineers Conducted More Than 100 000 Tests In Reallife Scenarios To Finetune Life Q20s 4 Builtin Anc Microphones And Digital Active Noise Cancellation Algorithm. As A Result The Hybrid Active Noise Cancellation Can Detect And Cancel Out A Wider Range Of Low And Midfrequency Noises Such As Cars And Airplane Engines. 100 Stronger Bass Our Exclusive Bassup Technology Conducts Realtime Analysis Of The Low Frequencies To Instantly Strengthen The Bass Output. Double Press The Play Button When Listening To Bassheavy Genres Like Edm And Hiphop For An Amplified Listening Experience.', '9SIACCUCN_0.jpg', '9SIACCUCN_1.jpg', '9SIACCUCN_2.jpg', '9SIACCUCN_3.jpg', '9SIACCUCN_4.jpg', 12, '9SIACCUCN97195', 15, '2021-02-21 09:38:17', 1),
(32, 'Corsair Void Rgb Elite Usb Connector Circumaural Premium Gaming Headset With 7.1 Surround Sound Carb', '68.99', 'Stunning Sound Hear Everything From The Lightest Footstep To The Most Thundering Explosion Thanks To Premium Customtuned 50mm Highdensity Neodymium Audio Drivers With An Expanded Frequency Range Of 20hz30000hz. Optimized Omnidirectional Microphone Picks Up Your Voice With Exceptional Clarity While A Flipup Mute Function And A Builtin Led Mute Indicator Ensure You Know When Youll Be Heard And When You Wont. Immersive 7.1 Surround Sound Create A Multichannel Audio Experience On Pc That Puts You Right In The Middle Of Your Game. Onear Volume And Mute Controls Make Onthefly Adjustments Without Distracting You From Your Game. Dynamic Rgb Lighting Customize Your Look With Rgb Lighting On Each Ear Cup Allowing For A Near Limitless Array Of Colors And Effects. Discordcertified For Crystalclear Communication And Outstanding Sound.', 'N82E16826816144_0.jpg', 'N82E16826816144_1.jpg', 'N82E16826816144_2.jpg', 'N82E16826816144_3.jpg', 'N82E16826816144_4.jpg', 12, 'N82E16826816144', 27, '2021-02-21 09:39:09', 1),
(33, 'Msi Geforce Gtx 1660 Super Directx 12 Gtx 1660 Super Gaming X 6gb 192bit Gddr6 Pci Express 3.0 X16 H', '799.99', '6gb 192bit Gddr6 Boost Clock 1830 Mhz 1 X Hdmi 2.0b 3 X Displayport 1.4 1408 Cuda Cores Pci Express 3.0 X16', '9SIARA8D2_0.jpg', '9SIARA8D2_1.jpg', '9SIARA8D2_2.jpg', '9SIARA8D2_3.jpg', '9SIARA8D2_4.jpg', 16, '9SIARA8D2G6434', 14, '2021-02-21 09:40:26', 1),
(34, 'Msi Geforce Gtx 1050 Ti Directx 12 Gtx 1050 Ti Gaming X 4g 4gb 128bit Gddr5 Pci Express 3.0 X16 Hdcp', '449.99', '4gb 128bit Gddr5 Core Clock 1379 Mhz Oc 1354 Mhz Gaming 1290 Mhz Silent Boost Clock 1493 Mhz Oc 1468 Mhz Gaming 1392 Mhz Silent 1 X Dldvid 1 X Hdmi 2.0 1 X Displayport 1.4 768 Cuda Cores Pci Express 3.0 X16', '9SIA4RE91_0.jpg', '9SIA4RE91_1.jpg', '9SIA4RE91_2.jpg', '9SIA4RE91_3.jpg', '9SIA4RE91_4.jpg', 16, '9SIA4RE91C5007', 10, '2021-02-21 09:41:23', 1),
(35, 'Xfx Radeon Rx 580 Directx 12 Rx580p8dfd6 Xxx Edition 8gb 256bit Gddr5 Pci Express 3.0 Crossfirex Sup', '649.99', '8gb 256bit Gddr5 Core Clock True 1366 Mhz Oc 1386 Mhz 1 X Dldvid 1 X Hdmi 2.0b 3 X Displayport 1.4 2304 Stream Processors Pci Express 3.0 3 Years With Registration At Xfx', '9SIA6V6DW_0.jpg', '9SIA6V6DW_1.jpg', '9SIA6V6DW_2.jpg', '9SIA6V6DW_3.jpg', '9SIA6V6DW_4.jpg', 16, '9SIA6V6DWX1462', 7, '2021-02-21 09:42:18', 1),
(36, 'Asus Geforce Gt 1030 2gb Phoenix Fan Oc Edition Hdmi Dvi Graphics Card Phgt1030o2g', '139.99', '2gb 64bit Gddr5 Core Clock 1278 Mhz Oc Mode 1252 Mhz Gaming Mode Boost Clock 1531 Mhz Oc Mode 1506 Mhz Gaming Mode 1 X Dvid 1 X Hdmi 2.0b 384 Cuda Cores Pci Express 3.0', '9SIAPMXD8_0.jpg', '9SIAPMXD8_1.jpg', '9SIAPMXD8_2.jpg', '9SIAPMXD8_3.jpg', '9SIAPMXD8_4.jpg', 16, '9SIAPMXD808126', 18, '2021-02-21 09:43:08', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `accesos` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` datetime NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0 COMMENT '0=Inactivo; 1=Activo; 2=Eliminado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`, `descripcion`, `accesos`, `fecha`, `status`) VALUES
(1, 'Administrador', 'Genera Los Permisos De Los Usuarios Del Sistema', 'Usuarios;Productos;Categorias;Roles;Dashboard;Empresa;Importar;Contacto', '2021-01-19 17:01:18', 1),
(2, 'Supervisor', 'Registra los nuevos usuarios', 'Usuarios;Productos;;;Dashboard;;;Contacto', '2021-01-30 13:28:38', 1),
(3, 'Usuario de la tienda', 'Usuario de la tienda', 'Dashboard;;;', '2021-02-15 18:30:39', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `cuit` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombrefiscal` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `rolid` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0 COMMENT '0=Inactivo; 1=Activo; 2=Eliminado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `telefono`, `email`, `password`, `cuit`, `nombrefiscal`, `direccion`, `rolid`, `fecha`, `status`) VALUES
(1, 'Padrón', 'Pérez Mora', '3051024545', 'pedro@perez.com', '1234567890', '1020304050', 'Pedro Perez S.A.', 'Av Corriente 308 Piso 2', 1, '2021-01-29 17:36:38', 1),
(2, 'Luis', 'Guzman', '9546781212', 'luis@guzman.com', 'SUwySXFscmMxeXQveVkrdlY0bEd6dz09', '8987978675', 'luigy corp', 'Av Cordoba 2020', 2, '2021-01-13 14:24:36', 2),
(4, 'Caroli', 'Mata', '87654567', 'carolis@mata.com', 'Y1RtWkhFRkJZUHpiWnJKSUZGdXRKdz09', '737373747', 'Carol s.a.', 'Av Rivadavia 4040', 1, '2021-01-30 14:00:00', 0),
(5, 'Federico', 'Gutierrez', '1234567890', 'fede@gmail.com', 'Ujh2aEI3Sk9jeFlxMmtBc1lBeVlkUT09', '12345678', 'Fede tienda', 'Av Pacifico 4545 Piso 3 Dpto A', 1, '2021-02-14 10:26:00', 1),
(7, 'Jesus', 'Castillo', '564212099', 'gustabin@yahoo.com', 'WHZvSnJkVFIxZzVQcS9iWE95U3h6dz09', '987654567', '', 'Av Constitución 6756 Piso 2 Apto 2', 1, '2021-02-28 10:10:11', 1),
(19, 'Gustavo', 'Arias', '9546679128', 'gustavoarias@outlook.com', 'SDgzS0xGY3I4TnkzTXlTdlk1Q2JSdz09', 'J112878787878', '', '8245 NW 108th AveUnit 9', 1, '2021-02-28 13:00:34', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `clavetransaccion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `paypaldatos` text COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `total` decimal(9,2) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `codigo` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` datetime NOT NULL,
  `status` int(1) NOT NULL COMMENT '0=Pendiente; 1=Completada o Aprobada; 2=Eliminada\r\n3=Entregada'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `clavetransaccion`, `paypaldatos`, `email`, `total`, `nombre`, `direccion`, `codigo`, `fecha`, `status`) VALUES
(14, 'me1qf8g6i9h1obqsbapvlsvrtl', '', 'fede@gmail.com', '621.96', 'Federico Gutierrez', 'Av Pacifico 4545 Piso 3 Dpto A', '', '2021-02-27 20:10:38', 2),
(15, 'me1qf8g6i9h1obqsbapvlsvrtl', '{\"id\":\"PAYID-MA5NDFQ1X624356E33072645\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"4CL249064M348390P\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-armbf3695059@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"EH4SJUX2ZHH78\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"},\"phone\":\"4088980910\",\"country_code\":\"US\"}},\"transactions\":[{\"amount\":{\"total\":\"552.97\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"552.97\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"QD2QWWQF9NVTU\",\"email\":\"sb-47qb8s3684635@business.example.com\"},\"description\":\"Compra de productos a Super tienda:$552.97\",\"custom\":\"me1qf8g6i9h1obqsbapvlsvrtl#cTd3b0Nib1c2NjViUXU1S0NydWFBUT09\",\"soft_descriptor\":\"PAYPAL *JOHNDOESTES\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"related_resources\":[{\"sale\":{\"id\":\"00U41976WF7808429\",\"state\":\"completed\",\"amount\":{\"total\":\"552.97\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"552.97\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"16.34\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-MA5NDFQ1X624356E33072645\",\"create_time\":\"2021-02-27T23:11:57Z\",\"update_time\":\"2021-02-27T23:11:57Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/00U41976WF7808429\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/00U41976WF7808429/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MA5NDFQ1X624356E33072645\",\"rel\":\"parent_payment\",\"method\":\"GET\"}],\"soft_descriptor\":\"PAYPAL *JOHNDOESTES\"}}]}],\"create_time\":\"2021-02-27T23:11:18Z\",\"update_time\":\"2021-02-27T23:11:57Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MA5NDFQ1X624356E33072645\",\"rel\":\"self\",\"method\":\"GET\"}]}', 'fede@gmail.com', '552.97', 'Federico Gutierrez', 'Av Pacifico 4545 Piso 3 Dpto A', '', '2021-02-27 20:11:01', 3),
(16, 'me1qf8g6i9h1obqsbapvlsvrtl', '{\"id\":\"PAYID-MA5NF7A8BR569364N5121234\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"9M936731H7708903R\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-armbf3695059@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"EH4SJUX2ZHH78\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"},\"phone\":\"4088980910\",\"country_code\":\"US\"}},\"transactions\":[{\"amount\":{\"total\":\"799.99\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"799.99\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"QD2QWWQF9NVTU\",\"email\":\"sb-47qb8s3684635@business.example.com\"},\"description\":\"Compra de productos a Super tienda:$799.99\",\"custom\":\"me1qf8g6i9h1obqsbapvlsvrtl#cC9qNmtENzY5U1d5c05TS290S0YwQT09\",\"soft_descriptor\":\"PAYPAL *JOHNDOESTES\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"related_resources\":[{\"sale\":{\"id\":\"2WW539222P869582X\",\"state\":\"completed\",\"amount\":{\"total\":\"799.99\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"799.99\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"23.50\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-MA5NF7A8BR569364N5121234\",\"create_time\":\"2021-02-27T23:17:30Z\",\"update_time\":\"2021-02-27T23:17:30Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/2WW539222P869582X\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/2WW539222P869582X/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MA5NF7A8BR569364N5121234\",\"rel\":\"parent_payment\",\"method\":\"GET\"}],\"soft_descriptor\":\"PAYPAL *JOHNDOESTES\"}}]}],\"create_time\":\"2021-02-27T23:17:16Z\",\"update_time\":\"2021-02-27T23:17:30Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MA5NF7A8BR569364N5121234\",\"rel\":\"self\",\"method\":\"GET\"}]}', 'fede@gmail.com', '799.99', 'Federico Gutierrez', 'Av Pacifico 4545 Piso 3 Dpto A', '', '2021-02-27 20:16:57', 3),
(17, 'me1qf8g6i9h1obqsbapvlsvrtl', '{\"id\":\"PAYID-MA5NHJA81W53464K1801062M\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"53H66283LT8910734\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-armbf3695059@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"EH4SJUX2ZHH78\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"},\"phone\":\"4088980910\",\"country_code\":\"US\"}},\"transactions\":[{\"amount\":{\"total\":\"1099.98\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"1099.98\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"QD2QWWQF9NVTU\",\"email\":\"sb-47qb8s3684635@business.example.com\"},\"description\":\"Compra de productos a Super tienda:$1,099.98\",\"custom\":\"me1qf8g6i9h1obqsbapvlsvrtl#YkZKbW9HOFJZUVhXd2Vob21iRTlsQT09\",\"soft_descriptor\":\"PAYPAL *JOHNDOESTES\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"related_resources\":[{\"sale\":{\"id\":\"3FN38045YH494790F\",\"state\":\"completed\",\"amount\":{\"total\":\"1099.98\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"1099.98\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"32.20\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-MA5NHJA81W53464K1801062M\",\"create_time\":\"2021-02-27T23:20:19Z\",\"update_time\":\"2021-02-27T23:20:19Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/3FN38045YH494790F\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/3FN38045YH494790F/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MA5NHJA81W53464K1801062M\",\"rel\":\"parent_payment\",\"method\":\"GET\"}],\"soft_descriptor\":\"PAYPAL *JOHNDOESTES\"}}]}],\"create_time\":\"2021-02-27T23:20:04Z\",\"update_time\":\"2021-02-27T23:20:19Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MA5NHJA81W53464K1801062M\",\"rel\":\"self\",\"method\":\"GET\"}]}', 'fede@gmail.com', '1099.98', 'Federico Gutierrez', 'Av Pacifico 4545 Piso 3 Dpto A', '', '2021-02-27 20:19:50', 3),
(18, 'r8dq1sio462olb8pacjnr4mo8q', '{\"id\":\"PAYID-MA5QRZQ11W49703RF521362B\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"5BW20661TK451615Y\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-armbf3695059@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"EH4SJUX2ZHH78\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"},\"phone\":\"4088980910\",\"country_code\":\"US\"}},\"transactions\":[{\"amount\":{\"total\":\"527.99\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"527.99\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"QD2QWWQF9NVTU\",\"email\":\"sb-47qb8s3684635@business.example.com\"},\"description\":\"Compra de productos a Super tienda:$527.99\",\"custom\":\"r8dq1sio462olb8pacjnr4mo8q#dXhFMlhxSWYzUXBUeFR4ZWk1bFhPdz09\",\"soft_descriptor\":\"PAYPAL *JOHNDOESTES\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"related_resources\":[{\"sale\":{\"id\":\"6DK44736X73227019\",\"state\":\"completed\",\"amount\":{\"total\":\"527.99\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"527.99\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"15.61\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-MA5QRZQ11W49703RF521362B\",\"create_time\":\"2021-02-28T03:07:36Z\",\"update_time\":\"2021-02-28T03:07:36Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/6DK44736X73227019\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/6DK44736X73227019/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MA5QRZQ11W49703RF521362B\",\"rel\":\"parent_payment\",\"method\":\"GET\"}],\"soft_descriptor\":\"PAYPAL *JOHNDOESTES\"}}]}],\"create_time\":\"2021-02-28T03:07:18Z\",\"update_time\":\"2021-02-28T03:07:36Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MA5QRZQ11W49703RF521362B\",\"rel\":\"self\",\"method\":\"GET\"}]}', 'fede@gmail.com', '527.99', 'Federico Gutierrez', 'Av Pacifico 4545 Piso 3 Dpto A', '', '2021-02-28 00:07:04', 1),
(19, '86t65gli5qi37b41kndvhht6bc', '{\"id\":\"PAYID-MA5ZMWY4GG67218UJ5378030\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"084045346K542580H\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-armbf3695059@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"EH4SJUX2ZHH78\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"},\"phone\":\"4088980910\",\"country_code\":\"US\"}},\"transactions\":[{\"amount\":{\"total\":\"174.98\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"174.98\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"QD2QWWQF9NVTU\",\"email\":\"sb-47qb8s3684635@business.example.com\"},\"description\":\"Compra de productos a Super tienda:$174.98\",\"custom\":\"86t65gli5qi37b41kndvhht6bc#em5sQysyR2UyUlIyVnNYSkJxTXcydz09\",\"soft_descriptor\":\"PAYPAL *JOHNDOESTES\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"related_resources\":[{\"sale\":{\"id\":\"78K23605P0772001H\",\"state\":\"completed\",\"amount\":{\"total\":\"174.98\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"174.98\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"5.37\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-MA5ZMWY4GG67218UJ5378030\",\"create_time\":\"2021-02-28T13:11:09Z\",\"update_time\":\"2021-02-28T13:11:09Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/78K23605P0772001H\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/78K23605P0772001H/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MA5ZMWY4GG67218UJ5378030\",\"rel\":\"parent_payment\",\"method\":\"GET\"}],\"soft_descriptor\":\"PAYPAL *JOHNDOESTES\"}}]}],\"create_time\":\"2021-02-28T13:10:51Z\",\"update_time\":\"2021-02-28T13:11:09Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MA5ZMWY4GG67218UJ5378030\",\"rel\":\"self\",\"method\":\"GET\"}]}', 'jesuscastillo@castillo.com', '174.98', 'Jesus Castillo', 'Av Constitución 6756 Piso 2 Apto 2', '', '2021-02-28 10:10:38', 1),
(20, 'l9mqbt1f7iqfreb78p7rqjbj25', '{\"id\":\"PAYID-MA52NGA79E209046H699394A\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"0HN37232457420034\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-armbf3695059@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"EH4SJUX2ZHH78\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"},\"phone\":\"4088980910\",\"country_code\":\"US\"}},\"transactions\":[{\"amount\":{\"total\":\"67.75\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"67.75\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"QD2QWWQF9NVTU\",\"email\":\"sb-47qb8s3684635@business.example.com\"},\"description\":\"Compra de productos a Super tienda:$67.75\",\"custom\":\"l9mqbt1f7iqfreb78p7rqjbj25#S3BFc1kyUGVEUnJuL2V2MnpaODVXUT09\",\"soft_descriptor\":\"PAYPAL *JOHNDOESTES\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"related_resources\":[{\"sale\":{\"id\":\"8CR5812133091324R\",\"state\":\"completed\",\"amount\":{\"total\":\"67.75\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"67.75\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"2.26\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-MA52NGA79E209046H699394A\",\"create_time\":\"2021-02-28T14:20:26Z\",\"update_time\":\"2021-02-28T14:20:26Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/8CR5812133091324R\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/8CR5812133091324R/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MA52NGA79E209046H699394A\",\"rel\":\"parent_payment\",\"method\":\"GET\"}],\"soft_descriptor\":\"PAYPAL *JOHNDOESTES\"}}]}],\"create_time\":\"2021-02-28T14:20:08Z\",\"update_time\":\"2021-02-28T14:20:26Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MA52NGA79E209046H699394A\",\"rel\":\"self\",\"method\":\"GET\"}]}', 'eduardoparra1980@gmail.com', '67.75', 'Eduardo Parra', 'Av Sarmiento 3300 Piso 3 Ofic D', '', '2021-02-28 11:19:53', 1),
(21, 'kqj3hu17b2507k4qmetpkiqgqf', '{\"id\":\"PAYID-MA52PEI10566712FL2023024\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"48P80658S72917630\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-armbf3695059@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"EH4SJUX2ZHH78\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"},\"phone\":\"4088980910\",\"country_code\":\"US\"}},\"transactions\":[{\"amount\":{\"total\":\"1055.98\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"1055.98\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"QD2QWWQF9NVTU\",\"email\":\"sb-47qb8s3684635@business.example.com\"},\"description\":\"Compra de productos a Super tienda:$1,055.98\",\"custom\":\"kqj3hu17b2507k4qmetpkiqgqf#em1Od3dnNFhaRjg4dG5RcHRTWFBrQT09\",\"soft_descriptor\":\"PAYPAL *JOHNDOESTES\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"related_resources\":[{\"sale\":{\"id\":\"8HY211787A327981W\",\"state\":\"completed\",\"amount\":{\"total\":\"1055.98\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"1055.98\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"30.92\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-MA52PEI10566712FL2023024\",\"create_time\":\"2021-02-28T14:24:31Z\",\"update_time\":\"2021-02-28T14:24:31Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/8HY211787A327981W\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/8HY211787A327981W/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MA52PEI10566712FL2023024\",\"rel\":\"parent_payment\",\"method\":\"GET\"}],\"soft_descriptor\":\"PAYPAL *JOHNDOESTES\"}}]}],\"create_time\":\"2021-02-28T14:24:17Z\",\"update_time\":\"2021-02-28T14:24:31Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MA52PEI10566712FL2023024\",\"rel\":\"self\",\"method\":\"GET\"}]}', 'fede@gmail.com', '1055.98', 'Federico Gutierrez', 'Av Pacifico 4545 Piso 3 Dpto A', '', '2021-02-28 11:23:57', 1),
(22, 'a35b51542dn309u1obr72aa0at', '{\"id\":\"PAYID-MA53UHI1SR78377PW507690N\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"8GE80606RK699304U\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-armbf3695059@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"EH4SJUX2ZHH78\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"},\"phone\":\"4088980910\",\"country_code\":\"US\"}},\"transactions\":[{\"amount\":{\"total\":\"5741.89\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"5741.89\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"QD2QWWQF9NVTU\",\"email\":\"sb-47qb8s3684635@business.example.com\"},\"description\":\"Compra de productos a Super tienda:$5,741.89\",\"custom\":\"a35b51542dn309u1obr72aa0at#Z0Jic2lCYTdCN2s2cWVQTlc1eG5YQT09\",\"soft_descriptor\":\"PAYPAL *JOHNDOESTES\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"related_resources\":[{\"sale\":{\"id\":\"7B1536472V289362B\",\"state\":\"completed\",\"amount\":{\"total\":\"5741.89\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"5741.89\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"166.81\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-MA53UHI1SR78377PW507690N\",\"create_time\":\"2021-02-28T15:43:45Z\",\"update_time\":\"2021-02-28T15:43:45Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/7B1536472V289362B\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/7B1536472V289362B/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MA53UHI1SR78377PW507690N\",\"rel\":\"parent_payment\",\"method\":\"GET\"}],\"soft_descriptor\":\"PAYPAL *JOHNDOESTES\"}}]}],\"create_time\":\"2021-02-28T15:43:25Z\",\"update_time\":\"2021-02-28T15:43:45Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MA53UHI1SR78377PW507690N\",\"rel\":\"self\",\"method\":\"GET\"}]}', 'fede@gmail.com', '5741.89', 'Federico Gutierrez', 'Av Pacifico 4545 Piso 3 Dpto A', '', '2021-02-28 12:43:09', 1),
(23, 'vr24nfuf87cc4kiu55jg0mmofh', '{\"id\":\"PAYID-MA6DF2Q3P4250764J266082S\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"4EB65063KT442081J\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-armbf3695059@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"EH4SJUX2ZHH78\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"},\"phone\":\"4088980910\",\"country_code\":\"US\"}},\"transactions\":[{\"amount\":{\"total\":\"672.96\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"672.96\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"QD2QWWQF9NVTU\",\"email\":\"sb-47qb8s3684635@business.example.com\"},\"description\":\"Compra de productos a Super tienda:$672.96\",\"custom\":\"vr24nfuf87cc4kiu55jg0mmofh#WmZuTWNUWjIrZ1hQZFdUY0lJekE0Zz09\",\"soft_descriptor\":\"PAYPAL *JOHNDOESTES\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"1 Main St\",\"city\":\"San Jose\",\"state\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"related_resources\":[{\"sale\":{\"id\":\"1F1711355J774042E\",\"state\":\"completed\",\"amount\":{\"total\":\"672.96\",\"currency\":\"USD\",\"details\":{\"subtotal\":\"672.96\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"19.82\",\"currency\":\"USD\"},\"parent_payment\":\"PAYID-MA6DF2Q3P4250764J266082S\",\"create_time\":\"2021-03-01T00:19:11Z\",\"update_time\":\"2021-03-01T00:19:11Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/1F1711355J774042E\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/1F1711355J774042E/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MA6DF2Q3P4250764J266082S\",\"rel\":\"parent_payment\",\"method\":\"GET\"}],\"soft_descriptor\":\"PAYPAL *JOHNDOESTES\"}}]}],\"create_time\":\"2021-03-01T00:18:50Z\",\"update_time\":\"2021-03-01T00:19:11Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-MA6DF2Q3P4250764J266082S\",\"rel\":\"self\",\"method\":\"GET\"}]}', 'gustavoarias@outlook.com', '672.96', 'Gustavo Arias', '8245 NW 108th AveUnit 9', '', '2021-02-28 21:18:34', 1),
(24, 'h7n3buh215dabpugh1rkv1j47u', '', 'gustabin@yahoo.com', '439.97', ' Gustavo', 'Sanchez', '', '2021-05-28 19:05:50', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idventa` (`idventa`) USING BTREE,
  ADD KEY `idproducto` (`idproducto`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
