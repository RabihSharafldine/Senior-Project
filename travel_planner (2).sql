-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 04, 2026 at 10:33 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel planner`
--

-- --------------------------------------------------------

--
-- Table structure for table `accommodations`
--

DROP TABLE IF EXISTS `accommodations`;
CREATE TABLE IF NOT EXISTS `accommodations` (
  `accommodation_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price_per_night` decimal(10,2) DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `booking_url` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`accommodation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accommodations`
--

INSERT INTO `accommodations` (`accommodation_id`, `name`, `country`, `type`, `price_per_night`, `rating`, `image_url`, `booking_url`, `created_at`) VALUES
(1, 'Lotus Honolulu at Diamond Head', 'United States', 'hotel', 280.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/218206383.jpg?k=66a576dcfaae7fcad01aad64023d69f6c959cc030eea8e4325de1173a3acf948&o=', 'https://www.booking.com/hotel/us/castle-lotus-at-diamond-head.html?aid=304142', '2025-11-18 19:01:04'),
(2, 'Alohilani Resort Waikiki Beach', 'United States', 'resort', 420.00, 8, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/141330096.jpg?k=9c1b4672f537be6fd0dfdcab756e6e22e621b20b34c272c2041e22a1438263cf&o=', 'https://www.booking.com/hotel/us/alohilani-resort.html?aid=304142', '2025-11-18 19:01:04'),
(3, 'Sheraton Kauai Resort Villas', 'United States', 'resort', 380.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/469611876.jpg?k=f5cc79dd5b7b0d65148c625a17d76bddbc3ced6ed260d0746c5d2167e0193cfe&o=', 'https://www.booking.com/hotel/us/sheraton-kauai-resort-villas.html?aid=304142', '2025-11-18 19:01:04'),
(4, 'Halepuna Waikiki by Halekulani', 'United States', 'hotel', 520.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/230706347.jpg?k=5f4daf8bb8a50c6f7d2fd83884d10ec6fdae93f8f657c5048692cfc7c06f0141&o=', 'https://www.booking.com/hotel/us/halepuna-waikiki-by-halekulani.html?aid=304142', '2025-11-18 19:01:04'),
(5, 'Hotel Gracery Seoul', 'South Korea', 'hotel', 180.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/155053784.jpg?k=260649df51c5894a475da57ae8eac4af360c127c1f519d7ad0b64aa12e7dfa57&o=', 'https://www.booking.com/hotel/kr/gracery-seoul.html?aid=304142', '2025-11-18 19:01:04'),
(6, 'Signiel Seoul', 'South Korea', 'hotel', 450.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/764285099.jpg?k=25a5e055d0719e73d997ff429d607c9f3f40ca15a26723924695755635ba6dc7&o=', 'https://www.booking.com/hotel/kr/signiel-seoul.html?aid=304142', '2025-11-18 19:01:04'),
(7, 'Four Seasons Hotel Seoul', 'South Korea', 'hotel', 520.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/64401925.jpg?k=94156e17fc29091f92ba01945e68c1c1c7c0e0c2aef0a6e7e481a7899b757114&o=', 'https://www.booking.com/hotel/kr/four-seasons-seoul.html?aid=304142', '2025-11-18 19:01:04'),
(8, 'The Shilla Seoul', 'South Korea', 'hotel', 480.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/520676172.jpg?k=9d8131b3b2e0138958e3a2a31a9260d5b5ab310b8bebd5744c926b2cd47a4a3b&o=', 'https://www.booking.com/hotel/kr/the-shilla.html?aid=304142', '2025-11-18 19:01:04'),
(9, 'Four Seasons Resort Marrakech', 'Morocco', 'resort', 650.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/772790274.jpg?k=718190f80be7d546a77d9b084779322a09f186580a7e021a887280c9bc96b725&o=', 'https://www.booking.com/hotel/ma/four-seasons.html?aid=304142', '2025-11-18 19:01:04'),
(10, 'Nobu Hotel Marrakech', 'Morocco', 'hotel', 420.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/421671894.jpg?k=28e543f1308aded9277681f28047871645da71690ea46d0f6888e3ccfe777ccb&o=', 'https://www.booking.com/hotel/ma/nobu-hotel-marrakech.html?aid=304142&label=gen173nr-10CAsojAFCDGZvdXItc2Vhc29uc0gzWARoggGIAQGYATO4ARfIAQzYAQPoAQH4AQGIAgGoAgG4AtfAsckGwAIB0gIkZTNiZGNlNDItOTRhYS00YTBhLTk4MDctMTcxNTBmZDQ2ZDU42AIB4AIB&sid=e62d5818cfb73a0a206da891df7f41c8&dist=0&group_adults=2&group_children=0&hapos=2&hpos=2&no_rooms=1&req_adults=2&req_children=0&room1=A%2CA&sb_price_type=total&sr_order=popularity&srepoch=1764515956&srpvid=00c56bb385370d62&type=total&ucfs=1&', '2025-11-18 19:01:04'),
(11, 'Sofitel Marrakech Palais Impérial & Spa', 'Morocco', 'hotel', 320.00, 8, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/782573342.jpg?k=061cdafb2785b0373a7510a736e336c21d75374adffb7e3a0be0b41189bc7cef&o=', 'https://www.booking.com/hotel/ma/sofitel-marrakech.html?aid=304142', '2025-11-18 19:01:04'),
(12, 'The Oberoi Marrakech', 'Morocco', 'resort', 750.00, 10, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/234065591.jpg?k=3d40250df39a4c95e2716f573707d7009de0ed580053482a9b9eb4e5a2d8950a&o=', 'https://www.booking.com/hotel/ma/the-oberoi-marrakech.html?aid=304142', '2025-11-18 19:01:04'),
(13, 'The Rees Hotel & Luxury Apartments', 'New Zealand', 'hotel', 320.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/19424787.jpg?k=128a0761cb0f76fde0c6fbd1ffebe057bba16732de8c830fe25040591c378d24&o=', 'https://www.booking.com/hotel/nz/the-rees-luxury-apartments.html?aid=304142', '2025-11-18 19:01:04'),
(14, 'Sofitel Queenstown Hotel & Spa', 'New Zealand', 'hotel', 280.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/765365974.jpg?k=ecf6e6bc2eb867b9296561182794f85e9daae42618b17700649a9808507af919&o=', 'https://www.booking.com/hotel/nz/queenstown.html?aid=304142', '2025-11-18 19:01:04'),
(15, 'Hilton Queenstown Resort & Spa', 'New Zealand', 'resort', 350.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/483824719.jpg?k=bdf85c9e28a1891598ccb1d3c3e6ee65af1bebb7c85b5d5896da6a2ce0a46a90&o=', 'https://www.booking.com/hotel/nz/hilton-queenstown.html?aid=304142', '2025-11-18 19:01:04'),
(16, 'QT Queenstown', 'New Zealand', 'hotel', 240.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/373963373.jpg?k=4fac90b4358d196b58f0d19856e19a531ecf5e847660a74a2f794d383baf3794&o=', 'https://www.booking.com/hotel/nz/qt-queenstown.html?aid=304142', '2025-11-18 19:01:04'),
(17, 'Fairmont Pacific Rim', 'Canada', 'hotel', 450.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/764869115.jpg?k=6300c1291ac83eeb4c7d6e418ae6dc0509dc8d546d3f06022b7bbd09518c9ad3&o=', 'https://www.booking.com/hotel/ca/faimont-pacific-rim.html?aid=304142', '2025-11-18 19:01:04'),
(18, 'Rosewood Hotel Georgia', 'Canada', 'hotel', 520.00, 10, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/568568148.jpg?k=f774a619dce417795a0fd027bf1043e8d6d1c0d365fe5b57ccf04ebec914397c&o=', 'https://www.booking.com/hotel/ca/rosewood-georgia.html?aid=304142', '2025-11-18 19:01:04'),
(19, 'Fairmont Hotel Vancouver', 'Canada', 'hotel', 380.00, 8, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/764868251.jpg?k=f8c9a3224946f467284b9d30a6e9b47c1f8d73a3686d6ad3978ff575571e84b0&o=', 'https://www.booking.com/hotel/ca/fairmont-vancouver.html?aid=304142', '2025-11-18 19:01:04'),
(20, 'JW Marriott Parq Vancouver', 'Canada', 'hotel', 420.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/612385493.jpg?k=9f253dcfd822bebe3947d3fcc78ffe9ed9e04f2b13b9388f33450c0cdc0e6f39&o=', 'https://www.booking.com/hotel/ca/jw-marriott-parq-vancouver.html?aid=304142', '2025-11-18 19:01:04'),
(21, 'Andaz Prague', 'Czech Republic', 'hotel', 320.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/412401961.jpg?k=a112ffc07e7bfa31f0e121bc7b6cff32fca9e3156bdca87ed8b60628c1a3cc69&o=', 'https://www.booking.com/hotel/cz/andaz-prague.html?aid=304142', '2025-11-18 19:01:04'),
(22, 'The Julius Prague', 'Czech Republic', 'hotel', 380.00, 10, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/689497727.jpg?k=ce143f1ab16029818658b0de9f30f1813e9ae996a7293b1acddb6b3c0558e14d&o=', 'https://www.booking.com/hotel/cz/julius-meinl-house-prague.html?aid=304142', '2025-11-18 19:01:04'),
(23, 'Hotel KINGS COURT', 'Czech Republic', 'hotel', 350.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/371937834.jpg?k=285a973c8d17032ee8ba5b26e92efd7c17ad61403e131fcfe95b5307a201f068&o=', 'https://www.booking.com/hotel/cz/kings-court.html?aid=304142', '2025-11-18 19:01:04'),
(24, 'Four Seasons Hotel Prague', 'Czech Republic', 'hotel', 520.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/354495326.jpg?k=cd2ddc2db5fd4380dde7e61766ade9dcfd54f482c1fdf2d6de2b123fd150a30c&o=', 'https://www.booking.com/hotel/cz/four-seasons-prague.html?aid=304142', '2025-11-18 19:01:04'),
(25, 'The Ritz-Carlton-Millenia Singapore', 'Singapore', 'hotel', 480.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/439545542.jpg?k=9bff2e26e7f8154d12dc20f43316fc6a63496e309677eac95ee3c4d885cc82fb&o=', 'https://www.booking.com/hotel/sg/the-ritz-carlton-millenia-singapore.html?aid=304142', '2025-11-18 19:01:04'),
(26, 'The Peninsula Istanbul', 'Turkey', 'hotel', 420.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/482222159.jpg?k=9789dddfd4f2c19b7e2493c38bde2aabbebb621ebdc00dbef5a71c65c8f69149&o=', 'https://www.booking.com/hotel/tr/the-peninsula-istanbul.html?aid=304142', '2025-11-18 19:01:04'),
(27, 'The St. Regis Venice', 'Italy', 'hotel', 580.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/514003865.jpg?k=f81d6000f0ebecf73402fffdd9ea7650c8a4ae3ec36d2ddf43510bf2e3170bf4&o=', 'https://www.booking.com/hotel/it/the-st-regis-venice.html?aid=304142', '2025-11-18 19:01:04'),
(28, 'Sindhorn Kempinski Hotel Bangkok', 'Thailand', 'hotel', 380.00, 10, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/684391278.jpg?k=eb1bec0a9064fda7de3a76be0186641f6b3fbcc6fdf396b238d4f70b6bbb42a6&o=', 'https://www.booking.com/hotel/th/sindhorn-kempinski-bangkok.html?aid=304142', '2025-11-18 19:01:04'),
(29, 'Anantara Grand Hotel Krasnapolsky Amsterdam', 'Netherlands', 'hotel', 420.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/470251896.jpg?k=12857ab654f16b15c165f5b427e450a4b230dd2aaffbde425606c7eb55e78030&o=', 'https://www.booking.com/hotel/nl/anantara-ghkrasnapolsky.html?aid=304142', '2025-11-18 19:01:04'),
(30, 'Taj Cape Town', 'South Africa', 'hotel', 350.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/731112689.jpg?k=69126e35c870813e822887fc6ca33e02ee1778ada18233258d34441c06fffcbd&o=', 'https://www.booking.com/hotel/za/taj-cape-town.html?aid=304142', '2025-11-18 19:01:04'),
(31, 'The Londoner', 'United Kingdom', 'hotel', 520.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/325665546.jpg?k=3985c5ad5deac121cbc8c26ea8d234427b61aaf11499f069efe9351fea0734f2&o=', 'https://www.booking.com/hotel/gb/the-londoner-london.html?aid=304142', '2025-11-18 19:01:04'),
(32, 'Mandarin Oriental-Barcelona', 'Spain', 'hotel', 480.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/585037598.jpg?k=d44a1043408335deb22519155f7d87df36b02fea43cdf59e42098d203dd1b081&o=', 'https://www.booking.com/hotel/es/mandarin-oriental-barcelona.html?aid=304142', '2025-11-18 19:01:04'),
(33, 'Four Seasons Hotel Sydney', 'Australia', 'hotel', 520.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/227683814.jpg?k=6ea4df5cd0684bf3aa89b0052873caf0bf47e98492fdd91d9e399c7d9121d135&o=', 'https://www.booking.com/hotel/au/four-seasons-sydney.html?aid=304142', '2025-11-18 19:01:04'),
(34, 'Address Sky View-Downtown Dubai', 'United Arab Emirates', 'hotel', 450.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/708764315.jpg?k=f1ea8cbd5f33719886ad33b600a1d8fccfa2774d752808d0809f93a52fe0a586&o=', 'https://www.booking.com/hotel/ae/address-sky-view.html?aid=304142', '2025-11-18 19:01:04'),
(35, 'Umiltà 36', 'Italy', 'hotel', 420.00, 10, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/422648945.jpg?k=7ece688e078778a3466b0bae207ec86883cdaeb871a6a2a2318927cae7546ddb&o=', 'https://www.booking.com/hotel/it/umilta-36.html?aid=304142', '2025-11-18 19:01:04'),
(36, 'La Reserve 1785 Canggu', 'Indonesia', 'resort', 380.00, 10, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/493747547.jpg?k=3f3ded916c9b83716185d251e19e9d51fb42838bd9a4d4c42ea982c1caf2de59&o=', 'https://www.booking.com/hotel/id/la-reserve-1785-canggu.html?aid=304142', '2025-11-18 19:01:04'),
(37, 'Equinox Hotel New York', 'United States', 'hotel', 520.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/348980902.jpg?k=ae0dc63eaacf579d076f66a691a3827918d3ae07abd782fc5a1effc311c552cf&o=', 'https://www.booking.com/hotel/us/equinox-hudson-yards.html?aid=304142', '2025-11-18 19:01:04'),
(38, 'Shangri-La Tokyo', 'Japan', 'hotel', 480.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/131132659.jpg?k=26697ba3ee7391ffe729f1cc047cca1387a7640e0cae2af3a2e09611a3d28e02&o=', 'https://www.booking.com/hotel/jp/shangri-la-tokyo.html?aid=304142', '2025-11-18 19:01:04'),
(39, 'InterContinental Paris Le Grand by IHG', 'France', 'hotel', 520.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/594039112.jpg?k=e065395d6469b707e2351928e7655a87d37a31cee4badcf2e512705413cfedad&o=', 'https://www.booking.com/hotel/fr/intercontinental-paris-le-grand.html?aid=304142', '2025-11-18 19:01:04'),
(40, 'Mandarin Oriental Singapore', 'Singapore', 'hotel', 520.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/589088919.jpg?k=bd9382fdc8c0e9c2fbf53b9d7a290edffe57928216ae3d84c8c1ebe3cab78f4d&o=', 'https://www.booking.com/hotel/sg/hotel-mandarin-oriental.html?aid=304142', '2025-11-30 14:29:39'),
(41, 'Marina Bay Sands', 'Singapore', 'hotel', 580.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max500/611268772.jpg?k=eae185c7a8c1fa3526a656ef05f65b32e1b4dfa68bfcc3a06738fb7ea0264f71&o=', 'https://www.booking.com/hotel/sg/marina-bay-sands.html?aid=304142', '2025-11-30 14:29:39'),
(42, 'Pan Pacific Orchard', 'Singapore', 'hotel', 420.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/597187765.jpg?k=0cfb1a4d9b88ffd17a1f6bc0c4feac93b95660413600af9110c8a06bc9202e85&o=', 'https://www.booking.com/hotel/sg/pan-pacific-orchard.html?aid=304142', '2025-11-30 14:29:39'),
(43, 'The Ritz-Carlton Istanbul', 'Turkey', 'hotel', 450.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/591634204.jpg?k=61fb8b08d43be1dba194c7739c936ff3542bbb551baec1448674d060faf08aab&o=', 'https://www.booking.com/hotel/tr/the-ritz-carlton.html?aid=304142', '2025-11-30 14:29:39'),
(44, 'Shangri-La Bosphorus Istanbul', 'Turkey', 'hotel', 480.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/650228270.jpg?k=5b87b70fd46f82f2b569c5a615859c8f801bb79bd3992d5395de167cde47a5a9&o=', 'https://www.booking.com/hotel/tr/shangri-la-bosphorus-istanbul.html?aid=304142', '2025-11-30 14:29:39'),
(45, 'Four Seasons Hotel Istanbul at Sultanahmet', 'Turkey', 'hotel', 520.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/402881902.jpg?k=13f54a62edacba84e43d5bd2df9c5a84295186f531322cd18bff9a1cbe36a229&o=', 'https://www.booking.com/hotel/tr/four-seasons-istanbul-at-sultanahmet.html?aid=304142', '2025-11-30 14:29:39'),
(46, 'Radisson Collection Hotel Palazzo Nani Venice', 'Italy', 'hotel', 380.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/338689290.jpg?k=fe8386c0adbcbc48aced5281e8e0cf58badda36e6cdff826e95b417096c43ae2&o=', 'https://www.booking.com/hotel/it/radisson-collection-palazzo-nani-venice.html?aid=304142', '2025-11-30 14:29:39'),
(47, 'The Venice Venice Hotel', 'Italy', 'hotel', 420.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max500/438377602.jpg?k=b9f2ff12fcb5fc6098618e15d470d3f81e75b484cad4d270f6a1656d7aca933c&o=', 'https://www.booking.com/hotel/it/the-venice-venice.html?aid=304142', '2025-11-30 14:29:39'),
(48, 'Palazzo Keller', 'Italy', 'hotel', 350.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/440940443.jpg?k=ab4ed0d30e38d3cb68d0e2ccbc7bbe3069889b8f01be13bb8f4d8834c9582f04&o=', 'https://www.booking.com/hotel/it/palazzo-keller-venezia1.html?aid=304142', '2025-11-30 14:29:39'),
(49, 'Four Seasons Hotel Bangkok at Chao Phraya River', 'Thailand', 'hotel', 520.00, 10, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/283065454.jpg?k=b7ff2b04f222fdb2b8a420febb5bd49572af4f0406f66bc148d77aa63f269baa&o=', 'https://www.booking.com/hotel/th/four-seasons-bangkok-at-chao-phraya-river.html?aid=304142', '2025-11-30 14:29:39'),
(50, 'Siam Kempinski Hotel Bangkok', 'Thailand', 'hotel', 480.00, 10, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/684217141.jpg?k=c01639458dba492113a139335dc8ffd3694ac002ac0e2cad0608e88c50685ecd&o=', 'https://www.booking.com/hotel/th/siam-kempinski-bangkok.html?aid=304142', '2025-11-30 14:29:39'),
(51, 'Hotel TwentySeven - Small Luxury Hotels', 'Netherlands', 'hotel', 580.00, 10, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/234603462.jpg?k=5d9f2c99091c95e6344f662e864c58140bf16bd33bed77f95392d648581571be&o=', 'https://www.booking.com/hotel/nl/twentyseven-amsterdam.html?aid=304142', '2025-11-30 14:29:39'),
(52, 'Waldorf Astoria Amsterdam', 'Netherlands', 'hotel', 550.00, 10, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/637529941.jpg?k=df99dac82fea656c2ed7d1e92a723ccec19abde5128bfc08e7848412bb5d88c7&o=', 'https://www.booking.com/hotel/nl/waldorf-astoria-amsterdam.html?aid=304142', '2025-11-30 14:29:39'),
(53, 'The Capital 15 on Orange Hotel & Spa', 'South Africa', 'hotel', 320.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/321558006.jpg?k=1b2964e22a956e81f8ce27c69eed438d88c11ec329b17629e0797e59eae7adc9&o=', 'https://www.booking.com/hotel/za/15-on-orange.html?aid=304142', '2025-11-30 14:29:39'),
(54, 'The Westin Cape Town', 'South Africa', 'hotel', 380.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/630537856.jpg?k=d0e01d8abf0839fd8905eae6a0f646805e282026aedf3faa9f27ce3e958c6b7c&o=', 'https://www.booking.com/hotel/za/arabellasheraton-grand.html?aid=304142', '2025-11-30 14:29:39'),
(55, 'Nobu Hotel London Portman Square', 'United Kingdom', 'hotel', 480.00, 8, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/468068047.jpg?k=3fc5045920ec954e50762a347983ea524583d873657f413ebf87f5a518489219&o=', 'https://www.booking.com/hotel/gb/nobu-hotel-london-portman-square.html?aid=304142', '2025-11-30 14:29:39'),
(56, 'The Biltmore Mayfair', 'United Kingdom', 'hotel', 520.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/552328860.jpg?k=7a46fb43892c8340099ccc3b317c2c86baf5de46dd64f738b2144024aef8f088&o=', 'https://www.booking.com/hotel/gb/lxr-biltmore-mayfair.html?aid=304142', '2025-11-30 14:29:39'),
(57, 'Hotel Arts Barcelona', 'Spain', 'hotel', 450.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/481761442.jpg?k=36ccd20a2d69ac4f38c8190cd64175627b35771c6b910d7628d5c63081752f8a&o=', 'https://www.booking.com/hotel/es/arts-barcelona.html?aid=304142', '2025-11-30 14:29:39'),
(58, 'The One Barcelona GL', 'Spain', 'hotel', 420.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max300/485670715.jpg?k=6aa5f3e14dac741df83c407ab122d942dbbe71e62e6745797fae7b6b18e6f355&o=', 'https://www.booking.com/hotel/es/the-one-barcelona.html?aid=304142', '2025-11-30 14:29:39'),
(59, 'W Sydney', 'Australia', 'hotel', 480.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/500278492.jpg?k=af3b69b276dc5c519a0d0df7d3d7c2db7ca3baa714773141ab5394896ed0f57f&o=', 'https://www.booking.com/hotel/au/w-sydney.html?aid=304142', '2025-11-30 14:29:39'),
(60, 'Shangri-La Sydney', 'Australia', 'hotel', 520.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/328134332.jpg?k=7a56b09459962508c3658ff40974828853cd3d0cb812e5aa452facffe86fd14a&o=', 'https://www.booking.com/hotel/au/shangrila-sydney.html?aid=304142', '2025-11-30 14:29:39'),
(61, 'The St. Regis Downtown Dubai', 'United Arab Emirates', 'hotel', 580.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/469618076.jpg?k=536794cb972d84730d5c74cc344644ffc65efbd93ad6039ddcbd903f23491419&o=', 'https://www.booking.com/hotel/ae/st-regis-dubai-downtown.html?aid=304142', '2025-11-30 14:29:39'),
(62, 'Atlantis The Royal', 'United Arab Emirates', 'hotel', 650.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/534061997.jpg?k=9b47f6c7e61f2be60830d61c1f5d9562dd51a6f9288240653cc4e0515a3e4941&o=', 'https://www.booking.com/hotel/ae/the-royal-atlantis.html?aid=304142', '2025-11-30 14:29:39'),
(63, 'The St. Regis Rome', 'Italy', 'hotel', 580.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/500916747.jpg?k=d29ad0184cab3033a1655763fbbe924c9a5c253df59cef2c7b26577662dd0512&o=', 'https://www.booking.com/hotel/it/stregisgrandroma.html?aid=304142', '2025-11-30 14:29:39'),
(64, 'Radisson Collection Hotel Roma Antica', 'Italy', 'hotel', 420.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/724570154.jpg?k=faa99eac586062f9ce9851962b3b6a1165fd3486272b1b526626873d93d55848&o=', 'https://www.booking.com/hotel/it/radisson-collection-roma-antica.html?aid=304142', '2025-11-30 14:29:39'),
(65, 'Holiday Inn Resort Bali Canggu by IHG', 'Indonesia', 'resort', 280.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max300/517838674.jpg?k=f5b234d722ebb5cf71e31c26bf8c1b814232f35418273c9a028616fcf3e33ac2&o=', 'https://www.booking.com/hotel/id/holiday-inn-resort-bali-canggu.html?aid=304142', '2025-11-30 14:29:39'),
(66, 'Secana Beachtown Resort & Residences', 'Indonesia', 'resort', 320.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/779297776.jpg?k=912fe1a8e7d90498f679378542bab2a4886e7eca20e670db90781e87c4e03ca5&o=', 'https://www.booking.com/hotel/id/secana-beachtown-beachtown-house.html?aid=304142', '2025-11-30 14:29:39'),
(67, 'Mandarin Oriental New York', 'United States', 'hotel', 650.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/599569921.jpg?k=63db9d0d77d71825956c9272840841017fc9e7513174c9e95d9917410c03fef4&o=', 'https://www.booking.com/hotel/us/mandarin-oriental.html?aid=304142', '2025-11-30 14:29:39'),
(68, 'Trump International New York', 'United States', 'hotel', 580.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/536021806.jpg?k=0be64078c85d5b03219fae162d10c924badd994622f2d937632159346016b8fe&o=', 'https://www.booking.com/hotel/us/trump-international-new-york.html?aid=304142', '2025-11-30 14:29:39'),
(69, 'Conrad Tokyo', 'Japan', 'hotel', 520.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/575513795.jpg?k=626d696ec06a5e7f11b8a5019ad8b3911771d31ac1e22b636c4dae06902f7d34&o=', 'https://www.booking.com/hotel/jp/conrad-tokyo.html?aid=304142', '2025-11-30 14:29:39'),
(70, 'Hilton Tokyo Hotel', 'Japan', 'hotel', 380.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/550605365.jpg?k=36aea1ca2131faaa2c47761580433197dd7c13432c486fc15e06df08362bf0c1&o=', 'https://www.booking.com/hotel/jp/hilton-tokyo.html?aid=304142', '2025-11-30 14:29:39'),
(71, 'Four Seasons Hotel George V Paris', 'France', 'hotel', 750.00, 10, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/232783611.jpg?k=70a6c58744856c165976306d8e3be5ec4c29435ea93147f644df677ed512f6e5&o=', 'https://www.booking.com/hotel/fr/four-seasons-george-v-paris.html?aid=304142', '2025-11-30 14:29:39'),
(72, 'The Peninsula Paris', 'France', 'hotel', 680.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max500/501599175.jpg?k=ea650cba0714d3085018f499a6049a7e13953151ecf1dff172bcfa1df92b9017&o=', 'https://www.booking.com/hotel/fr/the-peninsula-paris.html?aid=304142', '2025-11-30 14:29:39'),
(73, 'Casa del Sol Machupicchu', 'Peru', 'hotel', 320.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/736716797.jpg?k=dc08e72573947de6b838b70d371f653b495d406549314c36ab5533c4c46519d4&o=', 'https://www.booking.com/hotel/pe/casa-del-sol-machupicchu.html?aid=304142', '2025-11-30 14:29:39'),
(74, 'Inkaterra Machu Picchu Pueblo Hotel', 'Peru', 'resort', 380.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/14445610.jpg?k=33c3a923045c9fb7dab858b870ce9a273b1b13fbdc632650f11b200a89fbe250&o=', 'https://www.booking.com/hotel/pe/inkaterra-machu-picchu-pueblo.html?aid=304142', '2025-11-30 14:29:39'),
(75, 'HOTEL THE MITSUI KYOTO', 'Japan', 'hotel', 580.00, 10, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/546393048.jpg?k=3b1d5feacdbba4818aaea3a35d1a1b4ee8b089db9fe41787afdc4893f0ec07cf&o=', 'https://www.booking.com/hotel/jp/the-mitsui-kyoto-a-luxury-collection-spa.html?aid=304142', '2025-11-30 14:29:39'),
(76, 'Four Seasons Hotel Kyoto', 'Japan', 'hotel', 620.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max300/152709185.jpg?k=610c2f8f924269781285229537cc1f72080e2e3715a9a91101b18a57e2765164&o=', 'https://www.booking.com/hotel/jp/four-seasons-kyoto.html?aid=304142', '2025-11-30 14:29:39'),
(77, 'Dusit Thani Kyoto', 'Japan', 'hotel', 480.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/757406158.jpg?k=8a330f5d7aaccab4aea95868fade1a337e523dce175259d58750e0f229b7c1ac&o=', 'https://www.booking.com/hotel/jp/dusit-thani-kyoto.html?aid=304142', '2025-11-30 14:29:39'),
(78, 'One of One Hotel', 'Greece', 'hotel', 420.00, 10, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/692240572.jpg?k=f97083add1b5374ed68660982d2d90cf29f5fa542721e6bec492807631307928&o=', 'https://www.booking.com/hotel/gr/one-of-one.html?aid=304142', '2025-11-30 14:29:39'),
(79, 'Honeymoon Petra Villas', 'Greece', 'resort', 380.00, 10, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/20860905.jpg?k=1483b643b71c66dc07429609e9fbdbdc5b6eb3a98e01ab35c3fd313a1a77c07d&o=', 'https://www.booking.com/hotel/gr/honeymoon-petra-villas.html?aid=304142', '2025-11-30 14:29:39'),
(80, 'Cocoon Suites', 'Greece', 'hotel', 350.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max300/94637655.jpg?k=8b7314e09b46ee810bee066cf8f3917bd2de178b41467f00e1032778e5f6da14&o=', 'https://www.booking.com/hotel/gr/cocoon-suites.html?aid=304142', '2025-11-30 14:29:39'),
(81, 'Emiliano Rio', 'Brazil', 'hotel', 450.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max500/121080985.jpg?k=1707884ce816970770f5b40d24f23d12b10d60be364637862d8cf2213386c1e5&o=', 'https://www.booking.com/hotel/br/emiliano-rio.html?aid=304142', '2025-11-30 14:29:39'),
(82, 'JANEIRO Hotel', 'Brazil', 'hotel', 520.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/167268313.jpg?k=8edd46db7a4512c382e464b0776b0cec2b0b026126236f997583593d377068c1&o=', 'https://www.booking.com/hotel/br/janeiro-hotel.html?aid=304142', '2025-11-30 14:29:39'),
(83, 'Hotel Fasano Rio de Janeiro', 'Brazil', 'hotel', 580.00, 9, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/214353002.jpg?k=e30de7688407be477921b822c5d04883a1403edded8c9aa3c13128dadba9524f&o=', 'https://www.booking.com/hotel/br/fasano-rio-de-janeiro.html?aid=304142', '2025-11-30 14:29:39');

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_destinations`
--

