-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2022 at 01:48 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banananews`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `archive` enum('N','Y') NOT NULL,
  `picture_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `date`, `archive`, `picture_id`) VALUES
(54, 'Evo sto se dogada tvome tijelu ako pojedes tri banane dnevno...', 'Banane se cesto spominju kao namirnica u receptima za domace sladolede, smoothieje i druge zdrave poslastice. Uz to, zbog svoje hranjivosti banana moze biti odlican meduobrok koji ce te duze zadrzati sitom.Jeduci svaki dan po tri banane u svoj organizam unosis oko 1500 mg kalija, no osim toga banane osiguravaju niz zdravstvenih prednosti. S obzirom na sljedece tvrdnje bi ipak trebala pripaziti na kolicinu banana koje svakodnevno konzumiras i taj broj nikako ne bi smio biti veci od tri banane dnevno.Tri banane dnevno znacajno snizavaju krvni tlak. Banana je zbog visokog udjela kalija najbolji prirodni lijek za visoki krvni tlak. Ujedno, banana uz visoki razinu kalija, sadrzi malo minerala natrija (svega 2 mg/100 g) te stoga ima diuretski ucinak i pomaze gubitku nakupljene suvisne tekucine u organizmu.Prehrana bogata vlaknima je dobra za srce, i kao sto vec sigurno znas, banane su bogate vlaknima. Kao dodatna prednost, specificna topiva vlakna prisutna u bananama su povezane sa smanjenim rizikom od bolesti srca.Prosjecna banana ima oko 27 mg magnezija, minerala koji pomaze potaknuti dobro raspolozenje i takoder moze poboljsati kvalitetu sna. Ako imas nisku razinu magnezija u tijelu, moguce je da patis od tjeskobe, razdrazljivosti, depresije i drugih poremecaja.', '2022-01-06 12:27:50', 'N', 45),
(55, '8 razloga zasto trebate jesti banane', 'Pored ukusa, u kojem vecina ljudi uziva, banane su i bogate vitaminima i mineralima, pa je cak i njihova kora korisna. Procitajte 8 razloga zasto bi trebali ukljuciti banane u svakodnevnu ishranu.Sto su tamnije to su bolje. Sadrzaj secera u banani je na samom vrhuncu, kada kora postane potpuno crna. To je tacka u kojoj se skrob u banani su pretvara u secer. Takoder, suprotno vjerovanju, banane mogu i trebaju biti u hladnjaku da bi im se produzio zivot jestivosti.Dodatak prehrani: Banane su bogate vitaminima B6 i B12, dok je nivo natrija izuzetno nizak, sto ih cini savrsenim dodatkom prehrani. Takoder sadrze magnezij i kalij zajedno sa saharozom, fruktozom, glukozom…Nikotinska ovisnost: Navodno, dva B vitamina koja se nalaze u banani pomazu kod povlacenja nikotinske ovisnosti.Nizak nivo secera u krvi: secer, fruktoza i glukoza ulaze u krvotok ubrzano, tako da vam i samo jedna banana moze jako brzo povecati nivo secera u krvi.Pomoc pri dijetama: Prosjecna banana ima manje od 100 kalorija, a uz casu vode, moze vas poprilicno dobro zasititi. Ucinak jedne banane na secer i proteine u krvi traje i do dva sata. To je cini savrsenom zamjenom za uzinu bogatu kalorijama.Nizak nivo secera u krvi: secer, fruktoza i glukoza ulaze u krvotok ubrzano, tako da vam i samo jedna banana moze jako brzo povecati nivo secera u krvi.Pomoc pri probavi: U poznatoj BRAT dijeti banana je slovo B. Ova dijeta se preporucuje djeci sa losom probavom, a pored banane, sastoji se od rize, soka (umaka) od jabuke i tosta. Vazno je napomenuti da se ova dijeta ne preporucuje na duzi period vremena, jer u sebi ne sadrzi dovoljno proteina.Sportska hrana: Kalij i magnezij cine bananu savrsenom sportskom hranom za sve one koji pate od grceva. Banana ce, nakon napornog trcanja ili voznje biciklom, smanjiti grceve misica u roku od petnaest minuta.Popis sastojaka: Prosjecna banana sadrzi 1g proteina, 3g vlakana, 27g ugljikohidrata, 4g secera, 43mg magnezija, a mozda i najvaznije od svega, 460mg kalija.', '2022-01-06 12:35:32', 'N', 46),
(56, 'Mjesec dana jedite 2 banane dnevno: Efekt ce vas ostaviti bez daha!', 'Vecina ljudi danas “nema vremena” za zdravu prehranu i radije posezu za brzom hranom nego za zdravim namirnicama, dok su po anketama voce i povrce vrlo nisko pozicionirana skali odabira hrane! Znanstvenicima i nutricionistima nije jasno zbog cega se vecina ljudi na zapadu radije tako hrani, kad vec postoji toliko odlicnih, a prije svega prirodnih namirnica, koje nam mogu pruziti sve potrebne tvari. Uzmimo za primjer banane. One su omiljena hrana majmuna, sto i nije tako cudno, buduci da su vrlo ukusne i hranjive, a osim toga, prava su riznica odlicnih tvari! Nutricionisti tvrde da za samo mjesec dana od kada pocnete jesti dvije banane dnevno, zdravstveno stanje bi vam se trebalo znacajno poboljsati! Banane sadrze vrlo malo natrija, ali dosta kalija, sto je odlicno za regulaciju krvnog tlaka i zdravlje srca. Znanstvenici su ustanovili da svakodnevno konzumiranje banana moze smanjiti rizik od nastanka srcanog udara za cak 40%. Ukoliko imate problema probavnim sustavom, poput zatvora, pojedite nekoliko banana. One su odlican izvor vlakana pa ce brzo rijesiti vase probleme sa crijevima. Osjecate se malaksalo i bez snage? Banane ce vam pruziti prijeko potrebnu energiju, a odlican su izbor i za uzinu prije vjezbanja! Sportasi je imaju redovno u svojoj torbi! Banane su odlican lijek i za zgaravicu, jer su dobar izvor antacida, koji reguliraju ovo neugodno stanje.Ukoliko je vasem organizmu potrebno zeljezo, banane vam mogu pomoci. Tvari iz banane stimuliraju crvena krvna zrnca i proizvodnju hemoglobina, pa znacajno pomazu malokrvnim osobama.', '2022-01-06 12:37:40', 'N', 47);

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE `pictures` (
  `id` int(11) NOT NULL,
  `path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`id`, `path`) VALUES
(1, 'ktomic.png'),
(10, 'admin.jpg'),
(45, 'news-54.jpg'),
(46, 'news-55.jpg'),
(47, 'news-56.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `archive` enum('N','Y') NOT NULL DEFAULT 'Y',
  `role` varchar(20) DEFAULT NULL,
  `city` varchar(20) NOT NULL,
  `street` varchar(100) NOT NULL,
  `picture_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `date`, `archive`, `role`, `city`, `street`, `picture_id`, `country_id`) VALUES
