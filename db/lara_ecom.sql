-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 09, 2018 at 04:39 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.25-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara_ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2018_05_15_101223_create_products_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 'The First Product', 'uploads/products/book1.png', 5000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium temporibus nobis distinctio quasi repellat quibusdam cum neque nam fuga quae laudantium nostrum dolores dicta ut commodi, est minima vel debitis.', '2018-05-15 04:30:50', '2018-05-15 04:30:50'),
(2, 'The Second Product', 'uploads/products/1526397919book2.png', 3000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium temporibus nobis distinctio quasi repellat quibusdam cum neque nam fuga quae laudantium nostrum dolores dicta ut commodi, est minima vel debitis.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium temporibus nobis distinctio quasi repellat quibusdam cum neque nam fuga quae laudantium nostrum dolores dicta ut commodi, est minima vel debitis.', '2018-05-15 04:30:50', '2018-05-15 12:17:32'),
(3, 'Third product', 'uploads/products/1526394997book3.png', 2000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt facilisis lectus a laoreet. Cras placerat commodo ipsum, at rhoncus nibh hendrerit a. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris mollis congue mattis. Sed augue mi, molestie eget mi sed, lacinia pellentesque leo. Fusce mattis, sem cursus ultricies eleifend, purus enim viverra felis, vel gravida sem quam nec lorem.', '2018-05-15 08:36:37', '2018-05-15 08:36:37'),
(5, 'Unde modi.', 'uploads/products/book1.png', 346, 'Aspernatur sunt fuga sit sunt. Dolorum quis placeat animi ut non. Dolore laboriosam cumque doloremque omnis voluptatem. Rem omnis earum accusamus magnam vel nesciunt aperiam omnis.', '2018-05-15 11:22:04', '2018-05-15 11:22:04'),
(6, 'Quasi aut.', 'uploads/products/book1.png', 2393, 'Velit sit totam quo doloremque. Dicta autem et nam. Nisi sed id ea consectetur at expedita. Consequatur reiciendis minima quos provident veniam molestiae. Itaque et odio accusamus voluptas autem tempore.', '2018-05-15 11:22:05', '2018-05-15 11:22:05'),
(7, 'Ut  libero.', 'uploads/products/book1.png', 8606, 'Recusandae totam incidunt asperiores est aut quis. Consequatur quis nulla mollitia id. Libero vitae qui qui sunt incidunt id facere. Hic incidunt est iure repellat. Labore rerum ea provident similique dolor voluptas quis.', '2018-05-15 11:22:05', '2018-05-23 02:13:30'),
(8, 'Similique non', 'uploads/products/book1.png', 5786, 'In eum vitae sint velit quos animi. Debitis maxime ipsum ut odit ea nesciunt et. Quae impedit aperiam error sapiente. Beatae culpa numquam autem totam in veritatis. Nostrum velit repellat numquam similique ratione harum voluptatem.', '2018-05-15 11:22:05', '2018-05-23 02:13:48'),
(9, 'Nam et magni aut.', 'uploads/products/book1.png', 5773, 'Asperiores ut ut rerum assumenda vitae sint quisquam. Laboriosam occaecati consequatur nulla atque. Et et voluptatem eum blanditiis hic dolore. Laudantium nisi suscipit ad pariatur libero aut. Velit voluptatem molestiae deleniti recusandae distinctio aliquam qui.', '2018-05-15 11:22:05', '2018-05-15 11:22:05'),
(10, 'Non est quia.', 'uploads/products/book1.png', 6707, 'Sed nesciunt assumenda aut. Rerum rerum velit tenetur veritatis. Et possimus quidem quia quam.', '2018-05-15 11:22:05', '2018-05-15 11:22:05'),
(11, 'Suscipit eos expedita.', 'uploads/products/book1.png', 7906, 'Minima officiis suscipit commodi consequuntur voluptatem sit illum est. Consequatur aut laudantium ut quo aperiam necessitatibus blanditiis. Dolor quidem recusandae autem. Quo repudiandae minus repellendus omnis.', '2018-05-15 11:22:05', '2018-05-15 11:22:05'),
(12, 'Rerum odio.', 'uploads/products/book1.png', 7300, 'Eos natus non dignissimos deleniti quas quia. Impedit et et esse consectetur corporis rerum quasi. Autem omnis soluta atque debitis est.', '2018-05-15 11:22:05', '2018-05-15 11:22:05'),
(13, 'Adipisci repudiandae dolorum vel.', 'uploads/products/book1.png', 934, 'Qui maiores fugiat ipsa aut. Magni tempore et quia. Et excepturi exercitationem accusantium quas incidunt.', '2018-05-15 11:22:05', '2018-05-15 11:22:05'),
(14, 'Sit sint.', 'uploads/products/book1.png', 2187, 'Ut architecto in dolorum laborum minus tempora. Ut id consequatur culpa praesentium praesentium quia quo. Minima perspiciatis unde quod dolores nihil et est.', '2018-05-15 11:22:05', '2018-05-15 11:22:05'),
(15, 'Qui quo ea.', 'uploads/products/book1.png', 3948, 'Optio consequatur nam autem. Dolorem atque doloremque non dignissimos sunt. Similique dolores ea et quisquam mollitia explicabo.', '2018-05-15 11:22:05', '2018-05-15 11:22:05'),
(16, 'Voluptatem qui et eligendi est.', 'uploads/products/book1.png', 9777, 'Velit molestias saepe delectus totam. Id iste totam sint ex voluptas. Est numquam nostrum consequatur commodi illo rem et. Consequuntur magnam aut omnis illum. Ut eum velit est maxime sapiente vel.', '2018-05-15 11:22:05', '2018-05-15 11:22:05'),
(17, 'Sed rerum ipsam.', 'uploads/products/book1.png', 5922, 'Doloribus quidem adipisci officia ut laboriosam. Et quas sequi aut quis. Porro beatae recusandae deserunt.', '2018-05-15 11:22:05', '2018-05-15 11:22:05'),
(18, 'Quo est similique.', 'uploads/products/book1.png', 8320, 'Eum voluptatem sapiente neque. Cumque quo sed minus. Quasi dolorem ab quo ut in consequatur quam. Ut nemo voluptatem fugiat quo id voluptatibus assumenda dolorum. Dolores perferendis ad qui dicta sapiente. Vel eum enim quod repellendus dolore possimus aut.', '2018-05-15 11:22:06', '2018-05-15 11:22:06'),
(19, 'Tempore et sed rerum laudantium.', 'uploads/products/book1.png', 4887, 'Mollitia exercitationem est aliquid expedita. Nisi aut placeat esse et magnam. Nisi et ducimus optio.', '2018-05-15 11:22:06', '2018-05-15 11:22:06'),
(20, 'Voluptates qui repellendus neque similique.', 'uploads/products/book1.png', 7267, 'Eum accusantium aspernatur fuga veritatis libero qui autem. Necessitatibus recusandae maxime cumque qui quis excepturi. Magni voluptatem et voluptates quod et provident id est. Possimus et veniam quas laudantium. Beatae necessitatibus natus cupiditate.', '2018-05-15 11:22:06', '2018-05-15 11:22:06'),
(21, 'Sequi dolorum eum.', 'uploads/products/book1.png', 4040, 'Velit delectus aut sunt voluptate quis enim. In rerum incidunt laudantium. Hic beatae et occaecati modi consequatur in. Officiis sint excepturi a suscipit praesentium dolore impedit. Ullam velit omnis veniam iusto quasi ab voluptatibus.', '2018-05-15 11:22:06', '2018-05-15 11:22:06'),
(22, 'Est autem atque consequatur.', 'uploads/products/book1.png', 4775, 'Iusto ut ut totam aut eum iusto. Iusto in at maxime sed ut nostrum reiciendis. Accusantium blanditiis voluptate quia dolores. Vel incidunt quod voluptatem nulla illum nesciunt aliquid. Rerum consequuntur fugiat dicta ipsam.', '2018-05-15 11:22:06', '2018-05-15 11:22:06'),
(23, 'Dolore reprehenderit error aliquid.', 'uploads/products/book1.png', 984, 'Dolores cum dolorum sit recusandae. Veniam ab ad praesentium reiciendis. Aut impedit alias asperiores aliquid voluptatibus sint voluptatem.', '2018-05-15 11:22:06', '2018-05-15 11:22:06'),
(24, 'Quas modi natus omnis.', 'uploads/products/book1.png', 9823, 'Fugit et necessitatibus ea distinctio incidunt sit. Voluptas animi officia asperiores adipisci. Corporis reprehenderit deserunt dolorem eum ipsam dignissimos.', '2018-05-15 11:22:06', '2018-05-15 11:22:06'),
(25, 'Neque impedit doloribus quo.', 'uploads/products/book1.png', 3097, 'Et enim reprehenderit facilis cupiditate sapiente non assumenda. Voluptates et in suscipit. Atque quaerat tempore quis cupiditate reprehenderit eum. Aliquid libero modi numquam non quia deleniti et cupiditate.', '2018-05-15 11:22:06', '2018-05-15 11:22:06'),
(26, 'Et cum repellendus.', 'uploads/products/book1.png', 7238, 'Suscipit recusandae ad adipisci voluptatem voluptates quidem ipsam. Non dolorem non quis quisquam. Corporis consequatur et similique necessitatibus. Rerum et magni expedita fugiat aut est ipsum.', '2018-05-15 11:22:06', '2018-05-15 11:22:06'),
(27, 'Aut laborum.', 'uploads/products/book1.png', 2877, 'Et sint dolorem culpa est voluptas quis. Officiis reprehenderit cumque eveniet sunt. Harum hic praesentium reprehenderit aspernatur inventore et neque. Esse atque praesentium suscipit tempora autem veniam. Eos nihil qui quae omnis maxime molestiae dicta. Voluptatem dolor ut dolor sequi unde recusandae.', '2018-05-15 11:22:06', '2018-05-15 11:22:06'),
(28, 'Delectus consectetur voluptas.', 'uploads/products/book1.png', 3235, 'Sed totam libero pariatur est distinctio magni. Dicta qui quia vel non possimus. Corrupti quis maxime ut. Qui neque dignissimos quasi fugit. Sint culpa saepe autem repudiandae autem.', '2018-05-15 11:22:06', '2018-05-15 11:22:06'),
(29, 'Voluptatem corrupti quia neque.', 'uploads/products/book1.png', 4487, 'Nulla facilis repellat nobis ea illum qui tempora. Quia sequi inventore quasi distinctio pariatur necessitatibus optio. Error deserunt voluptatem quis laborum cupiditate neque. Esse veniam consequatur qui iusto repellendus asperiores voluptates eveniet. Autem fugiat sint illum nobis voluptatem et voluptatem.', '2018-05-15 11:22:06', '2018-05-15 11:22:06'),
(30, 'Rerum sint eos.', 'uploads/products/book1.png', 5766, 'Aliquid qui ipsa non libero placeat commodi. Rerum et et possimus velit quia. Fugit libero voluptas ea totam. Et aut suscipit nam voluptate. Commodi aut eos omnis doloribus.', '2018-05-15 11:22:06', '2018-05-15 11:22:06'),
(31, 'Eos ut.', 'uploads/products/book1.png', 2286, 'Eaque cumque culpa esse quae nihil dignissimos nihil. Molestias quos nam architecto animi. Alias distinctio quia aut aut nesciunt rerum voluptatem. Est at atque numquam ab. Dolore et facilis illum.', '2018-05-15 11:22:06', '2018-05-15 11:22:06'),
(32, 'Aliquam aut sit est.', 'uploads/products/book1.png', 4017, 'Placeat corporis quia recusandae quia aut et sit perspiciatis. Laboriosam atque aut et repellat. Possimus sequi hic excepturi aperiam quidem id enim. Cum voluptate illum enim. Modi eligendi voluptas sed adipisci.', '2018-05-15 11:22:06', '2018-05-15 11:22:06'),
(33, 'Molestias provident sint.', 'uploads/products/book1.png', 3446, 'In odio doloremque qui necessitatibus. Cumque hic quia unde. Esse dolorum odio et nemo vel maxime nobis. Natus vel aliquid eius deleniti ut.', '2018-05-15 11:22:06', '2018-05-15 11:22:06'),
(34, 'Soluta velit consequatur.', 'uploads/products/book1.png', 6789, 'Omnis odit nesciunt et hic natus praesentium non voluptate. Qui qui non architecto reiciendis ut recusandae. Iure distinctio numquam nam dolor ipsam deserunt. Nisi temporibus deleniti natus provident repellendus quibusdam eos nisi.', '2018-05-15 11:22:06', '2018-05-15 11:22:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mamun', 'mhkhan.me@gmail.com', '$2y$10$VKduGsP0EThij7AH8cO2/OUU0f1crwLHVpnBaqzAu6jlPIPNlsaAm', 'oBUmd5HfBfZxGlB5xNf27lPKxsiMpBnzKHbVlhPJ72f37uJ0e6HUrGPS6fFs', '2018-05-15 04:30:50', '2018-05-15 04:30:50');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
