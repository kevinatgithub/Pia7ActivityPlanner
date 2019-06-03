-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2019 at 11:58 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kidzania`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `establishment` int(11) NOT NULL,
  `job` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kidzos` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `min_age` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `establishment`, `job`, `role`, `kidzos`, `duration`, `capacity`, `min_age`, `floor`) VALUES
(1, 1, 'Performing: Streetmosphere', 'Street Performer', '+10', '30', 16, '4+', 'Ground'),
(2, 1, 'Performing: Street Parade', 'Parade Performer', '+10', '30', 16, '4+', 'Ground'),
(3, 3, 'Glass and Wall Mural Painting', 'Artist', '+8', '15', 6, '4+', 'Ground'),
(4, 3, 'Making Art', 'Artist', '-15', '15', 6, '4+', 'Ground'),
(5, 2, 'Arts and Crafts Making', 'Craftsman', '-10', '20', 4, '4+', 'Ground'),
(6, 4, 'Cabin Crew Training', 'Cabin Crew Member', '-15', '20', 6, '4+', 'Mezzanine'),
(7, 4, 'Pilot', 'Pilot/ Co-Pilot', '-15', '20', 8, '4+', 'Mezzanine'),
(8, 5, 'Pastry Decorating', 'Pastry Chef', '-15', '30', 8, '4+', 'Mezzanine'),
(9, 6, 'Banking', 'Banker', '+12', '15', 2, '4+', 'Ground'),
(10, 6, 'Encashing Check', 'Client (Bank)', '+50', '5', 5, '4+', 'Ground'),
(11, 6, 'Opening an Account', 'Client (Bank)', '-20', '5', 5, '4+', 'Ground'),
(12, 6, 'Depositing', 'Client (Bank)', 'depends on transaction', '5', 5, '4+', 'Ground'),
(13, 6, 'Withdrawing', 'Client (Bank)', 'depends on transaction', '5', 5, '4+', 'Ground'),
(14, 6, 'Balance Inquiry', 'Client (Bank)', 'FREE', '5', 5, '4+', 'Ground'),
(15, 6, 'ATM', 'Client (Bank)', 'depends on transaction', '3', 4, '4+', 'Ground'),
(16, 7, 'Applying make-up', 'Make-up Artist', '+10', '15', 3, '4+', 'Ground'),
(17, 7, 'Getting a Manicure', 'Manicurist', '+10', '15', 3, '4+', 'Ground'),
(18, 7, 'Hairstyling', 'Hair Stylist', '+10', '15', 3, '4+', 'Ground'),
(19, 7, 'Applying make-up', 'Client (Beuty Salon)', '-10', '15', 3, '4+', 'Ground'),
(20, 7, 'Getting a Manicure', 'Client (Beuty Salon)', '-10', '15', 3, '4+', 'Ground'),
(21, 7, 'Hairstyling', 'Client (Beuty Salon)', '-10', '15', 3, '4+', 'Ground'),
(22, 8, 'Book Display Designing', 'Book Display Designer', '+8', '15', 4, '4+', 'Ground'),
(23, 8, 'Creative Storytelling', 'Creative Sales Agent', '+10', '30', 8, '4+', 'Ground'),
(24, 8, 'Free Reading', 'Customer(Bookstore)', 'FREE', 'FREE', 2, '4+ / 3-', 'Ground'),
(25, 9, 'Bottling', 'Bottling Engineer', '+5', '20', 8, '4+', 'Mezzanine'),
(26, 10, 'Burger making', 'Crew Member', '-15', '20', 12, '4+', 'Ground'),
(27, 11, 'Car Designing', 'Crew Designer', '+10', '15', 4, '4+', 'Ground'),
(28, 11, 'Selling a Car', 'Salesperson', '+8', '15', 2, '4+', 'Ground'),
(29, 12, 'Performing', 'Perfomer (City Clock)', '+6', '15', 6, '4+', 'Ground'),
(30, 13, 'City Sightseeing', 'Tourist', '-1', '15', 4, '7+', 'Ground'),
(31, 13, 'Guiding a Tour', 'Tour Guide', '+10', '20', 2, '7+', 'Ground'),
(32, 13, 'Performing Bus Safety Inspection', 'Safety Inpector', '+10', '25', 1, '7+', 'Ground'),
(33, 14, 'Activating Clean Energy', 'Clean Energy Engineer', '+12', '15', 6, '4+', 'Mezzanine'),
(34, 15, 'Building Climbing', 'Cable Service Intaller', '-15', '15', 4, '7+', 'Ground'),
(35, 16, 'House Building', 'Construction Worker', '+8', '15', 8, '4+', 'Ground'),
(36, 17, 'Cookie Making', 'Coke Engineer', '+5', '20', 10, '4+', 'Mezzanine'),
(37, 18, 'Preparing Meals', 'Cooking Student', '-15', '25', 8, '4+', 'Mezzanine'),
(38, 19, 'Managing and Handling Packages', 'Logistics Officer', '10', '15', 2, '4+', 'Ground'),
(39, 19, 'Picking-up and Delivering Packages', 'Pick-up & Delivery Team Member', '8', '15', 6, '4+', 'Ground'),
(40, 20, 'Participating in Trail', 'Judge', '+10', '30', 1, '6+', 'Ground'),
(41, 20, 'Participating in Trail', 'Complainant', '+10', '30', 1, '6+', 'Ground'),
(42, 20, 'Participating in Trail', 'Defendant', '+10', '30', 1, '6+', 'Ground'),
(43, 20, 'Participating in Trail', 'Defense Lawyer', '+10', '30', 1, '6+', 'Ground'),
(44, 20, 'Participating in Trail', 'Prosecution lawyer', '+10', '30', 1, '6+', 'Ground'),
(45, 21, 'Developing Treats', 'Treats Invetor', '+8', '25', 8, '4+', 'Ground'),
(46, 63, 'Performing a Dental Check-up', 'Dentist', '+10', '20', 4, '4+', 'Ground'),
(47, 22, 'Stocking', 'Stocker (Deparment Store)', '+6', '10', 4, '4+', 'Ground'),
(48, 22, 'Shopping (Department Store)', 'Customer (Department)', 'depends on transaction', '5', 10, '4+', 'Ground'),
(49, 23, 'Earning a License', 'Student Driver', '-15', '20', 5, '6+', 'Ground'),
(50, 64, 'Driving', 'Motorist', '-15', '10', 5, '6+', 'Ground'),
(51, 24, 'Finding a Job', 'Jobseeker', 'FREE', '5', 2, '4+', 'Ground'),
(52, 24, 'Getting Job Recommendations', 'Jobseeker', '-8', '15', 2, '4+', 'Ground'),
(53, 24, 'Printing Business Cards', 'Jobseeker', '-8', '15', 2, '4+', 'Ground'),
(54, 25, 'Sorting, Weighing, and Delivering', 'Green Grocer', '+10', '20', 3, '4+', 'Ground'),
(55, 26, 'Modeling: Fashion Shoot', 'Model', '+8', '30', 6, '4+', 'Ground'),
(56, 26, 'Madeling: Fasion Show', 'Model', '+8', '45', 12, '4+', 'Ground'),
(57, 27, 'Firefigthing', 'Firefighter', '-10', '20', 8, '4+', 'Ground'),
(58, 28, 'Working Out', 'Research Volunter', '+8', '20', 6, '4+', 'Ground'),
(59, 30, 'Changing Oil', 'Mechanic', '+6', '15', 2, '4+', 'Ground'),
(60, 30, 'Gas Dispatching', 'Pit Crew', '+6', '15', 4, '4+', 'Ground'),
(61, 31, 'Electrical Works', 'Electrician', '+8', '15', 4, '4+', 'Ground'),
(62, 31, 'House Painting', 'House Painter', '+8', '15', 4, '4+', 'Ground'),
(63, 32, 'Shooting a Home Shopping TV Program', 'Talent', '+10', '30', 5, '4+', 'Mezzanine'),
(64, 33, 'Baby Care Training Center - Taking Care of Babies', 'Health Worker', '+10', '20', 8, '4+', 'Ground'),
(65, 34, 'ER- Responding to Emergencies', 'Paramedic', '+10', '20', 6, '4+', 'Ground'),
(66, 35, 'OR - Performing Surgery', 'Anesthesiologist', '+12', '20', 1, '4+', 'Ground'),
(67, 35, 'OR - Performing Surgery', 'Instrumentalist/Nurse', '+12', '20', 1, '4+', 'Ground'),
(68, 35, 'OR - Performing Surgery', 'Assisting Surgeon', '+12', '20', 1, '4+', 'Ground'),
(69, 35, 'OR - Performing Surgery', 'Surgeon', '+12', '20', 1, '4+', 'Ground'),
(70, 37, 'Ice Cream Making', 'Ice Cream Production Engineer', '+5', '20', 6, '4+', 'Mezzanine'),
(71, 65, 'Shopping (Joy Basket)', 'Customer (Joy Basket)', 'depends on transaction', '5', 1, '4+', 'Ground'),
(72, 38, 'Learning through Play', 'Student (Kindergarten)', 'FREE', '20', 6, '3-', 'Mezzanine'),
(73, 39, 'Laundry Cleaning', 'Laundry Dispatcher', '-8', '20', 6, '4+', 'Ground'),
(74, 39, 'Laundry Cleaning', 'Laundry Operator', '-8', '20', 6, '4+', 'Ground'),
(75, 40, 'Feature Writing', 'Feature Writer', '+10', '30', 4, '4+', 'Ground'),
(76, 40, 'Making a Comic Strip', 'Comic Artist', '+10', '30', 4, '4+', 'Ground'),
(77, 41, 'Conserving Marine Life', 'Marine Conservationist', '+12', '15', 10, '4+', 'Ground'),
(78, 42, 'Assisting Customers', 'Brand Ambassador', '+12', '20', 2, '4+', 'Ground'),
(79, 42, 'Renting a Mobile Phone', 'Customer (Mobile Shop)', '-10', '120', 30, '4+', 'Ground'),
(80, 43, 'Recording Music', 'Recording Artist', '-15', '25', 4, '4+', 'Ground'),
(81, 44, 'News Writing', 'News Writer', '+10', '30', 6, '4+', 'Ground'),
(82, 45, 'Compounding', 'Phamacist', '+8', '20', 4, '4+', 'Ground'),
(83, 45, 'Managing the Pharmacy', 'Phamacist', '+8', '20', 6, '4+', 'Ground'),
(84, 46, 'Pit Crew Training', 'Pit Crew Team Mamber', '-15', '20', 4, '4+', 'Ground'),
(85, 47, 'Investigating a Case', 'Investigator', '+10', '30', 8, '4+', 'Ground'),
(86, 47, 'Patrolling', 'Police Office', '+10', '20', 8, '4+', 'Ground'),
(87, 48, 'Making Health Supplements and Medicines', 'Pharma Scientist', '+8', '25', 6, '4+', 'Mezzanine'),
(88, 49, 'Processing Food', 'Food Technologist', '+5', '20', 8, '4+', 'Mezzanine'),
(89, 50, 'Broadcasting a Radio Show', 'Radio Host', '+8', '30', 6, '6+', 'Ground'),
(90, 51, 'Playing Inside the House', 'Visitor ( RightZKeepers\' House)', 'FREE', '20', 15, '3-', 'Mezzanine'),
(91, 52, 'Making a Snack', 'Snack Engineer', '+5', '20', 8, '4+', 'Mezzanine'),
(92, 53, 'Performing Sport Moves', 'Perfomer (Stadium)', '+8', '15', 14, '7+', 'Ground'),
(93, 53, 'Cheerleading', 'Cheerleader', '+8', '30', 14, '7+', 'Ground'),
(94, 53, 'Playing Team Sports: Basketball', 'Athlete', '-15', '30', 10, '7+', 'Ground'),
(95, 53, 'Playing Team Sports: Football', 'Athlete', '-15', '30', 14, '7+', 'Ground'),
(96, 53, 'Playing Team Sports:Volleyball', 'Athlete', '-15', '30', 12, '7+', 'Ground'),
(97, 54, 'Grocery Shopping', 'Customer (Supermarket)', 'FREE', '15', 4, '4+', 'Ground'),
(98, 54, 'Managing the Supermarket', 'Bagger', '+8', '15', 4, '6+', 'Ground'),
(99, 54, 'Managing the Supermarket', 'Cashier', '+8', '15', 2, '6+', 'Ground'),
(100, 54, 'Managing the Supermarket', 'Stocker (Supermarket)', '+8', '15', 2, '6+', 'Ground'),
(101, 55, 'Calculating Business Taxes', 'Tax Officer', '+12', '20', 3, '6+', 'Ground'),
(102, 56, 'Watching a Show', 'Audience', 'FREE', '20', 90, '0+', 'Ground'),
(103, 57, 'Accesory making', 'Accessory Maker', '-10', '15', 4, '4+', 'Ground'),
(104, 58, 'Recording a TV Show', 'On-Cam Talents', '+10', '45', 10, '4+', 'Mezzanine'),
(105, 58, 'Recording a TV Show', 'Off-Cam Talents', '+10', '45', 10, '4+', 'Mezzanine'),
(106, 59, 'Getting a Dgree: Bachelor\'s Degree', ' Bachelor\'s Degree Student', '-10', '30', 8, '6+', 'Ground'),
(107, 60, 'Caring for Trees', 'Arborist', '+10', '20', 8, '4+', 'Mezzanine'),
(108, 61, 'Examining a Pet', 'Veterinarian', '+10', '20', 4, '4+', 'Ground'),
(109, 62, 'Washing Windows', 'Window Washer', '+6', '15', 6, '4+', 'Ground');

