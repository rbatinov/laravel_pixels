-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 13, 2023 at 08:09 PM
-- Server version: 8.0.34-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_pixels`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_image_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dsc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_image_id`, `dsc`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '1', 'Molestias corporis ea reiciendis ea. Facere cum distinctio excepturi modi impedit qui. Voluptate aut corporis dolorem vel soluta. Sint hic molestiae et.', 71, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(2, '43', 'Assumenda in qui sunt iste et quia dolorum. Maiores sit quo et harum eius. Consectetur consequatur assumenda sequi non. Officia illum aut consequatur.', 96, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(3, '81', 'Id dolor laudantium itaque aut explicabo blanditiis. Porro enim quo a non quia quas iusto minima. Neque maxime qui et quia et est.', 62, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(4, '94', 'Vitae quis voluptate aut voluptas alias sed molestiae. Eum est nostrum reprehenderit ipsum rerum. Eaque quae magni et. Sunt et modi sed accusantium cumque ut dolores.', 77, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(5, '37', 'Dolore autem hic occaecati porro dolores deleniti. Iusto numquam alias omnis possimus optio repellendus suscipit fugit. Quaerat quo adipisci ratione minus est similique consequuntur.', 58, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(6, '67', 'Quia accusantium expedita deserunt vel. Voluptas sequi distinctio autem enim ut. Et quia iste repellendus voluptates nostrum. Quo possimus necessitatibus voluptatum dolorem.', 59, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(7, '17', 'Dicta molestiae error eos. Veritatis velit nulla qui. Veritatis qui voluptas ut aut veritatis. Labore omnis odit amet quae quis quisquam enim.', 41, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(8, '34', 'Quia quasi ipsum rerum at. Ea illo expedita doloremque laboriosam sequi. Rerum assumenda ad vel. In laudantium et tempore repellendus asperiores.', 24, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(9, '11', 'Eos temporibus architecto architecto. Placeat nemo dignissimos et amet. Quo voluptatibus vel maiores qui inventore ea quia. Consequatur et ut distinctio alias minima.', 44, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(10, '12', 'Eligendi iure sed ea ut ut et explicabo. Neque voluptate deleniti necessitatibus in eum rerum. Eveniet voluptatem optio et cupiditate.', 19, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(11, '4', 'Assumenda sed consequatur iure commodi amet ullam. Quia itaque et voluptas libero ab beatae eveniet modi. Sit nihil rerum consectetur. Ut et aut nisi eius voluptatem.', 103, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(12, '57', 'Et qui blanditiis et fugit hic omnis. Voluptatem in numquam ut iusto optio. At id magni quae rerum. Aut odio deleniti at vel aspernatur.', 98, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(13, '29', 'Ut velit totam fugit impedit in voluptatem atque. Illum illo nesciunt tempore. Quo vel architecto distinctio quisquam. Et minima et dicta magnam molestias error.', 43, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(14, '60', 'Repudiandae fugiat nihil ratione qui omnis voluptatibus. Dolorum consequatur dolores veniam nihil. Aperiam eos dicta placeat illum.', 78, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(15, '33', 'Autem incidunt rerum eaque ea aut consequuntur ut amet. Voluptas commodi necessitatibus consectetur voluptatem unde cupiditate. Dolor sit repudiandae aut.', 36, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(16, '71', 'Et et quo consequatur sed. Provident nemo voluptate consequatur velit nihil.', 3, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(17, '11', 'Deserunt id saepe quis porro maiores dolorem unde. Aliquam ullam ea quis rem. At maiores tenetur ut doloremque totam.', 25, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(18, '97', 'Placeat quisquam libero excepturi totam eius dolor eum. Quos est rerum qui iure incidunt voluptate. Et et natus consequatur quidem omnis nemo.', 60, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(19, '31', 'Fugit nisi molestiae ipsam veritatis. Veritatis accusantium atque fuga quod sit dolorem. Exercitationem quos voluptatem eligendi fugit est provident.', 10, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(20, '76', 'Sint consequatur hic sit est. Labore magni earum doloremque officiis. Repellat ut repellat culpa expedita necessitatibus quidem harum. Rerum qui inventore saepe ea nostrum aspernatur esse.', 61, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(21, '26', 'Accusantium vel aut eum alias. Eum voluptas aut sit libero at ea voluptatem. Veritatis animi dolor inventore quo eos. Qui dignissimos cupiditate necessitatibus et rerum similique.', 70, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(22, '72', 'Sed quibusdam eaque optio sunt quia alias impedit. Quis quo sunt non sunt rerum aut aspernatur dicta.', 1, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(23, '89', 'Qui vel fuga ad quae culpa at ex repellendus. Debitis dolorem rerum et sit et et. Repellat voluptatem sequi quasi qui ad.', 1, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(24, '16', 'Sit sint et id tenetur distinctio consectetur velit quia. Fugit perspiciatis qui incidunt est est. Sed impedit deleniti aut adipisci repellendus. Quisquam et ea ut veritatis.', 67, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(25, '45', 'Est maxime sit ipsam quidem. Quia ipsa ut ea ut distinctio aut. Illo non laboriosam porro at. Enim enim aliquid excepturi et et libero ea. Recusandae animi ut cum non.', 21, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(26, '17', 'Quis similique aspernatur eum quibusdam. Temporibus magni temporibus omnis amet. Molestiae voluptatem doloribus odio.', 73, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(27, '86', 'Impedit qui voluptas minus tenetur ea non. Quia id voluptate nam molestiae sint repudiandae dolore. Eligendi ut sit quasi sapiente.', 96, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(28, '51', 'Qui harum est id dolores sint facilis unde. Doloremque odio recusandae enim consectetur id. Nostrum exercitationem quod quia impedit. Autem illum iusto eaque non est illum.', 99, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(29, '66', 'Molestias nobis porro quos error similique sunt totam. Veniam expedita id aut numquam. Velit error error alias quo commodi quasi ut.', 8, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(30, '88', 'Laborum est repudiandae dicta perspiciatis magni. Illum impedit accusamus in illum officiis porro. Cum tenetur ut neque aliquid blanditiis labore. Est sunt qui consequuntur dolores.', 63, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(31, '76', 'Beatae voluptas totam quasi incidunt. Aliquam quia quia similique non nulla rerum voluptatum. Et nobis facilis doloremque. Dolorem qui qui omnis voluptatibus doloribus.', 93, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(32, '82', 'Exercitationem sint eius beatae. Dignissimos illum itaque magnam accusamus ut. Ut inventore et saepe repellendus.', 87, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(33, '23', 'Enim magni maiores aut quas maiores beatae. Rerum et et officia quia at. Delectus aliquid eveniet dolorum qui.', 46, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(34, '75', 'Ut velit voluptatibus sed praesentium quod sed ullam praesentium. Ab qui sed aliquid est dolor voluptas itaque. Aut debitis pariatur dolore. Sit corporis nihil nulla placeat soluta iste.', 89, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(35, '90', 'Delectus hic ea sed at. Itaque labore in distinctio doloribus voluptatem asperiores veritatis. Assumenda voluptatem quasi dolores et eos.', 6, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(36, '14', 'Exercitationem dignissimos possimus voluptates qui ratione debitis. A aspernatur consequatur delectus ut. Nulla et nam et optio officia consequatur in.', 9, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(37, '97', 'Non et ex porro accusantium numquam. Eius et at rem voluptate accusamus rerum. Aperiam facere minus tenetur facere necessitatibus deserunt. Ut excepturi fugit dolorem ipsam accusamus accusamus.', 53, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(38, '40', 'Repellat cum sequi saepe et qui. Amet at et optio quam. Consequatur rerum velit omnis non quibusdam corrupti.', 38, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(39, '34', 'Cumque neque ut ut vel eligendi qui sequi nihil. Et aut minima rerum magni optio qui ex culpa. Eligendi saepe animi quo corporis animi.', 95, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(40, '92', 'Maxime temporibus repudiandae ut odit ea fuga. Debitis vero vel ratione unde consequatur. Natus iste amet blanditiis et nam. Sunt eius odit quis fuga ducimus.', 76, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(41, '68', 'Placeat sapiente cupiditate quibusdam provident expedita. Illo et repudiandae molestiae aut sapiente et. Saepe ea omnis qui ea. Temporibus eaque quo est accusamus autem consequatur eligendi.', 30, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(42, '46', 'Deserunt ea provident omnis omnis quas pariatur numquam. Sed quia ducimus sint accusantium et. Quo unde quisquam voluptatem iste repellat corrupti ut.', 18, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(43, '53', 'Rerum in voluptatem ullam quia asperiores ipsam. Repellat inventore inventore accusantium reprehenderit quibusdam. In sed ipsa id tempore. Eos ut et delectus dolor.', 12, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(44, '83', 'A nobis adipisci et distinctio. Qui amet animi eum iste explicabo neque dolorem amet. Qui iusto et et perspiciatis. Consequuntur labore qui voluptatibus fugit. Sit ad quidem sequi nobis.', 30, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(45, '43', 'Ratione tempora rerum qui minus aperiam tenetur quia. Est accusantium dignissimos iste vero. Omnis aut quam tenetur ab autem molestias.', 65, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(46, '91', 'Quia rerum sed sed est delectus perspiciatis animi fuga. Delectus dignissimos vel eum ut delectus. Maxime eum mollitia sit quaerat omnis fugit harum harum.', 59, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(47, '101', 'Odit aliquid eaque molestiae tempora. Vitae rerum eum maiores est.', 16, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(48, '58', 'Dignissimos rerum consectetur enim quibusdam vel molestiae. Quae sit et asperiores possimus itaque. Id quis minus dolorem eum velit.', 57, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(49, '23', 'Est impedit dolor non provident cumque aut. Animi dolorem aliquid rerum ut amet temporibus iusto. Aut velit eos repellat magni. Voluptas occaecati magni enim aspernatur atque.', 65, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(50, '43', 'Enim maiores quo ullam qui dolores ex rerum. Recusandae cum earum quasi enim. Necessitatibus ut id dolorem minus. Odit est sed quasi voluptatem.', 37, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(51, '29', 'Neque qui quis et tempore dolorum soluta. Debitis beatae in eos debitis suscipit placeat. Modi quas quam ut aut incidunt voluptatibus. Distinctio et laboriosam et.', 64, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(52, '64', 'Quis incidunt dolores est et aliquam non. Explicabo fugiat explicabo quam quaerat eum pariatur ut. Iusto delectus ratione libero est. Dolorem cupiditate laboriosam ut reprehenderit.', 47, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(53, '3', 'Est animi quaerat alias voluptas voluptatem ut mollitia. Assumenda rerum qui iste. Autem blanditiis blanditiis cupiditate natus eos voluptas. Rem autem ab omnis vitae eius non.', 45, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(54, '50', 'Qui dignissimos sed eligendi ut. Recusandae explicabo dignissimos similique id reiciendis voluptate vitae. Id incidunt minima natus est in voluptatem ab.', 24, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(55, '93', 'Vitae autem qui architecto sed expedita dolore. Dolorum distinctio distinctio dolorum vitae itaque. Qui dolor hic enim distinctio ut. Accusantium omnis qui excepturi sit.', 17, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(56, '35', 'Quibusdam rerum sint alias asperiores accusantium sit. Corrupti ea non veritatis porro. Vel est ut aspernatur et consequatur. Qui esse impedit accusamus libero voluptatem.', 34, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(57, '30', 'Saepe tempora sed temporibus provident facilis alias. Similique aut sunt incidunt repudiandae. Sed magnam quaerat similique est.', 9, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(58, '79', 'Tempore reiciendis consectetur voluptatum porro. Dolores maiores repudiandae id et. Corporis dolorum ullam aut nihil qui aliquam.', 47, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(59, '80', 'Doloremque itaque amet ratione quia cum voluptas autem. Amet qui fuga id velit. Beatae veniam maiores nemo.', 56, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(60, '93', 'Dolor ea sed fuga expedita ipsa ut doloribus error. Quisquam in dolor recusandae quae quia.', 42, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(61, '21', 'Illum aperiam similique amet unde. Rerum odit rem quas doloremque ad vitae sed dolores. Sit rem ut vitae ad tenetur dolor rerum dolorem. Rerum ut voluptate quo quis.', 69, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(62, '63', 'Consequatur architecto rerum soluta qui magnam. Dicta velit adipisci porro rerum veritatis quae. Vero ullam aut explicabo aut. Consequatur tenetur est nobis reiciendis et quasi voluptatem asperiores.', 40, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(63, '45', 'Velit earum natus delectus aut delectus aspernatur eum. Ut accusamus repudiandae fugiat repellendus rerum laborum. Autem est aspernatur aliquid ipsa.', 89, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(64, '65', 'Quod veritatis in aut ex odio atque eum voluptatem. Quod ea aliquid placeat architecto illo. Aliquid vitae architecto qui magni vitae error ipsam.', 27, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(65, '12', 'Ad optio accusantium maxime voluptas quaerat. Aut harum molestias quibusdam eum. Aperiam qui vero eaque sed earum.', 71, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(66, '85', 'Consequatur laboriosam ducimus deserunt aperiam repudiandae aperiam. Debitis quis est dolorum aut fugit. Ullam eligendi temporibus laudantium.', 51, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(67, '83', 'Sit nam ipsum id voluptas cupiditate amet soluta. Itaque eum labore delectus mollitia ut sit error. Eligendi autem sapiente sit repudiandae placeat perferendis fugiat.', 90, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(68, '37', 'Quos sint voluptates magni hic dolor. Repudiandae dolores possimus dolorem blanditiis dolorum id. Facilis voluptatibus exercitationem quia qui placeat minus voluptas voluptates.', 27, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(69, '53', 'Repudiandae et consequatur iure. Consequatur provident ut autem ullam eius voluptas. Ut perspiciatis cum ut quis suscipit enim molestiae. Omnis excepturi rerum numquam deserunt repellat doloribus.', 47, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(70, '57', 'Harum voluptate modi odit occaecati corporis cum in. Facere tenetur a perferendis. Dolores qui omnis ut. Illum consequatur et animi vel harum quos.', 52, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(71, '71', 'Ut qui excepturi quasi et. Officiis omnis ullam laudantium ea fugit consectetur.', 65, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(72, '47', 'Et aut fuga commodi ut ea et. Aliquid consequuntur voluptatem placeat temporibus neque. Qui occaecati asperiores eaque aperiam necessitatibus.', 9, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(73, '74', 'Non amet impedit eveniet perferendis unde. Necessitatibus explicabo et magnam earum eius voluptatem occaecati. Impedit nesciunt voluptatibus rem neque inventore dolores. Nam distinctio optio magnam.', 62, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(74, '83', 'Quo quas nostrum id alias maiores cum. Ea dicta aspernatur omnis voluptas in. Et nihil id voluptatem. Velit enim rerum iste tempora quia minus. Sed voluptas nisi eveniet et atque.', 40, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(75, '60', 'Saepe eligendi vel tenetur. Sunt et ut ex laudantium. Error quos minima mollitia sint consequuntur. Quia sit assumenda sed autem quia et delectus.', 19, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(76, '25', 'Deserunt debitis optio aut fuga. Ea laudantium et molestias omnis molestiae reprehenderit. Velit qui facilis quae nesciunt voluptatem et.', 30, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(77, '21', 'Dolorem iste corrupti fugiat deserunt quis. Nobis quo sed distinctio aut porro corporis. Distinctio saepe et optio aut qui repellendus.', 73, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(78, '93', 'Quas voluptas et nihil ipsa. Animi consequatur autem autem. Fugiat id praesentium earum incidunt et est veniam labore. Voluptatibus voluptatem molestiae debitis.', 41, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(79, '99', 'Facilis sed corporis dolores quia quae ipsa. Qui officia culpa voluptatem reiciendis culpa dolores. Ut unde sit distinctio voluptatum optio.', 27, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(80, '54', 'Aut eligendi facilis consequuntur fugit consectetur officia. Sit quis laboriosam corrupti aut sed tempora. Quia eos ea quis dicta id dolorem et voluptatem.', 38, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(81, '21', 'Fuga ut illo et minima. Voluptatem et voluptatibus quo ut dolorem. Sequi esse sed fugiat natus.', 84, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(82, '85', 'Et quia veniam sint repellendus labore. Hic sint est ipsam. Reiciendis aut voluptates voluptas soluta eum. Nulla in non consequuntur sit.', 17, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(83, '35', 'Accusamus rem consequatur voluptatem eveniet delectus rerum. Pariatur doloremque laudantium explicabo ut provident aut aut voluptates. Sint enim sequi ea. Eius distinctio aut deserunt neque.', 88, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(84, '19', 'Autem explicabo iure eos repudiandae voluptates id voluptate enim. Qui quaerat doloribus molestias ratione dolorum. Accusamus deserunt ut laborum non molestiae.', 16, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(85, '90', 'Sed distinctio aut magnam beatae ut autem aliquam. Deserunt consequatur quae quos vel. Sunt molestiae accusantium nisi fugiat molestiae possimus aut porro. Fuga unde et nihil sint nulla.', 89, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(86, '55', 'Nihil expedita consequuntur qui in. Consequatur aut nemo similique sapiente nesciunt. Deleniti harum pariatur odio iste. Neque asperiores incidunt labore modi possimus dolor.', 19, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(87, '63', 'Est aspernatur omnis aperiam culpa est. Earum blanditiis mollitia ut inventore omnis atque. Aut sunt voluptas et non molestias. Cumque qui possimus error sit nulla laudantium.', 50, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(88, '80', 'Eum aut adipisci autem quis. Tempora tempore dolor eaque pariatur quasi voluptatem laboriosam dicta. Praesentium non non rerum necessitatibus.', 72, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(89, '22', 'Id quo nesciunt omnis deserunt quis harum iste corporis. In saepe a quam modi illum. Sit cum et ipsa quis aut perferendis accusantium.', 27, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(90, '76', 'Quae quo qui soluta beatae quae. Ipsa repellendus velit dolor debitis. Voluptatem deserunt dolores velit officia repellat quam. Fugit est aut praesentium odit eius similique rem.', 68, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(91, '70', 'Consectetur voluptas quo autem commodi eaque. Non voluptatem beatae aut rerum nemo similique sint fugiat. Inventore sit natus exercitationem. Et doloremque dignissimos molestiae et excepturi dolorem.', 30, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(92, '77', 'Illum laudantium sit et iusto. Nihil repudiandae et odit est tempora quidem. Voluptas ea qui vel laboriosam minus. Consequuntur quia consequatur fugiat cum expedita sint aut.', 39, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(93, '83', 'Molestias est cupiditate et vel ut. Est voluptatem laudantium enim hic laudantium saepe iusto. In nemo voluptatem et eos asperiores minus. Dolorum sapiente sed modi.', 76, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(94, '18', 'Atque autem ipsum velit quasi sed illum. Ipsum voluptate aut praesentium similique quod ullam. Qui aut praesentium in quae distinctio.', 89, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(95, '12', 'Corporis error hic non. Voluptate fugit officiis voluptas ipsum qui vel.', 5, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(96, '44', 'Hic in fuga recusandae ratione sed nam dolores. Earum quia non in explicabo ut qui. Impedit autem qui quidem.', 26, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(97, '16', 'Optio earum aut sed nemo deserunt impedit ducimus. Molestias quibusdam quis quas sunt eum beatae dignissimos nemo. Ratione praesentium enim earum vitae sint illo.', 51, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(98, '82', 'Rerum fugit reprehenderit voluptates consequatur ipsum in eos ipsum. Cupiditate vel perspiciatis maiores. Non dolorem non quia et a aut provident consequatur.', 52, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(99, '3', 'Est enim voluptatem qui dolorem. Dicta necessitatibus esse perspiciatis earum. Libero sint commodi quia dolor optio ullam.', 50, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(100, '58', 'Reiciendis ipsa alias et veritatis suscipit et. Voluptas perspiciatis voluptatem assumenda. Quod sapiente corrupti maiores saepe minima. Blanditiis reprehenderit magni dicta.', 35, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(101, '62', 'Voluptatem ea velit quia alias voluptas aut. Qui nostrum reprehenderit illum ut omnis impedit necessitatibus. Voluptates corrupti totam modi reprehenderit doloribus ducimus rem.', 79, '2023-10-12 09:53:49', '2023-10-12 09:53:49'),
(102, '101', 'test', 102, '2023-10-12 12:05:36', '2023-10-12 12:05:36'),
(103, '101', 'New comment', 102, '2023-10-12 12:07:26', '2023-10-12 12:07:26'),
(104, '100', 'Nice picture!', 102, '2023-10-12 12:15:45', '2023-10-12 12:15:45'),
(105, '100', 'Perfect', 102, '2023-10-12 12:16:04', '2023-10-12 12:16:04'),
(106, '56', 'Beautiful green!', 102, '2023-10-12 12:21:34', '2023-10-12 12:21:34'),
(107, '101', 'test', 102, '2023-10-12 13:18:22', '2023-10-12 13:18:22'),
(108, '101', 'Nice picture, congrats!', 102, '2023-10-12 13:18:44', '2023-10-12 13:18:44'),
(109, '101', 'Super picture!', 104, '2023-10-12 13:19:56', '2023-10-12 13:19:56'),
(110, '101', 'Well done!', 102, '2023-10-12 13:20:08', '2023-10-12 13:20:08'),
(111, '101', 'Amazing!', 104, '2023-10-12 13:20:17', '2023-10-12 13:20:17'),
(112, '101', 'Perfect picture!', 102, '2023-10-12 13:20:26', '2023-10-12 13:20:26'),
(113, '101', 'Super picture!', 102, '2023-10-12 13:20:35', '2023-10-12 13:20:35'),
(115, '100', 'Super!', 102, '2023-10-12 14:02:08', '2023-10-12 14:02:08'),
(116, '110', 'The wolf looks great! This AI generates amazing pictures.', 102, '2023-10-13 06:13:53', '2023-10-13 06:13:53'),
(121, '107', 'Pretty', 102, '2023-10-13 11:38:07', '2023-10-13 11:38:07'),
(122, '107', 'Cool', 102, '2023-10-13 11:41:45', '2023-10-13 11:41:45'),
(123, '114', 'Pretty 1', 102, '2023-10-13 11:45:08', '2023-10-13 11:45:08');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT '0',
  `dsc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `user_id`, `dsc`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 0, 'test', 'test', 'test@abv.bg', '2023-10-13 09:31:09', '2023-10-13 09:31:09'),
(2, 0, 'Test message', '', 'ivan.ivanov@abv.bg', '2023-10-13 09:59:30', '2023-10-13 09:59:30'),
(3, 0, 'Hello', '', 'qvor@abv.bg', '2023-10-13 10:01:33', '2023-10-13 10:01:33'),
(4, 102, 'test', 'Rob', 'ivan.ivanov@abv.bg', '2023-10-13 10:03:48', '2023-10-13 10:03:48'),
(5, 0, 'test', 'test', 'qvor@abv.bg', '2023-10-13 10:04:09', '2023-10-13 10:04:09');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(19, '2023_10_12_080141_user_images', 2),
(20, '2023_10_12_121732_comments', 3),
(21, '2023_10_13_120934_contact', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type_id` int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `user_type_id`) VALUES
(1, 'Prof. Buck Nolan', 'lroob@example.net', '$2y$10$G.roWPd8AK9zDwltCr2FL.xb5Dc80olaQL0ljVsrchMmVqgxeqXle', '6ui9rKfRmL', '2023-10-12 05:05:38', '2023-10-12 05:05:38', 1),
(2, 'Miss Angeline Heathcote', 'morton.fadel@example.net', '$2y$10$th7dLPk3kK.8inm0mNeLv.gf.6dRlK8ljYK9CmiM1sElmL47QqFmO', 'c8wERe89sA', '2023-10-12 05:05:38', '2023-10-12 05:05:38', 1),
(3, 'Royce Dickens', 'ccrist@example.com', '$2y$10$IFI6ANa/OV.Ft6ctgz4PEOl2IUO8CZ7vLMrZoU9.ud0IujiBlYKIW', 'RnxU8BG20C', '2023-10-12 05:05:38', '2023-10-12 05:05:38', 1),
(4, 'Van Mayert', 'jblick@example.net', '$2y$10$g97BiiFBUEdNffFL/TMI5.lfK18UqdjF9ErdNN1z1SdP4lZyLPam2', 'B1U9A6itjh', '2023-10-12 05:05:38', '2023-10-12 05:05:38', 1),
(5, 'Madelynn Blick', 'lemke.vita@example.net', '$2y$10$pVyuwRr05zTEvEvVTsd.OuTVSqD/mEwAc2l2Rmz5QQRqYUnoomSx.', '0ij2eamYGY', '2023-10-12 05:05:38', '2023-10-12 05:05:38', 1),
(6, 'Mr. Wilfred Heaney V', 'okeefe.quinn@example.org', '$2y$10$bI.nvI3rZ1EoHWzmZCrEwOR6Kcj43WC/IX2RRyHT1fpggvypa92MO', '0v7nl9N4vv', '2023-10-12 05:05:38', '2023-10-12 05:05:38', 1),
(7, 'Paula Hahn', 'abe.kerluke@example.com', '$2y$10$CZRj7j0SIdp5Tepm5tQ6YOJ0VGWH9.wZKMSV9sH9vTq83c7jPIvLW', 'ea1gVUDBNx', '2023-10-12 05:05:38', '2023-10-12 05:05:38', 1),
(8, 'Alessandro Bins', 'ullrich.jaquan@example.net', '$2y$10$Qp80X4mm6C/5mxNxRT/Ht.LiChyiQfqC4TnEHFtRQnK/ZlqCpdigu', 'HVDUPZXYh7', '2023-10-12 05:05:38', '2023-10-12 05:05:38', 1),
(9, 'Irwin Botsford', 'lavada.leuschke@example.org', '$2y$10$dmbgzXFBOTpuqwDFfkeLfOg8hE.abu/.f01oxDMGoYVHZr73JXh86', 'AhxixoooHf', '2023-10-12 05:05:39', '2023-10-12 05:05:39', 1),
(10, 'Donnie Mann MD', 'leonardo.labadie@example.com', '$2y$10$ziTbclkwgrjJMTz7GET2bugfM1b/sqBxluzTvJbpHUXWLCGUOFUfS', '1Z0GCUwzoW', '2023-10-12 05:05:39', '2023-10-12 05:05:39', 1),
(11, 'Davonte Nitzsche', 'ikassulke@example.com', '$2y$10$qEUnceQhemJ8QxOfxNzSx.DywuZm/W0OjvTFjwgVOnFTFRFjC7zqy', 'kc4iQQlaWx', '2023-10-12 05:05:39', '2023-10-12 05:05:39', 1),
(12, 'Raegan Homenick', 'elinor16@example.org', '$2y$10$YA8KlLbleUuNLDrLfUMQYuSfp6VD0SqRnUqa5mtP/qi3TysB.BxR6', 't6sAs5pdXV', '2023-10-12 05:05:39', '2023-10-12 05:05:39', 1),
(13, 'Mr. Ethel Gislason', 'coleman.pacocha@example.org', '$2y$10$maGiQIfsvCgktBB/0jCmBuTekj6yWPN708z/b25iWGCo6bJJm8hMC', 'sK1OGUdEk0', '2023-10-12 05:05:39', '2023-10-12 05:05:39', 1),
(14, 'Mrs. Delphia Dibbert', 'johnson.nolan@example.org', '$2y$10$vkgtO9zfT4yQ9pLn.RAEUuPiWarXurG6JZDauVAORZZYKyhCDydOS', 'OrIAvXkTJP', '2023-10-12 05:05:39', '2023-10-12 05:05:39', 1),
(15, 'Jarrett Jacobi', 'heller.ted@example.com', '$2y$10$Dqt6y2.c4yCHOe8vSuruLe2NRnMvpoOxunO.Ua/kJr8qJu5odrDmS', 'eo0ABmqBvJ', '2023-10-12 05:05:39', '2023-10-12 05:05:39', 1),
(16, 'Mr. Sean Kohler', 'gabriel.heidenreich@example.net', '$2y$10$WBbkZVJJyRhY.KXbgL2siuCo1OgJWhLOe0W6U7eKAqrSM8jh7A3fK', '4XExoCDC22', '2023-10-12 05:05:39', '2023-10-12 05:05:39', 1),
(17, 'Ms. Noelia Jacobs Sr.', 'xtromp@example.net', '$2y$10$ABpAtZB1R62GLDiCGtQpTeoFwoQOzRLw9lbBglSwfrmddBYAsXyoa', 'OJzdRWAw00', '2023-10-12 05:05:39', '2023-10-12 05:05:39', 1),
(18, 'Mr. Howard Skiles DDS', 'emard.corene@example.com', '$2y$10$Wq3bBh8MXJy2Kl.Yaw4preLy8DFoCLu26CGXj.AJlE2nJMQ.MtTVS', 'pBlShcmlxH', '2023-10-12 05:05:39', '2023-10-12 05:05:39', 1),
(19, 'Jensen Ratke', 'zoey10@example.com', '$2y$10$.Vk4zIQo/s0qB5jE1jC0UOqV88ivTPEQv1BInYEPAal0cjFx3Euh.', 'LMUjaiXiSc', '2023-10-12 05:05:39', '2023-10-12 05:05:39', 1),
(20, 'Ms. Miracle Moen', 'vpadberg@example.org', '$2y$10$2ngGqkhDWamhdMi9kQhLXe9GQfpcY5uEiTzaXcgJG.V2xeseGpnYq', 'SaRNaceozP', '2023-10-12 05:05:39', '2023-10-12 05:05:39', 1),
(21, 'Mr. Alford Flatley', 'dortha00@example.com', '$2y$10$C/7GY8te1ogMIt8TA7iQauSnd0BOYoqXHbXnhE0jxJM4sbFlzn4M6', 'WlVv8w7VJ3', '2023-10-12 05:05:39', '2023-10-12 05:05:39', 1),
(22, 'Brycen Mraz', 'sheldon34@example.net', '$2y$10$zpkj3izr97NH787iWuR7su2I/3V205n4HKngYcj6z1YSfDWO7R4F2', 'VbZ8nXjRlA', '2023-10-12 05:05:39', '2023-10-12 05:05:39', 1),
(23, 'Chelsey Schaefer', 'mertz.maria@example.com', '$2y$10$HcqiDDNkLdZHaueOLnSC4ugw2ksFywX2M/RTskhCZZ0hblFYHvbFK', 'nbl8xaglFb', '2023-10-12 05:05:39', '2023-10-12 05:05:39', 1),
(24, 'Dr. Jaron Terry', 'ljacobson@example.org', '$2y$10$P0Chw6DgbgYUnJvvs3D7yeLH.dVDcGOHq3mXRPkCPidqZ8VP4.DSK', 'fRt0DFfjbP', '2023-10-12 05:05:39', '2023-10-12 05:05:39', 1),
(25, 'Derick Lebsack DVM', 'mclaughlin.maryjane@example.com', '$2y$10$AKNdF7HRmpeekNIV.8s32.3mMaugGKTfB1AYYB2Yg4jSTiZ7iY.Da', 'iBsCUFH1xJ', '2023-10-12 05:05:39', '2023-10-12 05:05:39', 1),
(26, 'Aric Batz', 'ellen71@example.net', '$2y$10$0wu.tMJQOAIpz.vGgsHpe.UkWN9cD7Th5wIhVCfpWKPw0isXuw6OC', '4gQGlMVIl8', '2023-10-12 05:05:40', '2023-10-12 05:05:40', 1),
(27, 'Karine Satterfield IV', 'adonis.graham@example.com', '$2y$10$/DpUcTKKspKvNIlWa1.tgONBDbWu0ofpuGqmK09doJFEwZcAHR3uu', 'LCe910aTrY', '2023-10-12 05:05:40', '2023-10-12 05:05:40', 1),
(28, 'Elliot Sipes PhD', 'hoeger.verdie@example.com', '$2y$10$y4KbGGfIaGrhBkuyGsTOZuJ6nNMqDcgqxDuQdsDaw3yT/r5mZbz.2', 'VkCdRDiWhj', '2023-10-12 05:05:40', '2023-10-12 05:05:40', 1),
(29, 'Taryn Hyatt IV', 'dillon.fay@example.net', '$2y$10$hYofvwDKtgalFxK78u4uGOvXqvz6ssgw7gMhqE/RV7irZ1s3oR8ce', 'pj0JfPCzgr', '2023-10-12 05:05:40', '2023-10-12 05:05:40', 1),
(30, 'Carolyne Gleason', 'vkreiger@example.com', '$2y$10$W90dFBVK2o7vw37jatJSSOsjNGsoNQXcdomgB/I81TONtH8202oaa', 'gDVjlXvn0U', '2023-10-12 05:05:40', '2023-10-12 05:05:40', 1),
(31, 'Adrianna Schuster', 'rogahn.hulda@example.com', '$2y$10$meWJjb9kwf0KmNLpT6ged.eKYcNggdUuDdcuDTFCeT7HydE9gYewe', 'HxJYSbEttF', '2023-10-12 05:05:40', '2023-10-12 05:05:40', 1),
(32, 'Axel Kohler', 'leonel.blanda@example.org', '$2y$10$.biHBwcICLt5v6XZNgNPauZEpXlsj9y.U6jdXDBPDNS0ShU1a26c2', 'yF22INxBk8', '2023-10-12 05:05:40', '2023-10-12 05:05:40', 1),
(33, 'Ms. Luna Schaefer', 'bernadette.parisian@example.com', '$2y$10$pyjZID/XORcSoMvBIHMKTu59u3AFBOgPIZksFrhF9wsBqyJQdeYKe', 'Lm3iE9Eci0', '2023-10-12 05:05:40', '2023-10-12 05:05:40', 1),
(34, 'Carissa Homenick', 'kallie26@example.org', '$2y$10$Z2cY4ZGMFqF57rKtus34V.DEgwHDXf8Fg0QxItOsjsX8//X/YLlji', 'TXuv2Wx174', '2023-10-12 05:05:40', '2023-10-12 05:05:40', 1),
(35, 'Margarett Wiegand', 'kwehner@example.org', '$2y$10$zkTeJQRJe9jUD0yzS/qqeuTorK0pV5Sg4uhKrnY4ktxwusluZev4a', 'KlyUo4PrDC', '2023-10-12 05:05:40', '2023-10-12 05:05:40', 1),
(36, 'Ignatius Rutherford II', 'lzieme@example.org', '$2y$10$C8VOqTA9V..O.bA6SY.MOOO46qiKb/0QTYAW8FVcCrIRF.XyOZmu.', 'Rc3MFw5uQO', '2023-10-12 05:05:40', '2023-10-12 05:05:40', 1),
(37, 'Bertram Marvin', 'kyleigh43@example.com', '$2y$10$HhDjYY5VMOJH9F6dNBZjFubFJhA6Q0uZBJUPfQw3EjbWud5LoPPKS', '4YEyhFdPcx', '2023-10-12 05:05:40', '2023-10-12 05:05:40', 1),
(38, 'Mrs. Maeve McLaughlin', 'zdoyle@example.com', '$2y$10$tlG2pCeCTFt1OYAW0HVV/eRtE7o5naxAn7YPaLkkDOUNmebtc3Xye', 'vKgwqhrYas', '2023-10-12 05:05:40', '2023-10-12 05:05:40', 1),
(39, 'Janie Olson', 'jana.robel@example.com', '$2y$10$4K2RBg0gdsKtZZxcDYc4aOzyoxYn7MmFNaVF4Rp/dUe2Kzm4gcZn.', '4UQuPYvXme', '2023-10-12 05:05:40', '2023-10-12 05:05:40', 1),
(40, 'Dr. Jeromy Luettgen Sr.', 'mcclure.lionel@example.org', '$2y$10$bL7Rpt/ySiMhw0X1K0O8Wu74bRwzY0kbXDxXpe.fA4pPkGF07dOGW', 'xyZRzLg9oB', '2023-10-12 05:05:40', '2023-10-12 05:05:40', 1),
(41, 'Eldon Wiza', 'aliya94@example.net', '$2y$10$jsRBMXX2/f.v9jh9GdStMuk3hkuF3D2rhaVoLBL78tFjel/jslSeS', 'yyTxkFAU1X', '2023-10-12 05:05:40', '2023-10-12 05:05:40', 1),
(42, 'Braxton Towne II', 'oblock@example.com', '$2y$10$uVsZ0xdoWUX3ODbzVFM1ReAwxF/ga8ASWKQ0yyjTXMFH1PN2C9qTK', '5WArsSJ0Kb', '2023-10-12 05:05:40', '2023-10-12 05:05:40', 1),
(43, 'Ari Funk V', 'fbarrows@example.org', '$2y$10$GT.3Jzwo2cp07yXmX3Ph7.F3y2BzltxoC5V39Aska5UiC6/dZSTgG', 'ZHn5MVXD3L', '2023-10-12 05:05:41', '2023-10-12 05:05:41', 1),
(44, 'Osvaldo West V', 'julian50@example.com', '$2y$10$CIK6rMaKPRBHzJNJB7ZPVuDpbTPustSLhSHje2e1qRgwmQorYXSnq', 'eLBye9ro68', '2023-10-12 05:05:41', '2023-10-12 05:05:41', 1),
(45, 'Orpha Rath', 'rath.alexa@example.org', '$2y$10$fzX0JjBNRLqH0k90ZK9NvO/lKxNbWBDJG6afA0QPYkq3BWZeQVSzW', 'OLCE9o9n8R', '2023-10-12 05:05:41', '2023-10-12 05:05:41', 1),
(46, 'Carmine Rogahn Jr.', 'walter.augustus@example.org', '$2y$10$8NXHU7JoccxTRILjdg6uIO.9jDT9XepB/sxnQaHt5LFDJACinT1nS', 'TrAKxPiBKN', '2023-10-12 05:05:41', '2023-10-12 05:05:41', 1),
(47, 'Berenice Stanton', 'aliya00@example.org', '$2y$10$fD3ZPl1D2z1a2CaAHgg29OXMltLpnF2hJ9gBOnONcIVYCqtorj7X2', '60pSbpir0w', '2023-10-12 05:05:41', '2023-10-12 05:05:41', 1),
(48, 'Prof. Cleve McClure', 'ulises.boehm@example.com', '$2y$10$p8Glcci77ZxbJksQHgz/z.4OKZ3BpEF/U4He2nH.zS.pwWzvt/M2C', 'mQyMShLPSf', '2023-10-12 05:05:41', '2023-10-12 05:05:41', 1),
(49, 'Maynard Hoeger', 'reinger.bryon@example.net', '$2y$10$IRTK9zlCXvnS5YLsrmm03.N8S/8S/ASOO1IE2Y9Unw9b3fVJtfPZ.', 'O5iYyMXfzh', '2023-10-12 05:05:41', '2023-10-12 05:05:41', 1),
(50, 'Alva Raynor', 'samantha.lemke@example.net', '$2y$10$hz.K29QZ5omE2D8JlqUQv.GMFegNUtyJFCmHCPss0V.gbe.qOnRYe', 'QEpq03oguR', '2023-10-12 05:05:41', '2023-10-12 05:05:41', 1),
(51, 'Ms. Eloisa Kunze Jr.', 'rhamill@example.net', '$2y$10$WYaFCOCua5QOBRliLSpdr.AYU9liyQonau2XCIddnh.j5E8Yn5u5G', 'm1AjqB9lre', '2023-10-12 05:05:41', '2023-10-12 05:05:41', 1),
(52, 'Dr. Terrell Lemke DDS', 'vkoss@example.com', '$2y$10$rA16yVQKAMW20r/fn4dgGu1O.JdnApOBOit0yc.gbF/x6plHaIPFK', 'MaLYhujbn3', '2023-10-12 05:05:41', '2023-10-12 05:05:41', 1),
(53, 'Chad Wintheiser', 'crooks.kailyn@example.com', '$2y$10$miJNlU2N/iDfRICGz3yHleBGlTpYaBsu5JIGSY2McpudEDEEZzeaC', 'rVp1T532JG', '2023-10-12 05:05:41', '2023-10-12 05:05:41', 1),
(54, 'Christ Herman', 'bins.breana@example.net', '$2y$10$1AIY95VcTIBMYNly6U4G1e1vxPgRLfHE.7hHENDV3BKJb0xvJDQaO', 'SXGoEh5d6r', '2023-10-12 05:05:41', '2023-10-12 05:05:41', 1),
(55, 'Khalid Leuschke', 'rowland.rice@example.net', '$2y$10$pRI9vBXs3y76MTpukgQFUu83nFVg98xBl983kNWIGq6PTw7c9/466', 'qFAszz0sD0', '2023-10-12 05:05:41', '2023-10-12 05:05:41', 1),
(56, 'Angelita Lind', 'donna18@example.net', '$2y$10$rlmNHek6.gC5XBMbbF2DpOz2vijaLhvQLiOe0YEvFlXtRP.9c9hi6', 'j0AAXbGT9u', '2023-10-12 05:05:41', '2023-10-12 05:05:41', 1),
(57, 'Melvin Schuster', 'afadel@example.com', '$2y$10$MswWqQ89ykqpM4m704vOKO4QD9KeRMmFRYIX8jhIeln/8i4.LiJUa', 'hdSm9umPE2', '2023-10-12 05:05:41', '2023-10-12 05:05:41', 1),
(58, 'Josiane Stamm', 'vallie.dooley@example.net', '$2y$10$f3FTz44WdV01I/sgYlAar.CRpsXVCNHehTYzKpupq53ZD7aeCO4ba', 'S1b4xHGaoL', '2023-10-12 05:05:41', '2023-10-12 05:05:41', 1),
(59, 'Jade Brekke', 'cortez04@example.net', '$2y$10$vfPvgfYzh2l9dHC6VnPakeESGC0TmqCqEUbWC62IiwOPho7m32iEG', 'iQPD8hwvqK', '2023-10-12 05:05:41', '2023-10-12 05:05:41', 1),
(60, 'Ms. Lucy Veum', 'rosenbaum.mariano@example.net', '$2y$10$zlS4B7HtnG2EWVWZY7kdTOE3WV1uD8BUj6eo9Q.kjH13Jf1hrckPC', '0WgHg7iFR5', '2023-10-12 05:05:42', '2023-10-12 05:05:42', 1),
(61, 'Annabelle Heaney IV', 'columbus95@example.net', '$2y$10$9JuytomGkKSHnHFXiZEsKOSUNgadBKe6tOeCQJrCx7.DIEG4UBNgy', 'djzvyqoBpT', '2023-10-12 05:05:42', '2023-10-12 05:05:42', 1),
(62, 'Unique Deckow', 'neoma64@example.net', '$2y$10$kYYKW7GnzRsoDY/MIg38ku5B0f1JS0suY80sXayYCMWmBvAqZrqle', 'CuqhSE9r0t', '2023-10-12 05:05:42', '2023-10-12 05:05:42', 1),
(63, 'Prof. Yvette Lubowitz DDS', 'ookon@example.net', '$2y$10$o5Xb4TSgGB.u2Zzl8u0iCeIfdTcit/In30o/Lmp9utwvR3bps871i', 'lwMPAbgIU0', '2023-10-12 05:05:42', '2023-10-12 05:05:42', 1),
(64, 'Vivian Barrows', 'lubowitz.domenic@example.org', '$2y$10$IA3BgZ2CvGTEUVOsBsR0q.WrrtFxz2wHYZ8oOfnfb688NMAJnXdGm', 'CKJRqpJPPo', '2023-10-12 05:05:42', '2023-10-12 05:05:42', 1),
(65, 'Grayce Ferry', 'bernier.ara@example.net', '$2y$10$6Cn8Waz03XATqTu5H3I/deX.YgmrUqIfJDYF0c/aZgkX3MUeHeT4u', 'SnsZrAHO9I', '2023-10-12 05:05:42', '2023-10-12 05:05:42', 1),
(66, 'Travon Kling', 'gene.casper@example.org', '$2y$10$eu52wX9QMx/esZ4Svn22Ue2VZk6zNFbklwBAuFUXYP.k0PePfXrZ2', 'UPhJkCbmO8', '2023-10-12 05:05:42', '2023-10-12 05:05:42', 1),
(67, 'Summer Bahringer I', 'rosie.dach@example.org', '$2y$10$TS7deSRK.Zc61dSeXzbMSOobmY0afWiEMgVHwFDrEbdb7y0x1F4b6', 'shsuln4AZh', '2023-10-12 05:05:42', '2023-10-12 05:05:42', 1),
(68, 'Raheem Bartell', 'considine.trey@example.net', '$2y$10$R7CUtO3DBsTErl8gf8WXv.ImRILGf95jPbojF/.V4qtJ5LgkHaCyq', 'bTONMaX9cb', '2023-10-12 05:05:42', '2023-10-12 05:05:42', 1),
(69, 'Sienna Zemlak PhD', 'micah32@example.com', '$2y$10$4J0IZbX5DVnUrcDGhhvOEenEAZK189tm4AZhzxculHDsKsIkMAUQy', 'BhVqTWy6UZ', '2023-10-12 05:05:42', '2023-10-12 05:05:42', 1),
(70, 'Verdie Prohaska', 'wrutherford@example.org', '$2y$10$Xy.KuOi4dzt8zGCLJJ8pEeZ8ffNBEADLPg5Zsl8hvQXQF/zk2EkFa', 'SId55hduOj', '2023-10-12 05:05:42', '2023-10-12 05:05:42', 1),
(71, 'Norris O\'Hara', 'hartmann.mitchel@example.net', '$2y$10$Lx9pcpXRymDve90pF6Zqt.0Ujj6dKHfE66v1Q6anwJvbRPA8axvEu', 'Wbs9hPugQV', '2023-10-12 05:05:42', '2023-10-12 05:05:42', 1),
(72, 'Mr. Amari Lesch', 'bauch.cordell@example.org', '$2y$10$Bc11f4ldSvRO8UIhhYDi4uVn8KHWoWpu1lUIiLktBwDCCOhT6zTRO', 'w7KTnPyNcP', '2023-10-12 05:05:42', '2023-10-12 05:05:42', 1),
(73, 'Liam Terry', 'esther76@example.net', '$2y$10$K6MqUd0nwOLCuAdZDNsIFunsEnt53PXA7uGMBI0amC7s3vmm3RCGG', 'wEbn8Cft2P', '2023-10-12 05:05:42', '2023-10-12 05:05:42', 1),
(74, 'Julie Stark', 'angus83@example.net', '$2y$10$ZiE7gWDpAv2VJZ0KLuY0aOCw2vrnpAw8Z5NQLKfoiXngIzC.Ygq9e', 'Kb5ySbMiMV', '2023-10-12 05:05:42', '2023-10-12 05:05:42', 1),
(75, 'Mr. Ken Dach', 'tmiller@example.org', '$2y$10$jbGl64Sgbi/yHHCZf9.Xq.c4R6oTIM4rR0syOeb8d3NPRhZDNtPEG', 'zXX4qjJjry', '2023-10-12 05:05:42', '2023-10-12 05:05:42', 1),
(76, 'Madisyn Gutkowski', 'skyla45@example.com', '$2y$10$6tmzVQLTE19bmzx//JuSv.kAKA1pq9ynf/6X9uVXNEgI2TkuCjOO2', 'hKzSc8xMb8', '2023-10-12 05:05:42', '2023-10-12 05:05:42', 1),
(77, 'Prof. Eduardo Wisoky', 'maximus67@example.org', '$2y$10$RSvWcnbhHZalQLxCNkWFJODi2RzMXxkoi8m4bC0EPvQFSuZueCBEu', 'w28omS8fUb', '2023-10-12 05:05:43', '2023-10-12 05:05:43', 1),
(78, 'Juliet Grimes', 'lula64@example.org', '$2y$10$bWiYCImXK1bVlMnw3DWQwO78QHSf1kY4mR6p39BfOD3b69Um0Un2O', 'M29uCxj1lY', '2023-10-12 05:05:43', '2023-10-12 05:05:43', 1),
(79, 'America Kris', 'caden.wolff@example.org', '$2y$10$/9EMUW0UXX3lM7zOmFkcte/ZC4eyNrLRihE1K4jbAjRC2JxvSDwda', '6VtEMo0X5a', '2023-10-12 05:05:43', '2023-10-12 05:05:43', 1),
(80, 'Ari O\'Hara', 'kbalistreri@example.net', '$2y$10$Mk9Hbi0sSSt/7QQgV26tjOOZv4HN0vJHi0ObJwkRuFE631l1FcoQO', 'h4gDNy6V9K', '2023-10-12 05:05:43', '2023-10-12 05:05:43', 1),
(81, 'Prof. Neal Quigley DVM', 'edibbert@example.org', '$2y$10$KSxGxt.MiM8VKzYJHo9CE.XB9eoECg/3gqG78npjWfUnOax9Wjj5i', 'HgjzaQPuCy', '2023-10-12 05:05:43', '2023-10-12 05:05:43', 1),
(82, 'Bailey VonRueden Sr.', 'candice.tremblay@example.net', '$2y$10$LgnCnQMDum2CO7Awgfx0GezwvSEd8mgyC686TwudkZV0AHWNoiasm', 'aaXcqXn8nM', '2023-10-12 05:05:43', '2023-10-12 05:05:43', 1),
(83, 'Tiara Goyette', 'frankie.crooks@example.org', '$2y$10$trAdIhswL/O7Kho9IpufxuOzpi6F9OCJYtLBdPq/5.ZsaP6ExelsK', '1Li8JfF6OS', '2023-10-12 05:05:43', '2023-10-12 05:05:43', 1),
(84, 'Hermann Wintheiser', 'mosciski.melba@example.org', '$2y$10$bvhh0/6wH.ubr2Q4.RhIJurG.dY8gJdBoVBk80sWAOB0NAPbePm1W', 'qL6iAQvDuG', '2023-10-12 05:05:43', '2023-10-12 05:05:43', 1),
(85, 'Dorris Glover', 'brian47@example.com', '$2y$10$v83on8fjF.GaR3AxZjeKdOO6d2Q8kCH99cWiEjdNrrL5TMB6RHeFq', 'yZr0ZBfZJG', '2023-10-12 05:05:43', '2023-10-12 05:05:43', 1),
(86, 'Wilson Hintz', 'magdalen.kuphal@example.com', '$2y$10$3Mt23XAPbZauKcTFWxRt5u73p24IOLUWO4ELLZsYeistX.hnAFNoK', 'bqQ1b0URm4', '2023-10-12 05:05:43', '2023-10-12 05:05:43', 1),
(87, 'Sebastian Hessel', 'ziemann.adelia@example.net', '$2y$10$.7WGE4LfEZDyiNUz4mlfNO6gDnzPwSCZ1yEolYoN6lb8UEmvczKsq', 'NooC6mhIU2', '2023-10-12 05:05:43', '2023-10-12 05:05:43', 1),
(88, 'Filomena Bayer', 'gleason.ellie@example.net', '$2y$10$rLGwXJS7.7ObfcQwJBqyq.AkqL1WjyTRI5XVySHsWtR54DnDuIeU6', '7VX9JjQ4h2', '2023-10-12 05:05:43', '2023-10-12 05:05:43', 1),
(89, 'Rosemarie Mills', 'hwaelchi@example.com', '$2y$10$f2svpu.Dk.oLwt./KPizCe2C1WUyhpTaGbchiwsP763Jdxd0U629S', 'Nk3MZnbU2y', '2023-10-12 05:05:43', '2023-10-12 05:05:43', 1),
(90, 'Prof. Adonis Jast', 'wiley.bogisich@example.org', '$2y$10$qhAojzZa3H.ZC0lXYdH.VuDBQWyAEFAbH5qloDBThLnbWrshPPGDS', 'PU5hKXD0ij', '2023-10-12 05:05:43', '2023-10-12 05:05:43', 1),
(91, 'Carissa Cartwright', 'grodriguez@example.net', '$2y$10$wWBuV5vb5SORZjoUx8AkTerZWkxxW3pIFooxxqvkO37JuEyKocIAe', '0j3upOrtTj', '2023-10-12 05:05:43', '2023-10-12 05:05:43', 1),
(92, 'Claudine Abbott', 'april.mohr@example.net', '$2y$10$nkL0AfWb2Ajxro5F2RBtYO8cAgPb.nnoN8rJSTC.z0od1/x7DZCNS', '9wMJrZIvAH', '2023-10-12 05:05:43', '2023-10-12 05:05:43', 1),
(93, 'Dr. Abigail Herman', 'abernathy.claire@example.org', '$2y$10$6rXOMEJgrPA9FPSBq1MzDuZBGQbRF0oX6Jw23LieH5iHWpcdEK8Nm', '4inbtxjyJa', '2023-10-12 05:05:43', '2023-10-12 05:05:43', 1),
(94, 'Prof. Clementine Wyman', 'hannah.sanford@example.org', '$2y$10$5RwPjUNRCNBP8wGtUx.rUOuHgjSi74bHWbxZVBNjjukO1WkpbdwYy', 'nDsDOrnfSU', '2023-10-12 05:05:44', '2023-10-12 05:05:44', 1),
(95, 'Monserrate Schaefer', 'camylle13@example.org', '$2y$10$F9vNvW7dUghSkQZRkNoEDuwEUiLb4kHlqo0vd8.l9eZKPrYrvnCEe', 'hTdR2wpX7q', '2023-10-12 05:05:44', '2023-10-12 05:05:44', 1),
(96, 'Prof. Bo Hauck I', 'brendan78@example.com', '$2y$10$J8n0Qnu77be.BEZ0M1qZ9efx/LiPLkMqK62nhQReZnEPkHpazs9Mm', 'YDLRrrxvio', '2023-10-12 05:05:44', '2023-10-12 05:05:44', 1),
(97, 'Pansy Maggio', 'madelynn.zboncak@example.org', '$2y$10$QKQ7K8HMIkK439Rj6Tb0z.IR1VscmIx47TQKeynAq0HHIUCllVRrW', 'rxSlWZA5TA', '2023-10-12 05:05:44', '2023-10-12 05:05:44', 1),
(98, 'Dr. Bartholome Corkery', 'zrohan@example.net', '$2y$10$vNNEH2uMhf7vzSMyxYXHIOAfm60/dLfA3W16wm/3Bin6ZLMVifJci', 'VTgDnHn4bY', '2023-10-12 05:05:44', '2023-10-12 05:05:44', 1),
(99, 'Aimee Davis', 'hwiza@example.com', '$2y$10$wJre/Cp1.cbeFDwgmG38nefTmei96r3FigDDuj5guRUCGVY5V4mZu', '8C0z4NzXXV', '2023-10-12 05:05:44', '2023-10-12 05:05:44', 1),
(100, 'Gabriel Von', 'bergnaum.darron@example.org', '$2y$10$kXlGD8103OaE.y3HWRQMheXvTPis3pDkz/doFTmmt5hlzYlkZMjIq', 'a1B8D26e3v', '2023-10-12 05:05:44', '2023-10-12 05:05:44', 1),
(101, 'Halie Mayer', 'gdurgan@example.com', '$2y$10$VXQoonNVnSIHExdqyysdLu0nnlv2ijxlLdQ8hsG5g5.0iH2VDkFbS', 'PPmdjWs0cJ', '2023-10-12 05:05:44', '2023-10-12 05:05:44', 1),
(102, 'Rob', 'rb@abv.bg', '$2y$10$cG62yW1BAlU/59hXVXd9VuOEoaoz/JhFui9ZuleSHUA6cLl7yEqp6', NULL, '2023-10-13 07:49:47', '2023-10-13 07:49:47', -1),
(103, 'rbatinov', 'rob@abv.bg', '$2y$10$cRWOYUaEpxt8AB6cYByPkOie4N6DvmKLROVRYrI/J2JfG1p.bBJ6m', NULL, '2023-10-12 07:53:07', '2023-10-12 07:53:07', 1),
(104, 'Krum', 'k@abv.bg', '$2y$10$fi3D9pz0OP6VbLdf9JodA.4pExrOVUl4Q9GAKKMOrB18acpdcbW2y', NULL, '2023-10-12 13:19:44', '2023-10-12 13:19:44', 1),
(105, 'new user', 'n@abv.bg', '$2y$10$4/Th2z.VXHA89jli8bB3AOh8nBpsrXuoqxTkxP3gOfsg0Da6MoyUS', NULL, '2023-10-13 07:13:33', '2023-10-13 07:17:19', 1),
(106, 'new user 2', 'nn@abv.bg', '$2y$10$2SmWvHJBFwgR1zBqRik8G.XnEvp6hUzZU.ORH9AL3fRy7ASIwLswu', NULL, '2023-10-13 07:18:36', '2023-10-13 07:48:24', 1),
(107, 'Rob', 'rb.old@abv.bg', '$2y$10$fi3D9pz0OP6VbLdf9JodA.4pExrOVUl4Q9GAKKMOrB18acpdcbW2y', NULL, '2023-10-12 07:32:24', '2023-10-13 07:09:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_images`
--

CREATE TABLE `user_images` (
  `id` bigint UNSIGNED NOT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Picture created by a user',
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_images`
--

INSERT INTO `user_images` (`id`, `img_url`, `alt`, `user_id`, `created_at`, `updated_at`, `title`) VALUES
(1, 'https://via.placeholder.com/640x480.png/000044?text=pixels+molestiae', '', 8, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(2, 'https://via.placeholder.com/640x480.png/004411?text=pixels+dolores', '', 1, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(3, 'https://via.placeholder.com/640x480.png/00bb00?text=pixels+dignissimos', '', 4, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(4, 'https://via.placeholder.com/640x480.png/00ff66?text=pixels+asperiores', '', 2, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(5, 'https://via.placeholder.com/640x480.png/0088bb?text=pixels+magnam', '', 1, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(7, 'https://via.placeholder.com/640x480.png/001133?text=pixels+est', '', 4, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(8, 'https://via.placeholder.com/640x480.png/00ee44?text=pixels+cum', '', 3, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(9, 'https://via.placeholder.com/640x480.png/00ee77?text=pixels+laboriosam', '', 9, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(10, 'https://via.placeholder.com/640x480.png/008811?text=pixels+laboriosam', '', 8, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(11, 'https://via.placeholder.com/640x480.png/00cc66?text=pixels+quo', '', 1, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(12, 'https://via.placeholder.com/640x480.png/009933?text=pixels+molestiae', '', 7, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(13, 'https://via.placeholder.com/640x480.png/00ff88?text=pixels+blanditiis', '', 5, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(14, 'https://via.placeholder.com/640x480.png/007755?text=pixels+fugiat', '', 2, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(15, 'https://via.placeholder.com/640x480.png/0022cc?text=pixels+eveniet', '', 2, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(16, 'https://via.placeholder.com/640x480.png/0044cc?text=pixels+et', '', 5, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(17, 'https://via.placeholder.com/640x480.png/006666?text=pixels+architecto', '', 9, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(18, 'https://via.placeholder.com/640x480.png/008811?text=pixels+placeat', '', 2, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(19, 'https://via.placeholder.com/640x480.png/006622?text=pixels+iste', '', 2, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(20, 'https://via.placeholder.com/640x480.png/009922?text=pixels+magni', '', 10, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(21, 'https://via.placeholder.com/640x480.png/007711?text=pixels+quo', '', 5, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(22, 'https://via.placeholder.com/640x480.png/00dd99?text=pixels+sint', '', 4, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(23, 'https://via.placeholder.com/640x480.png/004466?text=pixels+itaque', '', 9, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(24, 'https://via.placeholder.com/640x480.png/0033bb?text=pixels+iusto', '', 10, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(25, 'https://via.placeholder.com/640x480.png/00dd66?text=pixels+eum', '', 4, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(26, 'https://via.placeholder.com/640x480.png/0033bb?text=pixels+magni', '', 9, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(27, 'https://via.placeholder.com/640x480.png/000099?text=pixels+aut', '', 1, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(28, 'https://via.placeholder.com/640x480.png/002288?text=pixels+ipsum', '', 1, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(29, 'https://via.placeholder.com/640x480.png/003322?text=pixels+sapiente', '', 9, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(30, 'https://via.placeholder.com/640x480.png/005566?text=pixels+autem', '', 7, '2023-10-12 09:52:06', '2023-10-12 09:52:06', NULL),
(32, 'https://via.placeholder.com/640x480.png/005577?text=pixels+non', '', 3, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(33, 'https://via.placeholder.com/640x480.png/0022aa?text=pixels+aspernatur', '', 8, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(34, 'https://via.placeholder.com/640x480.png/00cc44?text=pixels+nihil', '', 8, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(35, 'https://via.placeholder.com/640x480.png/003333?text=pixels+repellendus', '', 1, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(36, 'https://via.placeholder.com/640x480.png/009933?text=pixels+quas', '', 8, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(37, 'https://via.placeholder.com/640x480.png/00ddee?text=pixels+possimus', '', 7, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(38, 'https://via.placeholder.com/640x480.png/00bbff?text=pixels+laborum', '', 8, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(39, 'https://via.placeholder.com/640x480.png/0099bb?text=pixels+inventore', '', 6, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(40, 'https://via.placeholder.com/640x480.png/007777?text=pixels+ab', '', 2, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(42, 'https://via.placeholder.com/640x480.png/000022?text=pixels+facere', '', 2, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(43, 'https://via.placeholder.com/640x480.png/002266?text=pixels+non', '', 9, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(44, 'https://via.placeholder.com/640x480.png/004400?text=pixels+quis', '', 9, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(45, 'https://via.placeholder.com/640x480.png/00eedd?text=pixels+vel', '', 3, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(46, 'https://via.placeholder.com/640x480.png/0011ee?text=pixels+mollitia', '', 9, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(47, 'https://via.placeholder.com/640x480.png/0099ee?text=pixels+sit', '', 2, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(48, 'https://via.placeholder.com/640x480.png/004444?text=pixels+animi', '', 3, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(49, 'https://via.placeholder.com/640x480.png/00bb77?text=pixels+ut', '', 5, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(50, 'https://via.placeholder.com/640x480.png/007700?text=pixels+dolores', '', 1, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(51, 'https://via.placeholder.com/640x480.png/009966?text=pixels+aspernatur', '', 1, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(52, 'https://via.placeholder.com/640x480.png/008866?text=pixels+necessitatibus', '', 7, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(53, 'https://via.placeholder.com/640x480.png/009922?text=pixels+reprehenderit', '', 3, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(54, 'https://via.placeholder.com/640x480.png/0099ff?text=pixels+maiores', '', 5, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(55, 'https://via.placeholder.com/640x480.png/0033ee?text=pixels+ullam', '', 6, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(56, 'https://via.placeholder.com/640x480.png/00ffbb?text=pixels+et', '', 102, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(58, 'https://via.placeholder.com/640x480.png/0022aa?text=pixels+expedita', '', 8, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(59, 'https://via.placeholder.com/640x480.png/00bb88?text=pixels+dolores', '', 2, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(60, 'https://via.placeholder.com/640x480.png/0044aa?text=pixels+et', '', 7, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(61, 'https://via.placeholder.com/640x480.png/002244?text=pixels+quis', '', 2, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(62, 'https://via.placeholder.com/640x480.png/00eeaa?text=pixels+earum', '', 2, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(63, 'https://via.placeholder.com/640x480.png/00aa77?text=pixels+tempora', '', 6, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(64, 'https://via.placeholder.com/640x480.png/001144?text=pixels+dolorem', '', 2, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(65, 'https://via.placeholder.com/640x480.png/005522?text=pixels+necessitatibus', '', 1, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(66, 'https://via.placeholder.com/640x480.png/009933?text=pixels+pariatur', '', 4, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(67, 'https://via.placeholder.com/640x480.png/00aacc?text=pixels+architecto', '', 5, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(68, 'https://via.placeholder.com/640x480.png/004488?text=pixels+ipsam', '', 8, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(69, 'https://via.placeholder.com/640x480.png/0022cc?text=pixels+dignissimos', '', 9, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(70, 'https://via.placeholder.com/640x480.png/0044bb?text=pixels+rerum', '', 6, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(71, 'https://via.placeholder.com/640x480.png/0033cc?text=pixels+expedita', '', 1, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(72, 'https://via.placeholder.com/640x480.png/000022?text=pixels+voluptatem', '', 10, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(73, 'https://via.placeholder.com/640x480.png/0055cc?text=pixels+quam', '', 2, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(74, 'https://via.placeholder.com/640x480.png/0099dd?text=pixels+molestiae', '', 9, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(75, 'https://via.placeholder.com/640x480.png/00dddd?text=pixels+eius', '', 3, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(76, 'https://via.placeholder.com/640x480.png/003399?text=pixels+eius', '', 7, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(77, 'https://via.placeholder.com/640x480.png/00aa99?text=pixels+ea', '', 1, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(78, 'https://via.placeholder.com/640x480.png/005500?text=pixels+laboriosam', '', 6, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(79, 'https://via.placeholder.com/640x480.png/0011bb?text=pixels+enim', '', 8, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(80, 'https://via.placeholder.com/640x480.png/0066cc?text=pixels+ratione', '', 1, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(81, 'https://via.placeholder.com/640x480.png/0033bb?text=pixels+quas', '', 2, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(82, 'https://via.placeholder.com/640x480.png/00ee33?text=pixels+dignissimos', '', 3, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(83, 'https://via.placeholder.com/640x480.png/006655?text=pixels+rerum', '', 7, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(84, 'https://via.placeholder.com/640x480.png/009900?text=pixels+tempora', '', 9, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(85, 'https://via.placeholder.com/640x480.png/0011aa?text=pixels+fuga', '', 10, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(86, 'https://via.placeholder.com/640x480.png/0000cc?text=pixels+id', '', 7, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(87, 'https://via.placeholder.com/640x480.png/000099?text=pixels+ipsam', '', 2, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(88, 'https://via.placeholder.com/640x480.png/0077cc?text=pixels+nostrum', '', 5, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(89, 'https://via.placeholder.com/640x480.png/004433?text=pixels+sint', '', 5, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(90, 'https://via.placeholder.com/640x480.png/0033aa?text=pixels+quas', '', 8, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(91, 'https://via.placeholder.com/640x480.png/000099?text=pixels+dolores', '', 4, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(92, 'https://via.placeholder.com/640x480.png/004477?text=pixels+quo', '', 6, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(93, 'https://via.placeholder.com/640x480.png/0022cc?text=pixels+quos', '', 6, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(94, 'https://via.placeholder.com/640x480.png/00dd44?text=pixels+voluptatum', '', 8, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(95, 'https://via.placeholder.com/640x480.png/009966?text=pixels+reprehenderit', '', 7, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(96, 'https://via.placeholder.com/640x480.png/006633?text=pixels+beatae', '', 8, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(97, 'https://via.placeholder.com/640x480.png/00ff11?text=pixels+et', '', 7, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(98, 'https://via.placeholder.com/640x480.png/0077bb?text=pixels+et', '', 9, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(99, 'https://via.placeholder.com/640x480.png/002299?text=pixels+id', '', 10, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(100, 'https://via.placeholder.com/640x480.png/0077ff?text=pixels+et', '', 7, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(101, 'https://via.placeholder.com/640x480.png/001122?text=pixels+magnam', '', 6, '2023-10-12 09:52:07', '2023-10-12 09:52:07', NULL),
(102, 'user_pictures/74IZ3DCR1qHi2TQZYahxEWuBRN1BzeQspmAEVcDb.png', 'Picture created by a user', 102, '2023-10-13 04:27:16', '2023-10-13 04:27:16', ''),
(103, 'user_pictures/PnBVCOYnTjETzOiOceSNbAOkgzOnk98qc7saDGLX.png', 'Picture created by a user', 102, '2023-10-13 04:33:12', '2023-10-13 04:33:12', ''),
(104, 'user_pictures/FRcfyM8smWnZB0ybEC5AlhQhqihZU5hhEHgvuxwn.svg', 'Picture created by a user', 102, '2023-10-13 04:45:24', '2023-10-13 04:45:24', ''),
(106, 'user_pictures/k3SluK0RwAOFN8haggCfxVm6m2KJefqXDiqjZwas.jpg', 'AI Generated Beautiful Bird', 102, '2023-10-13 05:49:35', '2023-10-13 05:49:35', 'AI Generated Beautiful Bird'),
(107, 'user_pictures/2xmzP09Xf5BBOuTaF9hXcLw6mGukBHDGC2dyaPEj.jpg', 'AI Giraffe', 102, '2023-10-13 05:56:52', '2023-10-13 05:56:52', 'AI Giraffe'),
(108, 'user_pictures/tvElWClL2KBj9yl3Xsq6wf2R0YzAXBXympPvRx0z.svg', 'Note', 102, '2023-10-13 06:00:03', '2023-10-13 06:47:57', 'Note'),
(110, 'user_pictures/w91tA4k1k1ALzRGtkirku4DMKNHdj683taRqpLCI.jpg', 'AI Wolf', 104, '2023-10-13 06:13:05', '2023-10-13 06:13:05', 'AI Wolf'),
(112, 'user_pictures/8sUiPL7TwLzVhSbzQHKy6DUcmSDgUrgwUkdRmrnI.jpg', NULL, 102, '2023-10-13 08:07:10', '2023-10-13 08:07:10', NULL),
(113, 'user_pictures/bx68mHAor1FcVsUEy1a5eB0Q8sVrery97LfLsZ0j.jpg', NULL, 102, '2023-10-13 08:07:29', '2023-10-13 08:07:29', NULL),
(114, 'user_pictures/YOOPLWwjJGLfj2fJ1ijRz0NbeKlDwELasHEBbCy9.jpg', NULL, 102, '2023-10-13 08:07:39', '2023-10-13 08:07:39', NULL),
(118, 'user_pictures/e3VCa7JX8LcaBmvbByhJhjSoDRNC8Q1eJou5ITES.jpg', NULL, 104, '2023-10-13 10:42:09', '2023-10-13 10:42:09', NULL),
(119, 'user_pictures/hBuiotpNIHqDnr6rHL67FA3c79ImonsK0fF7rH6U.jpg', NULL, 104, '2023-10-13 10:42:30', '2023-10-13 10:42:30', NULL),
(120, 'user_pictures/OgTnCt1uJNskKqlUZamSOYWQNXGa1FcCUY6UAmoG.jpg', NULL, 104, '2023-10-13 11:20:01', '2023-10-13 11:20:01', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_images`
--
ALTER TABLE `user_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `user_images`
--
ALTER TABLE `user_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