DROP TABLE IF EXISTS `accommodation_destinations`;
CREATE TABLE IF NOT EXISTS `accommodation_destinations` (
  `accommodation_id` int NOT NULL,
  `destination_id` int NOT NULL,
  PRIMARY KEY (`accommodation_id`,`destination_id`),
  KEY `destination_id` (`destination_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accommodation_destinations`
--

INSERT INTO `accommodation_destinations` (`accommodation_id`, `destination_id`) VALUES
(39, 1),
(71, 1),
(72, 1),
(38, 2),
(69, 2),
(70, 2),
(37, 3),
(67, 3),
(68, 3),
(36, 4),
(65, 4),
(66, 4),
(35, 5),
(63, 5),
(64, 5),
(33, 6),
(59, 6),
(60, 6),
(34, 7),
(61, 7),
(62, 7),
(32, 8),
(57, 8),
(58, 8),
(31, 9),
(55, 9),
(56, 9),
(78, 10),
(79, 10),
(80, 10),
(75, 11),
(76, 11),
(77, 11),
(81, 12),
(82, 12),
(83, 12),
(30, 13),
(53, 13),
(54, 13),
(29, 14),
(51, 14),
(52, 14),
(28, 15),
(49, 15),
(50, 15),
(26, 16),
(43, 16),
(44, 16),
(45, 16),
(27, 17),
(46, 17),
(47, 17),
(48, 17),
(73, 18),
(74, 18),
(25, 19),
(40, 19),
(41, 19),
(42, 19),
(21, 20),
(22, 20),
(23, 20),
(24, 20),
(17, 21),
(18, 21),
(19, 21),
(20, 21),
(13, 22),
(14, 22),
(15, 22),
(16, 22),
(9, 23),
(10, 23),
(11, 23),
(12, 23),
(5, 24),
(6, 24),
(7, 24),
(8, 24),
(1, 25),
(2, 25),
(3, 25),
(4, 25);

-- --------------------------------------------------------

--
-- Table structure for table `attractions`
--

DROP TABLE IF EXISTS `attractions`;
CREATE TABLE IF NOT EXISTS `attractions` (
  `attraction_id` int NOT NULL AUTO_INCREMENT,
  `destination_id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `type` enum('landmark','museum','park','beach','temple','shopping','entertainment','nature') COLLATE utf8mb4_general_ci DEFAULT 'landmark',
  `image_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `entry_fee` decimal(10,2) DEFAULT NULL,
  `opening_hours` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `best_time_to_visit` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`attraction_id`),
  KEY `destination_id` (`destination_id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attractions`
--

INSERT INTO `attractions` (`attraction_id`, `destination_id`, `name`, `description`, `type`, `image_url`, `entry_fee`, `opening_hours`, `best_time_to_visit`, `created_at`) VALUES
(17, 1, 'Eiffel Tower', 'Iconic iron tower offering breathtaking city views from its observation decks. A symbol of Paris and one of the most recognizable structures in the world.', 'landmark', 'images/attractions/paris/eiffel-tower.jpg', 25.50, '9:30 AM - 10:45 PM', 'Spring or Fall', '2025-11-28 15:27:33'),
(18, 1, 'Louvre Museum', 'World\'s largest art museum and historic monument home to the Mona Lisa and Venus de Milo. Former royal palace with stunning architecture.', 'museum', 'images/attractions/paris/louvre-museum.jpg', 17.00, '9:00 AM - 6:00 PM', 'Weekday mornings', '2025-11-28 15:27:33'),
(19, 1, 'Notre-Dame Cathedral', 'Medieval Catholic cathedral masterpiece of French Gothic architecture, known for its rose windows and flying buttresses.', 'temple', 'images/attractions/paris/notre-dame.jpg', 0.00, '8:00 AM - 6:45 PM', 'Early morning', '2025-11-28 15:27:33'),
(20, 1, 'Arc de Triomphe', 'Triumphal arch honoring those who fought and died for France, with panoramic views of Paris from the top.', 'landmark', 'images/attractions/paris/arc-de-triomphe.jpg', 13.00, '10:00 AM - 11:00 PM', 'Evening for city lights', '2025-11-28 15:27:33'),
(21, 2, 'Shibuya Crossing', 'World\'s busiest pedestrian crossing with thousands of people crossing simultaneously. An iconic symbol of modern Tokyo.', 'landmark', 'images/attractions/tokyo/shibuya-crossing.jpg', 0.00, '24/7', 'Evening', '2025-11-28 15:27:33'),
(22, 2, 'Tokyo Tower', 'Communications and observation tower inspired by the Eiffel Tower, offering spectacular views of Tokyo skyline.', 'landmark', 'images/attractions/tokyo/tokyo-tower.jpg', 12.00, '9:00 AM - 11:00 PM', 'Sunset', '2025-11-28 15:27:33'),
(23, 2, 'Sensoji Temple', 'Ancient Buddhist temple in Asakusa, Tokyo\'s oldest temple with a vibrant shopping street leading to the main hall.', 'temple', 'images/attractions/tokyo/sensoji-temple.jpg', 0.00, '6:00 AM - 5:00 PM', 'Morning', '2025-11-28 15:27:33'),
(24, 2, 'Imperial Palace', 'Primary residence of the Emperor of Japan surrounded by beautiful gardens and moats in the heart of Tokyo.', 'landmark', 'images/attractions/tokyo/imperial-palace.jpg', 0.00, '9:00 AM - 5:00 PM', 'Spring for cherry blossoms', '2025-11-28 15:27:33'),
(25, 3, 'Statue of Liberty', 'Iconic symbol of freedom and democracy, gifted by France. Take a ferry to Liberty Island for close-up views.', 'landmark', 'images/attractions/new-york/statue-of-liberty.jpg', 24.00, '8:30 AM - 4:00 PM', 'Morning ferries', '2025-11-28 15:27:33'),
(26, 3, 'Times Square', 'Vibrant commercial intersection known as \"The Crossroads of the World\" with giant digital billboards and Broadway theaters.', 'entertainment', 'images/attractions/new-york/times-square.jpg', 0.00, '24/7', 'Evening for lights', '2025-11-28 15:27:33'),
(27, 3, 'Central Park', 'Massive urban park featuring lakes, theaters, ice rinks, fountains, tennis courts, baseball fields and many other attractions.', 'park', 'images/attractions/new-york/central-park.jpg', 0.00, '6:00 AM - 1:00 AM', 'Spring or Fall', '2025-11-28 15:27:33'),
(28, 3, 'Empire State Building', 'Art Deco skyscraper with observatories on the 86th and 102nd floors offering panoramic views of Manhattan.', 'landmark', 'images/attractions/new-york/empire-state.jpg', 44.00, '8:00 AM - 2:00 AM', 'Sunset hours', '2025-11-28 15:27:33'),
(29, 4, 'Uluwatu Temple', 'Ancient sea temple perched on a cliff edge with stunning ocean views and famous Kecak fire dance performances at sunset.', 'temple', 'images/attractions/bali/uluwatu-temple.jpg', 4.00, '7:00 AM - 7:00 PM', 'Sunset', '2025-11-28 15:27:33'),
(30, 4, 'Tegallalang Rice Terraces', 'Stunning emerald-green rice paddies with traditional irrigation system, offering beautiful photo opportunities.', 'nature', 'images/attractions/bali/tegallalang-rice-terraces.jpg', 2.50, '8:00 AM - 6:00 PM', 'Early morning', '2025-11-28 15:27:33'),
(31, 4, 'Tanah Lot Temple', 'Picturesque ancient Hindu shrine built on a rock formation in the sea, one of Bali\'s most important landmarks.', 'temple', 'images/attractions/bali/tanah-lot.jpg', 5.00, '7:00 AM - 7:00 PM', 'Low tide sunset', '2025-11-28 15:27:33'),
(32, 4, 'Ubud Monkey Forest', 'Sacred forest sanctuary home to hundreds of long-tailed macaques, with ancient temples and lush jungle paths.', 'nature', 'images/attractions/bali/ubud-monkey-forest.jpg', 6.50, '9:00 AM - 6:00 PM', 'Morning', '2025-11-28 15:27:33'),
(33, 5, 'Colosseum', 'Ancient amphitheater that could hold up to 80,000 spectators for gladiatorial contests and public spectacles.', 'landmark', 'images/attractions/rome/colosseum.jpg', 16.00, '8:30 AM - 7:00 PM', 'Early morning', '2025-11-28 15:27:33'),
(34, 5, 'Trevi Fountain', 'Baroque fountain designed by Nicola Salvi, famous for coin tossing tradition. Largest fountain in Rome.', 'landmark', 'images/attractions/rome/trevi-fountain.jpg', 0.00, '24/7', 'Early morning or late evening', '2025-11-28 15:27:33'),
(35, 5, 'Vatican Museums', 'Christian and art museums displaying works from the immense collection of the Catholic Church.', 'museum', 'images/attractions/rome/vatican-museum.jpg', 17.00, '9:00 AM - 6:00 PM', 'Weekday afternoons', '2025-11-28 15:27:33'),
(36, 5, 'Roman Forum', 'Ancient government center surrounded by ruins of important government buildings at the center of Rome.', 'landmark', 'images/attractions/rome/roman-forum.jpg', 16.00, '8:30 AM - 7:00 PM', 'Morning', '2025-11-28 15:27:33'),
(37, 6, 'Sydney Opera House', 'Iconic performing arts center with distinctive sail-like design, hosting over 1,500 performances annually.', 'entertainment', 'images/attractions/sydney/sydney-opera-house.jpg', 43.00, '9:00 AM - 5:00 PM', 'Guided tour mornings', '2025-11-28 15:27:33'),
(38, 6, 'Sydney Harbour Bridge', 'Steel arch bridge nicknamed \"The Coathanger\". Climb the bridge for spectacular harbor views.', 'landmark', 'images/attractions/sydney/harbour-bridge.jpg', 174.00, 'Climb tours daily', 'Sunrise or sunset climb', '2025-11-28 15:27:33'),
(39, 6, 'Bondi Beach', 'Famous surfing beach with golden sands, ocean pool, and coastal walk to Coogee Beach.', 'beach', 'images/attractions/sydney/bondi-beach.jpg', 0.00, '24/7', 'Summer weekdays', '2025-11-28 15:27:33'),
(40, 6, 'Royal Botanic Garden', '30-hectare botanical garden featuring themed gardens, tropical plants, and harbor views.', 'park', 'images/attractions/sydney/botanic-garden.jpg', 0.00, '7:00 AM - 5:00 PM', 'Spring', '2025-11-28 15:27:33'),
(41, 7, 'Burj Khalifa', 'World\'s tallest building at 828 meters with observation decks on 124th, 125th, and 148th floors.', 'landmark', 'images/attractions/dubai/burj-khalifa.jpg', 149.00, '8:30 AM - 11:00 PM', 'Sunset for views', '2025-11-28 15:27:33'),
(42, 7, 'Palm Jumeirah', 'Artificial palm-shaped island featuring luxury hotels, residences, and entertainment venues.', 'landmark', 'images/attractions/dubai/palm-jumeirah.jpg', 0.00, '24/7', 'Evening', '2025-11-28 15:27:33'),
(43, 7, 'The Dubai Mall', 'World\'s largest shopping mall with over 1,200 stores, aquarium, ice rink, and cinema complex.', 'shopping', 'images/attractions/dubai/dubai-mall.jpg', 0.00, '10:00 AM - 12:00 AM', 'Evening', '2025-11-28 15:27:33'),
(44, 7, 'Burj Al Arab', 'Luxury 7-star hotel shaped like a ship\'s sail, standing on an artificial island.', 'landmark', 'images/attractions/dubai/burj-al-arab.jpg', 0.00, 'Exterior viewing only', 'Daytime for photos', '2025-11-28 15:27:33'),
(45, 8, 'Sagrada Familia', 'Gaudi\'s unfinished masterpiece basilica combining Gothic and Art Nouveau forms, under construction since 1882.', 'temple', 'images/attractions/barcelona/sagrada-familia.jpg', 26.00, '9:00 AM - 8:00 PM', 'Morning light', '2025-11-28 15:27:33'),
(46, 8, 'Park Güell', 'Gaudi\'s colorful public park with mosaic-covered buildings, offering panoramic city views.', 'park', 'images/attractions/barcelona/park-guell.jpg', 10.00, '8:30 AM - 8:30 PM', 'Early morning', '2025-11-28 15:27:33'),
(47, 8, 'La Rambla', 'Famous pedestrian street stretching for 1.2km with street performers, shops, and cafes.', 'entertainment', 'images/attractions/barcelona/la-rambla.jpg', 0.00, '24/7', 'Morning', '2025-11-28 15:27:33'),
(48, 8, 'Gothic Quarter', 'Medieval historic center with narrow streets, Roman ruins, and the Barcelona Cathedral.', 'landmark', 'images/attractions/barcelona/gothic-quarter.jpg', 0.00, '24/7', 'Afternoon', '2025-11-28 15:27:33'),
(49, 9, 'Big Ben', 'Iconic clock tower and Elizabeth Tower at the Palace of Westminster, symbol of British democracy and London.', 'landmark', 'images/attractions/london/big-ben.jpg', 0.00, '24/7 (exterior)', 'Daytime', '2025-11-28 15:27:33'),
(50, 9, 'London Eye', 'Giant Ferris wheel on the South Bank of the Thames offering panoramic views of London from 135 meters high.', 'entertainment', 'images/attractions/london/london-eye.jpg', 32.00, '11:00 AM - 6:00 PM', 'Clear days', '2025-11-28 15:27:33'),
(51, 9, 'Tower Bridge', 'Victorian bascule and suspension bridge over the Thames, with glass-floored walkways and engine rooms to explore.', 'landmark', 'images/attractions/london/tower-bridge.jpg', 12.00, '9:30 AM - 6:00 PM', 'When bridge lifts', '2025-11-28 15:27:33'),
(52, 9, 'Buckingham Palace', 'Royal residence and administrative headquarters of the monarch, famous for the Changing of the Guard ceremony.', 'landmark', 'images/attractions/london/buckingham-palace.jpg', 30.00, '9:30 AM - 7:30 PM (summer)', '11 AM for guard change', '2025-11-28 15:27:33'),
(53, 10, 'Oia Sunset', 'Breathtaking sunset views over the caldera from the village of Oia, the most famous in Greece.', 'nature', 'images/attractions/santorini/oia-sunset.jpg', 0.00, 'Sunset hours', '1 hour before sunset', '2025-11-28 15:27:33'),
(54, 10, 'Red Beach', 'Unique beach with red volcanic sand and towering crimson cliffs, created by volcanic activity.', 'beach', 'images/attractions/santorini/red-beach.jpg', 0.00, '24/7', 'Morning', '2025-11-28 15:27:33'),
(55, 10, 'Fira Town', 'Capital of Santorini perched on caldera edge with whitewashed buildings, shops, and restaurants.', 'landmark', 'images/attractions/santorini/fira-town.jpg', 0.00, '24/7', 'Evening', '2025-11-28 15:27:33'),
(56, 10, 'Ancient Thera', 'Archaeological site with ruins of ancient city offering panoramic views of the island.', 'landmark', 'images/attractions/santorini/ancient-thera.jpg', 6.00, '8:00 AM - 3:00 PM', 'Morning', '2025-11-28 15:27:33'),
(57, 11, 'Fushimi Inari Shrine', 'Famous Shinto shrine with thousands of vermilion torii gates stretching up Mount Inari.', 'temple', 'images/attractions/kyoto/fushimi-inari.jpg', 0.00, '24/7', 'Early morning', '2025-11-28 15:27:33'),
(58, 11, 'Kinkaku-ji Temple', 'Golden Pavilion covered in gold leaf, reflected in a tranquil pond surrounded by gardens.', 'temple', 'images/attractions/kyoto/kinkaku-ji.jpg', 4.00, '9:00 AM - 5:00 PM', 'Morning light', '2025-11-28 15:27:33'),
(59, 11, 'Arashiyama Bamboo Grove', 'Magical walking path through towering bamboo forest creating an otherworldly atmosphere.', 'nature', 'images/attractions/kyoto/bamboo-grove.jpg', 0.00, '24/7', 'Early morning', '2025-11-28 15:27:33'),
(60, 11, 'Gion District', 'Traditional geisha district with preserved machiya houses, tea houses, and cultural performances.', 'entertainment', 'images/attractions/kyoto/gion-district.jpg', 0.00, '24/7', 'Evening', '2025-11-28 15:27:33'),
(61, 12, 'Christ the Redeemer', 'Iconic 30-meter statue of Jesus Christ atop Corcovado mountain, overlooking Rio de Janeiro.', 'landmark', 'images/attractions/rio/christ-redeemer.jpg', 24.00, '8:00 AM - 7:00 PM', 'Morning for clear views', '2025-11-28 15:27:33'),
(62, 12, 'Copacabana Beach', 'Famous 4km beach with distinctive wave-patterned sidewalk, hotels, and vibrant beach culture.', 'beach', 'images/attractions/rio/copacabana-beach.jpg', 0.00, '24/7', 'Morning or sunset', '2025-11-28 15:27:33'),
(63, 12, 'Sugarloaf Mountain', 'Peak rising 396 meters above harbor, accessible by cable car with panoramic city views.', 'nature', 'images/attractions/rio/sugarloaf-mountain.jpg', 30.00, '8:00 AM - 9:00 PM', 'Sunset', '2025-11-28 15:27:33'),
(64, 12, 'Selarón Steps', 'Colorful tiled staircase created by artist Jorge Selarón, featuring tiles from around the world.', 'landmark', 'images/attractions/rio/selaron-steps.jpg', 0.00, '24/7', 'Morning', '2025-11-28 15:27:33'),
(65, 13, 'Table Mountain', 'Flat-topped mountain forming dramatic backdrop to Cape Town, accessible by cable car or hiking.', 'nature', 'images/attractions/cape-town/table-mountain.jpg', 20.00, '8:30 AM - 6:00 PM', 'Clear mornings', '2025-11-28 15:27:33'),
(66, 13, 'Robben Island', 'Island where Nelson Mandela was imprisoned, now a museum and UNESCO World Heritage Site.', 'museum', 'images/attractions/cape-town/robben-island.jpg', 25.00, 'Ferries 9:00 AM - 3:00 PM', 'Morning tours', '2025-11-28 15:27:33'),
(67, 13, 'Cape of Good Hope', 'Dramatic rocky headland at the southern tip of Cape Peninsula, meeting point of oceans.', 'nature', 'images/attractions/cape-town/cape-of-good-hope.jpg', 10.00, '6:00 AM - 6:00 PM', 'Morning', '2025-11-28 15:27:33'),
(68, 13, 'Kirstenbosch Gardens', 'Beautiful botanical garden at the foot of Table Mountain, showcasing indigenous plants.', 'park', 'images/attractions/cape-town/kirstenbosch-gardens.jpg', 8.00, '8:00 AM - 7:00 PM', 'Spring', '2025-11-28 15:27:33'),
(69, 14, 'Anne Frank House', 'Museum in the actual hiding place where Anne Frank wrote her famous diary during WWII.', 'museum', 'images/attractions/amsterdam/anne-frank-house.jpg', 14.00, '9:00 AM - 10:00 PM', 'Early booking required', '2025-11-28 15:27:33'),
(70, 14, 'Van Gogh Museum', 'Largest collection of Vincent van Gogh artworks, including Sunflowers and The Potato Eaters.', 'museum', 'images/attractions/amsterdam/van-gogh-museum.jpg', 20.00, '9:00 AM - 6:00 PM', 'Weekday afternoons', '2025-11-28 15:27:33'),
(71, 14, 'Canal Cruise', 'Boat tour through Amsterdam\'s UNESCO World Heritage canal ring with historic architecture.', 'entertainment', 'images/attractions/amsterdam/canal-cruise.jpg', 16.00, '9:00 AM - 10:00 PM', 'Daytime', '2025-11-28 15:27:33'),
(72, 14, 'Rijksmuseum', 'Dutch national museum dedicated to arts and history, featuring Rembrandt\'s Night Watch.', 'museum', 'images/attractions/amsterdam/rijksmuseum.jpg', 22.50, '9:00 AM - 5:00 PM', 'Morning', '2025-11-28 15:27:33'),
(73, 15, 'Grand Palace', 'Former royal residence with stunning architecture, temples, and the Emerald Buddha.', 'landmark', 'images/attractions/bangkok/grand-palace.jpg', 16.00, '8:30 AM - 3:30 PM', 'Early morning', '2025-11-28 15:27:33'),
(74, 15, 'Wat Arun', 'Temple of Dawn with distinctive prang (spire) decorated with colorful porcelain.', 'temple', 'images/attractions/bangkok/wat-arun.jpg', 3.00, '8:00 AM - 6:00 PM', 'Sunset', '2025-11-28 15:27:33'),
(75, 15, 'Chatuchak Market', 'World\'s largest weekend market with over 15,000 stalls selling everything imaginable.', 'shopping', 'images/attractions/bangkok/chatuchak-market.jpg', 0.00, 'Weekends 9:00 AM - 6:00 PM', 'Morning', '2025-11-28 15:27:33'),
(76, 15, 'Wat Pho', 'Temple of the Reclining Buddha featuring 46-meter long gold-plated Buddha statue.', 'temple', 'images/attractions/bangkok/wat-pho.jpg', 3.00, '8:00 AM - 6:30 PM', 'Morning', '2025-11-28 15:27:33'),
(77, 16, 'Hagia Sophia', 'Former basilica and mosque, now a museum showcasing Byzantine and Ottoman architecture.', 'museum', 'images/attractions/istanbul/hagia-sophia.jpg', 25.00, '9:00 AM - 7:00 PM', 'Early morning', '2025-11-28 15:27:33'),
(78, 16, 'Blue Mosque', 'Historic mosque known for its blue tiles and six minarets, an iconic Istanbul landmark.', 'temple', 'images/attractions/istanbul/blue-mosque.jpg', 0.00, '9:00 AM - 7:00 PM', 'Between prayer times', '2025-11-28 15:27:33'),
(79, 16, 'Grand Bazaar', 'One of the world\'s largest covered markets with over 4,000 shops across 61 streets.', 'shopping', 'images/attractions/istanbul/grand-bazaar.jpg', 0.00, '9:00 AM - 7:00 PM', 'Morning', '2025-11-28 15:27:33'),
(80, 16, 'Topkapi Palace', 'Former Ottoman sultan\'s residence with harem, treasury, and imperial collections.', 'museum', 'images/attractions/istanbul/topkapi-palace.jpg', 20.00, '9:00 AM - 6:00 PM', 'Morning', '2025-11-28 15:27:33'),
(81, 17, 'St. Mark\'s Square', 'Principal public square of Venice surrounded by historic buildings and cafes.', 'landmark', 'images/attractions/venice/st-marks-square.jpg', 0.00, '24/7', 'Early morning', '2025-11-28 15:27:33'),
(82, 17, 'Grand Canal', 'Major water-traffic corridor lined with Renaissance and Gothic palaces.', 'landmark', 'images/attractions/venice/grand-canal.jpg', 0.00, '24/7', 'Sunset gondola ride', '2025-11-28 15:27:33'),
(83, 17, 'Rialto Bridge', 'Oldest bridge across the Grand Canal, with shops and panoramic views.', 'landmark', 'images/attractions/venice/rialto-bridge.jpg', 0.00, '24/7', 'Morning', '2025-11-28 15:27:33'),
(84, 17, 'Doge\'s Palace', 'Gothic palace that was residence of the Doge of Venice, now a museum.', 'museum', 'images/attractions/venice/doges-palace.jpg', 20.00, '8:30 AM - 7:00 PM', 'Morning', '2025-11-28 15:27:33'),
(85, 18, 'Machu Picchu Citadel', 'Ancient Incan citadel set high in the Andes Mountains, one of the New Seven Wonders.', 'landmark', 'images/attractions/machu-picchu/citadel.jpg', 45.00, '6:00 AM - 5:00 PM', 'Early morning', '2025-11-28 15:27:33'),
(86, 18, 'Huayna Picchu', 'Steep mountain overlooking Machu Picchu with challenging hike and panoramic views.', 'nature', 'images/attractions/machu-picchu/huayna-picchu.jpg', 20.00, '7:00 AM - 1:00 PM', 'Morning', '2025-11-28 15:27:33'),
(87, 18, 'Sun Gate', 'Traditional entrance to Machu Picchu with first views of the citadel for Inca Trail hikers.', 'landmark', 'images/attractions/machu-picchu/sun-gate.jpg', 0.00, '6:00 AM - 5:00 PM', 'Sunrise', '2025-11-28 15:27:33'),
(88, 18, 'Temple of the Sun', 'Important religious structure with precise astronomical alignments and fine stonework.', 'temple', 'images/attractions/machu-picchu/temple-of-sun.jpg', 0.00, '6:00 AM - 5:00 PM', 'Morning', '2025-11-28 15:27:33'),
(89, 19, 'Gardens by the Bay', 'Futuristic nature park with Supertree Grove and climate-controlled conservatories.', 'park', 'images/attractions/singapore/gardens-by-bay.jpg', 28.00, '5:00 AM - 2:00 AM', 'Evening for light show', '2025-11-28 15:27:33'),
(90, 19, 'Marina Bay Sands', 'Integrated resort with infinity pool, observation deck, and luxury shopping mall.', 'entertainment', 'images/attractions/singapore/marina-bay-sands.jpg', 23.00, '11:00 AM - 9:00 PM', 'Sunset', '2025-11-28 15:27:33'),
(91, 19, 'Sentosa Island', 'Resort island with beaches, theme parks, golf courses, and luxury hotels.', 'entertainment', 'images/attractions/singapore/sentosa-island.jpg', 4.00, '24/7', 'Weekdays', '2025-11-28 15:27:33'),
(92, 19, 'Singapore Zoo', 'World-renowned zoo with open enclosures and naturalistic habitats for animals.', 'park', 'images/attractions/singapore/singapore-zoo.jpg', 48.00, '8:30 AM - 6:00 PM', 'Morning', '2025-11-28 15:27:33'),
(93, 20, 'Prague Castle', 'Largest ancient castle complex in the world, dating back to 9th century.', 'landmark', 'images/attractions/prague/prague-castle.jpg', 15.00, '6:00 AM - 10:00 PM', 'Morning', '2025-11-28 15:27:33'),
(94, 20, 'Charles Bridge', 'Historic bridge decorated with statues of saints, connecting Old Town with Lesser Town.', 'landmark', 'images/attractions/prague/charles-bridge.jpg', 0.00, '24/7', 'Sunrise', '2025-11-28 15:27:33'),
(95, 20, 'Old Town Square', 'Historic square with Astronomical Clock, churches, and colorful baroque buildings.', 'landmark', 'images/attractions/prague/old-town-square.jpg', 0.00, '24/7', 'Morning', '2025-11-28 15:27:33'),
(96, 20, 'Astronomical Clock', 'Medieval clock dating to 1410, with moving figures and astronomical dial.', 'landmark', 'images/attractions/prague/astronomical-clock.jpg', 0.00, '9:00 AM - 9:00 PM', 'On the hour', '2025-11-28 15:27:33'),
(97, 21, 'Stanley Park', '400-hectare public park with seawall, beaches, trails, and aquarium.', 'park', 'images/attractions/vancouver/stanley-park.jpg', 0.00, '24/7', 'Morning', '2025-11-28 15:27:33'),
(98, 21, 'Capilano Suspension Bridge', '137-meter long suspension bridge 70 meters above Capilano River.', 'nature', 'images/attractions/vancouver/capilano-bridge.jpg', 55.00, '9:00 AM - 7:00 PM', 'Weekday mornings', '2025-11-28 15:27:33'),
(99, 21, 'Granville Island', 'Peninsula with public market, artisan workshops, and performing arts theaters.', 'entertainment', 'images/attractions/vancouver/granville-island.jpg', 0.00, '9:00 AM - 7:00 PM', 'Morning', '2025-11-28 15:27:33'),
(100, 21, 'Grouse Mountain', 'Mountain resort with hiking, skiing, wildlife refuge, and panoramic city views.', 'nature', 'images/attractions/vancouver/grouse-mountain.jpg', 69.00, '9:00 AM - 10:00 PM', 'Sunset', '2025-11-28 15:27:33'),
(101, 22, 'Skyline Gondola', 'Steep gondola ride to Bob\'s Peak with panoramic views and luge track.', 'entertainment', 'images/attractions/queenstown/skyline-gondola.jpg', 46.00, '9:00 AM - 9:00 PM', 'Sunset', '2025-11-28 15:27:33'),
(102, 22, 'Milford Sound', 'Fjord with dramatic cliffs, waterfalls, and wildlife cruises through fjord.', 'nature', 'images/attractions/queenstown/milford-sound.jpg', 55.00, 'Cruises 9:00 AM - 4:00 PM', 'Morning cruises', '2025-11-28 15:27:33'),
(103, 22, 'Kawarau Bridge Bungy', 'World\'s first commercial bungy jumping site over Kawarau River.', 'entertainment', 'images/attractions/queenstown/kawarau-bungy.jpg', 195.00, '9:00 AM - 5:00 PM', 'Morning', '2025-11-28 15:27:33'),
(104, 22, 'Remarkables Ski Field', 'Popular ski resort with stunning alpine scenery and varied terrain.', 'entertainment', 'images/attractions/queenstown/remarkables-ski.jpg', 139.00, '9:00 AM - 4:00 PM', 'Winter season', '2025-11-28 15:27:33'),
(105, 23, 'Jemaa el-Fnaa Square', 'Busy square with storytellers, musicians, snake charmers, and food stalls.', 'entertainment', 'images/attractions/marrakech/jemaa-elfnaa.jpg', 0.00, '24/7', 'Evening', '2025-11-28 15:27:33'),
(106, 23, 'Bahia Palace', '19th-century palace with beautiful gardens, courtyards, and intricate decorations.', 'landmark', 'images/attractions/marrakech/bahia-palace.jpg', 7.00, '9:00 AM - 5:00 PM', 'Morning', '2025-11-28 15:27:33'),
(107, 23, 'Majorelle Garden', 'Botanical garden designed by French painter Jacques Majorelle, restored by Yves Saint Laurent.', 'park', 'images/attractions/marrakech/majorelle-garden.jpg', 8.00, '8:00 AM - 6:00 PM', 'Morning', '2025-11-28 15:27:33'),
(108, 23, 'Koutoubia Mosque', 'Largest mosque in Marrakech with 77-meter minaret, an city landmark.', 'temple', 'images/attractions/marrakech/koutoubia-mosque.jpg', 0.00, 'Exterior only', 'Evening', '2025-11-28 15:27:33'),
(109, 24, 'Gyeongbokgung Palace', 'Main royal palace of Joseon dynasty with changing of the guard ceremony.', 'landmark', 'images/attractions/seoul/gyeongbokgung-palace.jpg', 3.00, '9:00 AM - 6:00 PM', 'Morning for ceremony', '2025-11-28 15:27:33'),
(110, 24, 'N Seoul Tower', 'Communications tower on Namsan Mountain with observation decks and love locks.', 'landmark', 'images/attractions/seoul/n-seoul-tower.jpg', 16.00, '10:00 AM - 11:00 PM', 'Sunset', '2025-11-28 15:27:33'),
(111, 24, 'Bukchon Hanok Village', 'Traditional Korean village with preserved hanok (traditional houses).', 'landmark', 'images/attractions/seoul/bukchon-village.jpg', 0.00, '24/7', 'Morning', '2025-11-28 15:27:33'),
(112, 24, 'Myeongdong Shopping Street', 'Popular shopping district with cosmetics, fashion, and street food.', 'shopping', 'images/attractions/seoul/myeongdong.jpg', 0.00, '10:00 AM - 10:00 PM', 'Evening', '2025-11-28 15:27:33'),
(113, 25, 'Waikiki Beach', 'Famous beach with golden sand, surfing, and Diamond Head backdrop.', 'beach', 'images/attractions/hawaii/waikiki-beach.jpg', 0.00, '24/7', 'Morning', '2025-11-28 15:27:33'),
(114, 25, 'Diamond Head', 'Volcanic tuff cone with hiking trail offering panoramic views of Honolulu.', 'nature', 'images/attractions/hawaii/diamond-head.jpg', 5.00, '6:00 AM - 6:00 PM', 'Early morning', '2025-11-28 15:27:33'),
(115, 25, 'Pearl Harbor', 'Historic site with USS Arizona Memorial and museums from WWII.', 'museum', 'images/attractions/hawaii/pearl-harbor.jpg', 0.00, '7:00 AM - 5:00 PM', 'Morning', '2025-11-28 15:27:33'),
(116, 25, 'Hanauma Bay', 'Protected marine life conservation area with excellent snorkeling.', 'nature', 'images/attractions/hawaii/hanauma-bay.jpg', 12.00, '6:00 AM - 6:00 PM', 'Morning', '2025-11-28 15:27:33');

-- --------------------------------------------------------

--
-- Table structure for table `bundletrips`
--

DROP TABLE IF EXISTS `bundletrips`;
CREATE TABLE IF NOT EXISTS `bundletrips` (
  `bundle_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `actual_price` decimal(10,2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_general_ci DEFAULT 'active',
  `image_url` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `max_people` int DEFAULT '0',
  `category` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `region` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`bundle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bundletrips`
--

INSERT INTO `bundletrips` (`bundle_id`, `name`, `description`, `actual_price`, `start_date`, `end_date`, `status`, `image_url`, `max_people`, `category`, `country`, `region`, `link`) VALUES
(1, 'Best of East Coast USA Tour', '6 Nights / 7 Days exploring NYC, Washington DC & Niagara Falls', 1507.00, NULL, NULL, 'active', 'https://www.holidify.com/images/compressed/dest_pixa_5512.jpg', 99, 'USA Tours', 'USA', 'North America', 'https://www.holidify.com/country/usa/packages.html'),
(2, 'Memorable Honolulu Tour', '4 Nights / 5 Days Waikiki & Pearl Harbor', 1118.00, NULL, NULL, 'active', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/5d/2b/3d/photo1jpg.jpg?w=2200&h=1200&s=1', 99, 'USA Tours', 'USA', 'North America', 'https://www.holidify.com/country/usa/packages.html'),
(3, 'Argentina General Tour', 'Buenos Aires, Patagonia and other top destinations', NULL, NULL, NULL, 'active', 'https://images.squarespace-cdn.com/content/v1/52efc94ae4b01409c74273d6/1585836711975-N7XHQ1OEB1VT1Q28Y0NP/BuenosAires-1815x1200.jpg', 99, 'Argentina Tours', 'Argentina', 'South America', 'https://www.holidify.com/country/argentina/packages.html'),
(4, 'Buenos Aires Highlights', 'Explore Buenos Aires with curated tours', NULL, NULL, NULL, 'active', 'https://travel-buddies.com/wp-content/uploads/2025/01/1_buenos-aires-highlights.jpg', 99, 'Argentina Tours', 'Argentina', 'South America', 'https://www.holidify.com/places/buenos-aires/packages.html'),
(5, 'Brazil General Tour', 'Rio, Sao Paulo & Amazon tours', NULL, NULL, NULL, 'active', 'https://www.specialholidays.com/world/uploads/images/tours/slider/43819_Brazil.jpg', 99, 'Brazil Tours', 'Brazil', 'South America', 'https://www.holidify.com/country/brazil/packages.html'),
(6, 'Rio de Janeiro Highlights', 'Discover Rio with top-rated packages', NULL, NULL, NULL, 'active', 'https://cdn.holidayguru.es/wp-content/uploads/2016/08/Aerial-view-of-Christ-Sugarloaf-Rio-de-Janeiro-Brazil-iStock_55264880_LARGE-EDITORIAL-ONLY-dolphinphoto-2.jpg', 99, 'Brazil Tours', 'Brazil', 'South America', 'https://www.holidify.com/places/rio-de-janeiro/packages.html'),
(7, 'London City Packages', 'Curated packages exploring London landmarks', NULL, NULL, NULL, 'active', 'https://media1.thrillophilia.com/filestore/2wjxo4jwhi79km0hmiz0hmo1vn5a_shutterstock_155068436.jpg?w=1440&dpr=2', 99, 'UK Tours', 'UK', 'Europe', 'https://www.holidify.com/places/london/packages.html'),
(9, 'Barcelona City Packages', 'Explore Barcelona with curated tours & deals', NULL, NULL, NULL, 'active', 'https://api.time.com/wp-content/uploads/2023/03/Worlds-Greatest-Places-Barcelona-Spain.jpg', 99, 'Spain Tours', 'Spain', 'Europe', 'https://www.holidify.com/places/barcelona/packages.html'),
(10, 'Madrid City Packages', 'Discover Madrid through best tour packages', NULL, NULL, NULL, 'active', 'https://res.cloudinary.com/djcyhbk2e/image/upload/f_auto,q_35,w_1200/v1/gvv/prod/bjmphwjz2ewhy4ptwfku', 99, 'Spain Tours', 'Spain', 'Europe', 'https://www.holidify.com/country/spain/packages.html'),
(11, 'Lisbon Tour Deals', 'Discover Lisbon through top-rated tour packages', NULL, NULL, NULL, 'active', 'https://lisbontickets.tours/wp-content/uploads/2024/02/lisbon-helicopter-tour-10.jpg', 99, 'Portugal Tours', 'Portugal', 'Europe', 'https://www.holidify.com/places/lisbon/packages.html'),
(12, 'Berlin City Packages', 'Explore Berlin with curated city tours', NULL, NULL, NULL, 'active', 'https://hdqwalls.com/wallpapers/berlin-city-view-from-top-pic.jpg', 99, 'Germany Tours', 'Germany', 'Europe', 'https://www.holidify.com/country/germany/packages.html'),
(13, 'Munich Tour Packages', 'Discover Munich & Bavarian highlights', NULL, NULL, NULL, 'active', 'https://statemag.state.gov/wp-content/uploads/2020/10/1120POM-1.jpg', 99, 'Germany Tours', 'Germany', 'Europe', 'https://www.holidify.com/places/munich/packages.html'),
(14, 'Athens Tour Packages', 'Explore Athens with top-rated tours', NULL, NULL, NULL, 'active', 'https://expertvagabond.com/wp-content/uploads/things-to-do-athens-guide.jpg', 99, 'Greece Tours', 'Greece', 'Europe', 'https://www.holidify.com/places/athens/packages.html'),
(15, 'Seoul Tour Packages', 'Discover Seoul with curated packages', NULL, NULL, NULL, 'active', 'https://www.zastavki.com/pictures/1920x1200/2012/Cities_Evening_in_Seoul_034286_.jpg', 99, 'South Korea Tours', 'South Korea', 'Asia', 'https://www.holidify.com/places/seoul/packages.html'),
(16, 'Tokyo Tour Packages', 'Tokyo & Japan highlights with curated tours', NULL, NULL, NULL, 'active', 'https://img.freepik.com/premium-photo/tokyo-shinjyuku-shibuya-area-panoramic-view-night_1182900-80652.jpg', 99, 'Japan Tours', 'Japan', 'Asia', 'https://www.holidify.com/country/japan/packages.html');

-- --------------------------------------------------------

--
-- Table structure for table `bundletrip_accommodations`
--

DROP TABLE IF EXISTS `bundletrip_accommodations`;
CREATE TABLE IF NOT EXISTS `bundletrip_accommodations` (
  `bundle_id` int NOT NULL,
  `accommodation_id` int NOT NULL,
  PRIMARY KEY (`bundle_id`,`accommodation_id`),
  KEY `accommodation_id` (`accommodation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bundletrip_destinations`
--

DROP TABLE IF EXISTS `bundletrip_destinations`;
CREATE TABLE IF NOT EXISTS `bundletrip_destinations` (
  `bundle_id` int NOT NULL,
  `destination_id` int NOT NULL,
  PRIMARY KEY (`bundle_id`,`destination_id`),
  KEY `destination_id` (`destination_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bundletrip_discounts`
--

DROP TABLE IF EXISTS `bundletrip_discounts`;
CREATE TABLE IF NOT EXISTS `bundletrip_discounts` (
  `bundle_id` int NOT NULL,
  `discount_id` int NOT NULL,
  PRIMARY KEY (`bundle_id`,`discount_id`),
  KEY `discount_id` (`discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bundletrip_events`
--

DROP TABLE IF EXISTS `bundletrip_events`;
CREATE TABLE IF NOT EXISTS `bundletrip_events` (
  `bundle_id` int NOT NULL,
  `event_id` int NOT NULL,
  PRIMARY KEY (`bundle_id`,`event_id`),
  KEY `event_id` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bundletrip_flights`
--

DROP TABLE IF EXISTS `bundletrip_flights`;
CREATE TABLE IF NOT EXISTS `bundletrip_flights` (
  `bundle_id` int NOT NULL,
  `flight_id` int NOT NULL,
  PRIMARY KEY (`bundle_id`,`flight_id`),
  KEY `flight_id` (`flight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chatbot_knowledge`
--

DROP TABLE IF EXISTS `chatbot_knowledge`;
CREATE TABLE IF NOT EXISTS `chatbot_knowledge` (
  `knowledge_id` int NOT NULL,
  `entity_type` enum('city','country','region','attraction_type','food','event_type','general') COLLATE utf8mb4_general_ci NOT NULL,
  `entity_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `parent_entity` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `keywords` text COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Comma-separated keywords for matching',
  `response_template` text COLLATE utf8mb4_general_ci NOT NULL,
  `data_source` enum('destinations','attractions','accommodations','combined') COLLATE utf8mb4_general_ci DEFAULT 'destinations',
  `priority` int DEFAULT '5' COMMENT '1-10, higher = more important',
  `usage_count` int DEFAULT '0',
  `last_used` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

DROP TABLE IF EXISTS `destinations`;
CREATE TABLE IF NOT EXISTS `destinations` (
  `destination_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `region` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `image_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`destination_id`),
  UNIQUE KEY `unique_destination` (`name`,`country`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`destination_id`, `name`, `country`, `region`, `description`, `image_url`, `created_at`) VALUES
(1, 'Paris', 'France', 'europe', 'The City of Light, famous for its art, fashion, gastronomy and culture. Home to the Eiffel Tower, Louvre Museum, and Notre-Dame Cathedral.', 'images/destinations/paris.jpg', '2025-11-04 18:11:41'),
(2, 'Tokyo', 'Japan', 'asia', 'A dynamic metropolis where ultramodern skyscrapers and neon-lit entertainment districts stand alongside historic temples and serene gardens.', 'images/destinations/tokyo.jpg', '2025-11-04 18:11:41'),
(3, 'New York City', 'United States', 'north-america', 'The Big Apple offers iconic landmarks like Times Square, Central Park, and Statue of Liberty with world-class museums and Broadway shows.', 'images/destinations/new-york.jpg', '2025-11-04 18:11:41'),
(4, 'Bali', 'Indonesia', 'asia', 'Tropical paradise known for its volcanic mountains, iconic rice paddies, beaches and coral reefs. Rich in culture and spiritual traditions.', 'images/destinations/bali.jpg', '2025-11-04 18:11:41'),
(5, 'Rome', 'Italy', 'europe', 'The Eternal City boasts ancient ruins like the Colosseum and Roman Forum, Renaissance art, and incredible Italian cuisine.', 'images/destinations/rome.jpg', '2025-11-04 18:11:41'),
(6, 'Sydney', 'Australia', 'oceania', 'Famous for its iconic Opera House and Harbour Bridge, surrounded by beautiful beaches like Bondi and Coogee.', 'images/destinations/sydney.jpg', '2025-11-04 18:11:41'),
(7, 'Dubai', 'United Arab Emirates', 'asia', 'Ultra-modern city known for luxury shopping, avant-garde architecture, lively nightlife and desert safaris.', 'images/destinations/dubai.jpg', '2025-11-04 18:11:41'),
(8, 'Barcelona', 'Spain', 'europe', 'Cosmopolitan city with unique Gaudi architecture, beautiful Mediterranean beaches, and vibrant street life.', 'images/destinations/barcelona.jpg', '2025-11-04 18:11:41'),
(9, 'London', 'United Kingdom', 'europe', 'Historic city featuring Buckingham Palace, Tower of London, British Museum, and modern attractions like the London Eye.', 'images/destinations/london.jpg', '2025-11-04 18:11:41'),
(10, 'Santorini', 'Greece', 'europe', 'Stunning volcanic island with whitewashed buildings, blue-domed churches, and spectacular sunsets over the caldera.', 'images/destinations/santorini.jpg', '2025-11-04 18:11:41'),
(11, 'Kyoto', 'Japan', 'asia', 'Former imperial capital known for its classical Buddhist temples, gardens, imperial palaces, and traditional wooden houses.', 'images/destinations/kyoto.jpg', '2025-11-04 18:11:41'),
(12, 'Rio de Janeiro', 'Brazil', 'south-america', 'Vibrant city known for its Carnival festival, samba music, Copacabana Beach, and the iconic Christ the Redeemer statue.', 'images/destinations/rio.jpg', '2025-11-04 18:11:41'),
(13, 'Cape Town', 'South Africa', 'africa', 'Stunning coastal city at the foot of Table Mountain, with beautiful beaches, winelands, and diverse wildlife.', 'images/destinations/cape-town.jpg', '2025-11-04 18:11:41'),
(14, 'Amsterdam', 'Netherlands', 'europe', 'Charming city of canals, cycling paths, world-class museums like Van Gogh Museum, and historic Anne Frank House.', 'images/destinations/amsterdam.jpg', '2025-11-04 18:11:41'),
(15, 'Bangkok', 'Thailand', 'asia', 'Vibrant capital known for ornate temples, bustling street markets, floating markets, and vibrant nightlife.', 'images/destinations/bangkok.jpg', '2025-11-04 18:11:41'),
(16, 'Istanbul', 'Turkey', 'asia', 'City spanning Europe and Asia, famous for its historic sites like Hagia Sophia, Blue Mosque, and Grand Bazaar.', 'images/destinations/istanbul.jpg', '2025-11-04 18:11:41'),
(17, 'Venice', 'Italy', 'europe', 'Floating city built on canals, known for its romantic gondola rides, St. Mark\'s Square, and historic architecture.', 'images/destinations/venice.jpg', '2025-11-04 18:11:41'),
(18, 'Machu Picchu', 'Peru', 'south-america', 'Ancient Incan citadel set high in the Andes Mountains, offering breathtaking views and archaeological wonders.', 'images/destinations/machu-picchu.jpg', '2025-11-04 18:11:41'),
(19, 'Singapore', 'Singapore', 'asia', 'Modern city-state known for its futuristic architecture, diverse cuisine, Gardens by the Bay, and clean streets.', 'images/destinations/singapore.jpg', '2025-11-04 18:11:41'),
(20, 'Prague', 'Czech Republic', 'europe', 'The City of a Hundred Spires, known for its Old Town Square, historic Prague Castle, and charming Charles Bridge.', 'images/destinations/prague.jpg', '2025-11-04 18:11:41'),
(21, 'Vancouver', 'Canada', 'north-america', 'Stunning coastal city surrounded by mountains, known for Stanley Park, diverse neighborhoods, and outdoor activities.', 'images/destinations/vancouver.jpg', '2025-11-04 18:11:41'),
(22, 'Queenstown', 'New Zealand', 'oceania', 'Adventure capital of the world, offering bungee jumping, skiing, and stunning Southern Alps scenery.', 'images/destinations/queenstown.jpg', '2025-11-04 18:11:41'),
(23, 'Marrakech', 'Morocco', 'africa', 'Vibrant city known for its medina, bustling souks, beautiful riads, and the famous Jardin Majorelle.', 'images/destinations/marrakech.jpg', '2025-11-04 18:11:41'),
(24, 'Seoul', 'South Korea', 'asia', 'Dynamic capital blending modern skyscrapers and pop culture with ancient temples and traditional markets.', 'images/destinations/seoul.jpg', '2025-11-04 18:11:41'),
(25, 'Hawaii', 'United States', 'north-america', 'Tropical paradise with volcanic landscapes, stunning beaches, lush rainforests, and rich Polynesian culture.', 'images/destinations/hawaii.jpg', '2025-11-04 18:11:41'),
(26, 'Rabih', 'Lebanon', 'asia', 'dhevgfehcfke', NULL, '2025-12-28 16:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
CREATE TABLE IF NOT EXISTS `discount` (
  `discount_id` int NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8mb4_general_ci,
  `amount` decimal(10,2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `ticket_price` decimal(10,2) DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
CREATE TABLE IF NOT EXISTS `flights` (
  `flight_id` int NOT NULL AUTO_INCREMENT,
  `company` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `origin` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `destination` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `departure` datetime DEFAULT NULL,
  `arrival` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`flight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `trip_id` int DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_method` enum('card','PayPal') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment_status` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `trip_id` (`trip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `reviewable_type` varchar(50) NOT NULL,
  `reviewable_id` int DEFAULT NULL,
  `rating` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `status` enum('reviewed','cancelled') DEFAULT 'reviewed',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_reviews_user` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `reviewable_type`, `reviewable_id`, `rating`, `title`, `comment`, `status`, `created_at`) VALUES
(2, 14, 'destination', NULL, 5, 'Beirut', 'Beirut is an intoxicating blend of ancient history, world-class cuisine, and an unbreakable spirit that proves it is truly the \"Paris of the Middle East\" with a gritty, modern soul.', 'reviewed', '2026-01-04 14:08:04'),
(3, 14, 'stay', NULL, 5, 'Phoenicia Hotel', 'With its stunning rooftop views, impeccably designed rooms, and a staff that treats you like family, this hotel is a perfect sanctuary in the heart of Beirut’s vibrant energy..', 'reviewed', '2026-01-04 14:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

DROP TABLE IF EXISTS `trip`;
CREATE TABLE IF NOT EXISTS `trip` (
  `trip_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `status` enum('booked','cancelled') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'booked',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `departure` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `arrival` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `adults` int NOT NULL DEFAULT '1',
  `children` int NOT NULL DEFAULT '0',
  `class` enum('Economy','Premium','Business','First') COLLATE utf8mb4_general_ci NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`trip_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`trip_id`, `user_id`, `status`, `created_at`, `departure`, `arrival`, `adults`, `children`, `class`, `visible`) VALUES
(4, 14, 'cancelled', '2026-01-02 18:57:57', 'PAR', 'LON', 2, 2, 'Business', 0),
(5, 14, 'booked', '2026-01-03 16:43:14', 'PAR', 'LON', 2, 2, 'Business', 1),
(6, 14, 'booked', '2026-01-04 18:42:28', 'BEI', 'BAR', 4, 0, 'First', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trip_accommodations`
--

DROP TABLE IF EXISTS `trip_accommodations`;
CREATE TABLE IF NOT EXISTS `trip_accommodations` (
  `trip_id` int NOT NULL,
  `accommodation_id` int NOT NULL,
  PRIMARY KEY (`trip_id`,`accommodation_id`),
  KEY `accommodation_id` (`accommodation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trip_destinations`
--

DROP TABLE IF EXISTS `trip_destinations`;
CREATE TABLE IF NOT EXISTS `trip_destinations` (
  `trip_id` int NOT NULL,
  `destination_id` int NOT NULL,
  PRIMARY KEY (`trip_id`,`destination_id`),
  KEY `destination_id` (`destination_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trip_events`
--

DROP TABLE IF EXISTS `trip_events`;
CREATE TABLE IF NOT EXISTS `trip_events` (
  `trip_id` int NOT NULL,
  `event_id` int NOT NULL,
  PRIMARY KEY (`trip_id`,`event_id`),
  KEY `event_id` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trip_flights`
--

DROP TABLE IF EXISTS `trip_flights`;
CREATE TABLE IF NOT EXISTS `trip_flights` (
  `trip_id` int NOT NULL,
  `flight_id` int NOT NULL,
  PRIMARY KEY (`trip_id`,`flight_id`),
  KEY `flight_id` (`flight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `google_id` varchar(255) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `oauth_provider` varchar(20) DEFAULT NULL,
  `reset_token` varchar(64) DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `email_verification_token` varchar(64) DEFAULT NULL,
  `email_verified` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `idx_reset_token` (`reset_token`),
  KEY `idx_verification_token` (`email_verification_token`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `username`, `email`, `password`, `phone`, `role`, `created_at`, `google_id`, `facebook_id`, `oauth_provider`, `reset_token`, `reset_expires`, `email_verification_token`, `email_verified`) VALUES
(1, 'chris jericho', '', '', 'breakTheWallsDown@gmail.com', '$2y$10$kIgbZW7IONLSMaFJonOu0uHbgnb1U2.LKdWw535Snh2fFydM1NxE.', NULL, 'user', '2025-10-16 12:18:24', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 'cristiano', '', '', 'cristiano@gmail.com', '$2y$10$32/plC/RxgDW4BeADsyoyekgVP05PakwbbTmpFvA4sdjG7KgvMyIi', NULL, 'user', '2025-10-17 17:49:44', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, 'rabih', '', '', 'rabih@gmail.com', '$2y$10$ypWIYuXE55R7wftjLgaDEuCu3q4qKEQuOdb6FLmAzbfj/nBizAMAe', NULL, 'user', '2025-10-17 17:57:42', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, 'rabih', '', '', 'rabih1@gmail.com', '$2y$10$VS6dClfQx0PaQAJ8C7RhVOtJ4KMnl/L/gLUGtgeEzjqz6.z82ZsGW', NULL, 'user', '2025-10-17 18:00:04', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(5, 'jad', 'jabr', '', 'jad1@gmail.com', '$2y$10$XLkLeEErnDdFloqHxFz/vOmWMg.pxpzje0SvrNXK7XTUzcf.bJ4wG', NULL, 'user', '2025-10-18 18:37:50', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(6, 'travis', 'scott', '', 'travis1@gmail.com', '$2y$10$6Pb6F4dzePPNvzFTGLWLNOEJ91DDljXdU2ITVGRidOfI6iKuvOwWK', NULL, 'user', '2025-10-18 18:46:07', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(7, 'jamie', 'fox', 'jamie_fox', 'jamiefox@gmail.com', '$2y$10$t7vhIzpe0cDvmv6C9uV8bOkDAvR/PP9R08kjWrcvnCcrWqHWRhYW2', NULL, 'user', '2025-10-20 19:28:14', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, 'Ghaith', '', '', 'abouelezz_ghaith@travelplanner.com', '$2y$10$dBQ1d4BgibPtPgjTQWnHHOLu6whQqYJPCESQOhRzjl2vNDTjylBIe', NULL, 'admin', '2025-10-23 16:18:14', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(9, 'brahim', 'al hakami', 'brahim_al h', 'brahim@gmail.com', '$2y$10$A63FeAQ0klmF4sQdpmB.TunIi9aeYqyj.S4aUUN5l1205u7YHMr32', NULL, 'user', '2025-11-25 11:03:27', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10, 'leokris', 'spartan', 'leokrisspartan_6d7e35', 'leokrisspartan@gmail.com', NULL, NULL, 'user', '2025-11-27 19:53:48', '103683307630923532847', NULL, 'google', 'afc22fc0f230a59f5440df94960038824a2f1be05e898f64c79fc18b98f446fa', '2025-11-30 17:36:32', NULL, 0),
(11, 'ron', 'aldo', 'ron_aldo', 'ronaldoleo707@gmail.com', '$2y$10$CT6Lat3P9g/TQIFKegzum.VWJLeURfeAHYHG7Mk8/ZtoGgDH.Qfta', NULL, 'user', '2025-11-29 12:29:23', NULL, NULL, NULL, '843ea7b4005d783ae958d153c0e0c00f89d18827f5053558c13d9c030c5c1a16', '2025-11-30 17:54:26', '04b859fc68db28a0ec34ee0a71feb7c8a4cbd740360a8c42df7dfa084f4b9d2e', 1),
(12, 'brahim', 'al hakami', 'brahim_al h1', '22230237@students.liu.edu.lb', '$2y$10$yH4n23qgiovSB5L3OJI12eD2j5rvEmGN9UQ16K.yYhJqJRSNhSSGW', NULL, 'user', '2025-11-29 15:49:12', NULL, NULL, NULL, NULL, NULL, '091b8d239f2fab97fc5d84860e9472edbbbc4c850695d493e615d3f5c1c38633', 0),
(13, 'rabih', 'rabih', 'rabih_rabi', 'rsharafldine@gmail.com', '$2y$10$b/AiYH2a.RTuY5ms2oheIuINdCDwed4uo1D7w4.XF7jy9A4k4o4D2', NULL, 'user', '2025-12-28 14:54:28', NULL, NULL, NULL, NULL, NULL, '245619f6d3aec9478658c02da9b0580d0301bf1aa81ee807456ba424dbc009a0', 0),
(14, 'Rabih', 'Sharafldine', 'rabih_shar', '22231067@students.liu.edu.lb', '$2y$10$IomR3I7qwNIuyi1QrKg0.OrMGK/53UzyqSKmSigw9iRYIiZKlWtW2', NULL, 'user', '2025-12-28 14:57:49', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(19, 'Rabih', 'Sharafldine', 'rabih_shar1', 'sharafldinerabih@gmail.com', '$2y$10$4T7XhqV2oqZ9BI/fK9hjYuH58ci9142WWvp1BNxDD/Hq6H6tAr0xm', NULL, 'admin', '2026-01-02 15:54:45', NULL, NULL, NULL, NULL, NULL, '2dbd534dfe71e55f7bb241010b91e592dcab30b5ae5be35bd4997eecde77e2be', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_accommodations`
--

DROP TABLE IF EXISTS `user_accommodations`;
CREATE TABLE IF NOT EXISTS `user_accommodations` (
  `user_id` int NOT NULL,
  `accommodation_id` int NOT NULL,
  `checkin_date` date NOT NULL,
  `checkout_date` date DEFAULT NULL,
  PRIMARY KEY (`user_id`,`accommodation_id`,`checkin_date`),
  KEY `accommodation_id` (`accommodation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_destinations`
--

DROP TABLE IF EXISTS `user_destinations`;
CREATE TABLE IF NOT EXISTS `user_destinations` (
  `user_id` int NOT NULL,
  `destination_id` int NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`user_id`,`destination_id`),
  KEY `destination_id` (`destination_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_discounts`
--

DROP TABLE IF EXISTS `user_discounts`;
CREATE TABLE IF NOT EXISTS `user_discounts` (
  `user_id` int NOT NULL,
  `discount_id` int NOT NULL,
  `assigned_date` date DEFAULT NULL,
  PRIMARY KEY (`user_id`,`discount_id`),
  KEY `discount_id` (`discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_events`
--

DROP TABLE IF EXISTS `user_events`;
CREATE TABLE IF NOT EXISTS `user_events` (
  `user_id` int NOT NULL,
  `event_id` int NOT NULL,
  `attendance_date` date DEFAULT NULL,
  PRIMARY KEY (`user_id`,`event_id`),
  KEY `event_id` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_flights`
--

DROP TABLE IF EXISTS `user_flights`;
CREATE TABLE IF NOT EXISTS `user_flights` (
  `user_id` int NOT NULL,
  `flight_id` int NOT NULL,
  `seat_number` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`,`flight_id`),
  KEY `flight_id` (`flight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `wishlist_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `destination_id` int NOT NULL,
  `added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`wishlist_id`),
  UNIQUE KEY `unique_wishlist` (`user_id`,`destination_id`),
  KEY `destination_id` (`destination_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `user_id`, `destination_id`, `added_at`, `created_at`) VALUES
(1, 14, 25, '2026-01-04 14:36:21', '2026-01-04 16:49:38');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accommodation_destinations`
--
ALTER TABLE `accommodation_destinations`
  ADD CONSTRAINT `accommodation_destinations_ibfk_1` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodations` (`accommodation_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `accommodation_destinations_ibfk_2` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`destination_id`) ON DELETE CASCADE;

--
-- Constraints for table `attractions`
--
ALTER TABLE `attractions`
  ADD CONSTRAINT `attractions_ibfk_1` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`destination_id`) ON DELETE CASCADE;

--
-- Constraints for table `bundletrip_accommodations`
--
ALTER TABLE `bundletrip_accommodations`
  ADD CONSTRAINT `bundletrip_accommodations_ibfk_1` FOREIGN KEY (`bundle_id`) REFERENCES `bundletrips` (`bundle_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bundletrip_accommodations_ibfk_2` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodations` (`accommodation_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bundletrip_destinations`
--
ALTER TABLE `bundletrip_destinations`
  ADD CONSTRAINT `bundletrip_destinations_ibfk_1` FOREIGN KEY (`bundle_id`) REFERENCES `bundletrips` (`bundle_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bundletrip_destinations_ibfk_2` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`destination_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bundletrip_discounts`
--
ALTER TABLE `bundletrip_discounts`
  ADD CONSTRAINT `bundletrip_discounts_ibfk_1` FOREIGN KEY (`bundle_id`) REFERENCES `bundletrips` (`bundle_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bundletrip_discounts_ibfk_2` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`discount_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bundletrip_events`
--
ALTER TABLE `bundletrip_events`
  ADD CONSTRAINT `bundletrip_events_ibfk_1` FOREIGN KEY (`bundle_id`) REFERENCES `bundletrips` (`bundle_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bundletrip_events_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bundletrip_flights`
--
ALTER TABLE `bundletrip_flights`
  ADD CONSTRAINT `bundletrip_flights_ibfk_1` FOREIGN KEY (`bundle_id`) REFERENCES `bundletrips` (`bundle_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bundletrip_flights_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`flight_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`trip_id`) REFERENCES `trip` (`trip_id`);

--
-- Constraints for table `trip`
--
ALTER TABLE `trip`
  ADD CONSTRAINT `trip_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `trip_accommodations`
--
ALTER TABLE `trip_accommodations`
  ADD CONSTRAINT `trip_accommodations_ibfk_1` FOREIGN KEY (`trip_id`) REFERENCES `trip` (`trip_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trip_accommodations_ibfk_2` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodations` (`accommodation_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trip_destinations`
--
ALTER TABLE `trip_destinations`
  ADD CONSTRAINT `trip_destinations_ibfk_1` FOREIGN KEY (`trip_id`) REFERENCES `trip` (`trip_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trip_destinations_ibfk_2` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`destination_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trip_events`
--
ALTER TABLE `trip_events`
  ADD CONSTRAINT `trip_events_ibfk_1` FOREIGN KEY (`trip_id`) REFERENCES `trip` (`trip_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trip_events_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trip_flights`
--
ALTER TABLE `trip_flights`
  ADD CONSTRAINT `trip_flights_ibfk_1` FOREIGN KEY (`trip_id`) REFERENCES `trip` (`trip_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trip_flights_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`flight_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_accommodations`
--
ALTER TABLE `user_accommodations`
  ADD CONSTRAINT `user_accommodations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_accommodations_ibfk_2` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodations` (`accommodation_id`);

--
-- Constraints for table `user_destinations`
--
ALTER TABLE `user_destinations`
  ADD CONSTRAINT `user_destinations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_destinations_ibfk_2` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`destination_id`);

--
-- Constraints for table `user_discounts`
--
ALTER TABLE `user_discounts`
  ADD CONSTRAINT `user_discounts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_discounts_ibfk_2` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`discount_id`);

--
-- Constraints for table `user_events`
--
ALTER TABLE `user_events`
  ADD CONSTRAINT `user_events_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_events_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`);

--
-- Constraints for table `user_flights`
--
ALTER TABLE `user_flights`
  ADD CONSTRAINT `user_flights_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_flights_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`flight_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