-- --------------------------------------------------------

--
-- Table structure for table `establishment`
--

CREATE TABLE `establishment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `establishment`
--

INSERT INTO `establishment` (`id`, `name`, `partner`, `img`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Acting Academy', 'Star Magic', 'https://roundupreads.jsc.nasa.gov/images/imagefull-1793.png', NULL, NULL, NULL),
(2, 'Art and Crafts Workshop', NULL, 'https://i2.wp.com/farm1.staticflickr.com/437/19947395429_764b4a6532_b.jpg?resize=1023%2C682&ssl=1', NULL, NULL, NULL),
(3, 'Art and Design Academy', 'National Bookstore', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2eiHkNyl2R8-m9d68Ove-E5w-1BVobdueu0414_zadB9sEm3O', NULL, NULL, NULL),
(4, 'Aviation Academy', 'Cebu Pacific', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/55/larger/Activities-Aviation2.jpeg?1508897053', NULL, NULL, NULL),
(5, 'BakeShop', 'Goldilucks', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/58/larger/Activities-Bakeshop.jpeg?1508898097', NULL, NULL, NULL),
(6, 'Bank', 'Bank of the Philippine Islands', 'https://i1.wp.com/www.traveling-up.com/wp-content/uploads/2015/11/Kidzania-Philippines-BPI-Bank.jpg', NULL, NULL, NULL),
(7, 'Beauty Salon', NULL, 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/371/larger/Activities-BeautySalon.jpeg?1508853969', NULL, NULL, NULL),
(8, 'Bookstore', 'National Bookstore', 'https://i1.wp.com/farm1.staticflickr.com/448/19512824103_d734b42e58_b.jpg?resize=1023%2C682&ssl=1', NULL, NULL, NULL),
(9, 'Bottling Plant', 'Coca Cola', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/361/larger/Activities-Bottling.jpeg?1509067685', 'black', NULL, NULL),
(10, 'Burger Shop', 'Mc Donalds', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/130/larger/Activities-Burger.jpeg?1508900157', 'black', NULL, NULL),
(11, 'Car Design and Dealership', 'Honda', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/63/larger/Activities-CarDesign.jpeg?1508897638', NULL, NULL, NULL),
(12, 'City Clock Tower', NULL, 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/64/larger/Activities-CityClock.jpeg?1508897659', 'black', NULL, NULL),
(13, 'City Tour Bus', NULL, 'https://www.kidzania.jp/tokyo/en/activity/uploads/ctb_04.jpg', NULL, NULL, NULL),
(14, 'Clean Energy Center', 'First Gen', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/671/larger/Activities-CleanEnergy.jpeg?1508900478', NULL, NULL, NULL),
(15, 'Climbing Building', 'Sky', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/66/larger/Activities-Climbing.jpeg?1508898223', NULL, NULL, NULL),
(16, 'Construction Site', NULL, 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/67/larger/Activities-Construction.jpeg?1508898242', NULL, NULL, NULL),
(17, 'Cookie Factory', 'Cream-O', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/68/larger/Activities-Cookie.jpeg?1508898267', 'black', NULL, NULL),
(18, 'Cooking School', 'Ladies Choice', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/360/larger/Activities-Cooking.jpeg?1509067738', 'black', NULL, NULL),
(19, 'Courier Service', 'LBC', 'https://1.bp.blogspot.com/-2cn_PvLUPvI/WvarQD8WuAI/AAAAAAAAA8A/XCnqgGvPRUkynukIHW77q_gVCqrku0gwwCLcBGAs/s1600/IMG_0890.JPG', NULL, NULL, NULL),
(20, 'Courthouse', NULL, 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/70/larger/Activities-Courtroom.jpeg?1508898376', NULL, NULL, NULL),
(21, 'Creative Hub', 'Oishi', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/71/larger/Activities-CreativeHub.jpeg?1508898553', 'black', NULL, NULL),
(22, 'Department Store', NULL, 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/73/larger/Activities-DeptStore.jpeg?1508898730', 'black', NULL, NULL),
(23, 'Driving School', NULL, 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/74/larger/Activities-Driving.jpeg?1508898765', NULL, NULL, NULL),
(24, 'Employment Office', NULL, 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/76/larger/Activities-Employment.jpeg?1508898816', NULL, NULL, NULL),
(25, 'Farm House Store', NULL, 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/78/larger/Activities-FarmHouse.jpeg?1508898897', 'black', NULL, NULL),
(26, 'Fashion Boutique', 'Penshoppe', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/111/larger/Activities-Fashion.jpeg?1508899958', 'black', NULL, NULL),
(27, 'Fire Station', 'PIONEER', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/79/larger/Activities-FireStn.jpeg?1508898929', 'black', NULL, NULL),
(28, 'Fitness Lab', 'POWERADE', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/280/larger/Activities-FitnessLab.jpeg?1509067769', 'black', NULL, NULL),
(29, 'Games Room', NULL, 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/114/larger/Activities-GamesRoom.jpeg?1508900119', 'black', NULL, NULL),
(30, 'Gas Station', 'Shell', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/80/larger/Activities-GasStn.jpeg?1508899035', 'black', NULL, NULL),
(31, 'Home Finishing', 'First Ballour', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/608/larger/Activities-HouseFinishing.jpeg?1508900446', 'black', NULL, NULL),
(32, 'Home Shopping Studio', 'O Shopping', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/601/larger/Activities-HomeShopping.jpeg?1508900387', 'black', NULL, NULL),
(33, 'Hospital: Baby Care Training Center', 'Johnson\'s', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/81/larger/Activities-BabyCare.jpeg?1508899074', NULL, NULL, NULL),
(34, 'Hospital: ER', 'GreenCross', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/82/larger/Activities-ER2.jpeg?1508899105', NULL, NULL, NULL),
(35, 'Hospital: Operating Center', 'St. Luke\'s Hospital', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/83/larger/Activities-OR.jpeg?1508899138', NULL, NULL, NULL),
(36, 'Hotel', NULL, 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/84/larger/Activities-HotelHousekeeping.jpeg?1508899230', NULL, NULL, NULL),
(37, 'Ice Cream Factory', 'Magnolia', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/85/larger/Activities-IceCream.jpeg?1508899288', 'black', NULL, NULL),
(38, 'Kindergarten (Toddler Area)', NULL, 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/98/larger/Activities-Kindergarten.jpeg?1508899691', NULL, NULL, NULL),
(39, 'Laundromat', 'Champion', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/86/larger/Activities-Laundromat.jpeg?1508899324', 'black', NULL, NULL),
(40, 'Magazine Publishing Company', 'MeTro', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/94/larger/Magazine_Publishing.jpeg?1523325985', NULL, NULL, NULL),
(41, 'Marine Research Lab', 'Century Tuna, WWF', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/818/larger/Activities-MRL.jpeg?1508900566', NULL, NULL, NULL),
(42, 'Mobile Phone Shop', NULL, 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/87/larger/Mobile_Phone_Shop.jpeg?1523326016', NULL, NULL, NULL),
(43, 'Music Studio', NULL, 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/88/larger/Activities-Music.jpeg?1508899373', NULL, NULL, NULL),
(44, 'Newspaper', 'Inquirer', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/89/larger/Newspaper.jpeg?1523326060', NULL, NULL, NULL),
(45, 'Pharmacy', 'Mercury Drug', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/90/larger/Activities-Pharmacy.jpeg?1508899447', NULL, NULL, NULL),
(46, 'Pit Crew Training Center', 'Honda', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/275/larger/Activities-PitCrew.jpeg?1508900198', NULL, NULL, NULL),
(47, 'Police Station & CSI', NULL, 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/92/larger/Activities-CSI.jpeg?1508899473', NULL, NULL, NULL),
(48, 'Product Laboratory', 'Pascual', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/93/larger/Activities-ProductLab.jpeg?1508899507', NULL, NULL, NULL),
(49, 'R&D Center ', 'Pure Foods', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/96/larger/Activities-RND.jpeg?1508899570', NULL, NULL, NULL),
(50, 'Radio Staion', NULL, 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/95/larger/Activities-RadioStn.jpeg?1508899538', 'black', NULL, NULL),
(51, 'RightZKeepers\' House', 'Toy Kingdom', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/97/larger/Activities-RKHouse.jpeg?1508899670', NULL, NULL, NULL),
(52, 'Snack Factory', 'Jack n Jill', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/99/larger/Activities-SnackFactory.jpeg?1508899727', NULL, NULL, NULL),
(53, 'Stadium', NULL, 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/277/larger/Activities-Stadium.jpeg?1508900264', NULL, NULL, NULL),
(54, 'Supermarket', 'Healthy Options', 'https://media-cdn.tripadvisor.com/media/photo-s/03/49/c4/03/kidzania.jpg', NULL, NULL, NULL),
(55, 'Tax Office', NULL, 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/103/larger/Activities-Tax.jpeg?1508899783', NULL, NULL, NULL),
(56, 'Theater', NULL, 'https://media-cdn.tripadvisor.com/media/photo-s/04/b3/25/70/theater.jpg', NULL, NULL, NULL),
(57, 'Traditional Jewelry Workshop', NULL, 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/110/larger/Activities-TianggeJewelry.jpeg?1509327213', NULL, NULL, NULL),
(58, 'TV Studio', 'ABS-CBN', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/279/larger/Activities-TVStn.jpeg?1508900358', NULL, NULL, NULL),
(59, 'University', NULL, 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/106/larger/Activities-University.jpeg?1508899857', NULL, NULL, NULL),
(60, 'Urban Garden', NULL, 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/107/larger/Activities-UrbanGarden.jpeg?1508899891', NULL, NULL, NULL),
(61, 'Vet Clinic', 'Pet Express', 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/108/larger/Activities-Vet.jpeg?1508899923', NULL, NULL, NULL),
(62, 'Window Washing ', NULL, 'https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/276/larger/Activities-Window.jpeg?1508900227', NULL, NULL, NULL),
(63, 'Dentist', '', 'https://steemitimages.com/640x0/http://www.kidzania.pt/documents/images/atividades/kidzania_clinicaZdentaria_2_1.jpg', 'black', NULL, NULL),
(64, 'Driving Street', NULL, 'https://in.bmscdn.com/bmsin/special/kidzania/activities/Hyundai-Driving-Street.jpg', NULL, NULL, NULL),
(65, 'Joy Basket', NULL, 'http://www.kidzania.co.kr/portlet-repositories/facility/1364193726279_img1.jpg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_06_03_080219_create_table_establishment', 1),
(5, '2019_06_03_092538_create_activity', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `establishment`
--
ALTER TABLE `establishment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `establishment`
--
ALTER TABLE `establishment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