(1, 'Kristian', 'Tomic', 'ktomic', '$2y$12$BjJrCM2djOt0PBHWx5uFPOsMgqg8uiQInilhn4rQd1OAuSJ2UdoDe', 'kt99kiki@gmail.com', '2022-01-03 09:50:55', 'N', 'editor', 'Velika Gorica', 'Slavka Kolara 30', 1, 52),
(3, 'Kristian', 'Tomic', 'ktomic2', '$2y$12$3UfKWZ6TV7HFEQxMMWY.OOn9//oYe54eZoBQmand.65j1tQRvxdvC', 'kt99kiki2@gmail.com', '2022-01-03 09:51:16', 'N', 'user', 'Zagreb', 'Vukovarska 5', NULL, 49),
(17, 'admin', 'admin', 'admin', '$2y$12$..DrLgTSaQxYp4YliuAYx.HgDWExwr6S4BQl4Azu9KptX09ZSX3iW', 'admin@admin.com', '2022-01-04 20:19:37', 'N', 'admin', 'Velika Gorica', 'Slavka kolara', 10, 52);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_picture_id_foreignKey` (`picture_id`);

--
-- Indexes for table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `picture_id_foreignKey` (`picture_id`),
  ADD KEY `country_id_foreignKey` (`country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_picture_id_foreignKey` FOREIGN KEY (`picture_id`) REFERENCES `pictures` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `country_id_foreignKey` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `picture_id_foreignKey` FOREIGN KEY (`picture_id`) REFERENCES `pictures` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
