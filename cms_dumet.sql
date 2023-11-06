-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2018 at 01:11 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_dumet`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(10) UNSIGNED NOT NULL,
  `users_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `focus_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `categories_id`, `users_id`, `title`, `images`, `news`, `alt`, `focus_key`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Cara Menggunakan PHP Bagi Pemula', 'bc_wp_logo-840x341.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate, tempus metus nec, tincidunt metus. Sed at sollicitudin ante. Curabitur at est leo. Donec at pharetra ante. Aliquam posuere mi eu nisi ultrices, vitae ullamcorper libero tristique. Maecenas non dolor ultrices quam ultrices convallis eget eu velit. Vestibulum auctor enim ac sodales rhoncus. Nam nec purus ut tortor gravida aliquam id ut dui. Donec varius ac est sit amet bibendum. Fusce pellentesque a quam sit amet pulvinar. Curabitur varius ex neque, eleifend fermentum metus cursus facilisis. Integer a felis in ante laoreet vehicula vitae in sem. Duis sagittis ac nulla sit amet aliquet. Etiam aliquam, nunc id fringilla ultricies, dolor sem tristique lorem, nec ultrices odio enim id augue. Aenean pharetra ut elit eget porta. Sed et hendrerit eros.\r\n\r\nVivamus malesuada arcu egestas lacus rhoncus fermentum. Proin nibh mi, rhoncus nec lectus eu, congue lacinia sem. Nunc sit amet consequat ex. Integer volutpat, augue non mollis interdum, enim libero tempor libero, non facilisis leo mi ut lorem. Sed et lorem finibus, egestas diam ut, venenatis sem. Praesent hendrerit lacus pharetra interdum lobortis. Ut porttitor id metus in blandit.\r\n\r\nNam nisl felis, suscipit eu tempor quis, sollicitudin in velit. Quisque vestibulum eros tincidunt tempus pellentesque. Donec vulputate lorem rutrum congue mollis. Mauris fringilla, elit ut pretium venenatis, dui augue consectetur risus, at venenatis ligula ante ut odio. Phasellus a risus scelerisque est rutrum viverra nec ut lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis consequat pellentesque sem ut malesuada. Maecenas nec facilisis eros.\r\n\r\nSed congue ipsum nec lacus eleifend sodales. Fusce commodo magna sit amet erat luctus, quis semper ante suscipit. Maecenas id lorem ac magna iaculis egestas at non ante. Suspendisse ut dapibus sapien. Nullam vulputate, leo eget pulvinar gravida, mauris magna finibus dolor, in aliquet justo ligula porttitor sapien. Nullam sem tellus, porttitor a justo eget, interdum lacinia sem. Morbi id ullamcorper diam, vitae varius orci. Curabitur placerat, sapien vitae volutpat vestibulum, velit tellus accumsan libero, semper venenatis augue ligula eu eros. Curabitur euismod vel sem sed scelerisque. Aenean ut leo sed mi tincidunt tincidunt. Integer metus felis, egestas quis ex vel, fermentum euismod elit.\r\n\r\nPellentesque ultricies non orci at ornare. Integer placerat tincidunt nulla eu dictum. Etiam at auctor elit, eu blandit quam. Vestibulum magna risus, lacinia eu ornare ac, auctor congue lacus. Curabitur faucibus tempus libero, eu volutpat tellus viverra condimentum. Sed quis porttitor lectus, pharetra gravida augue. Cras augue tortor, tincidunt euismod ipsum quis, venenatis fermentum metus. Integer malesuada, mauris ac ultrices ornare, tellus sem volutpat odio, non ornare ante dui at turpis. Praesent ex diam, malesuada et imperdiet vitae, molestie vel felis. Cras cursus volutpat erat, ac aliquam augue feugiat et. Maecenas eu scelerisque elit. Nunc et neque ultricies, pulvinar ligula non, commodo neque. Donec ut magna mi. Quisque ac diam vitae odio consectetur vestibulum. Donec quis convallis urna, sit amet interdum velit. Mauris quis convallis felis, sed aliquet sem.', 'Cara Menggunakan PHP Bagi Pemula', 'Cara Menggunakan PHP Bagi Pemula', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate', '2018-10-12 17:00:00', '2018-10-12 17:00:00'),
(2, 1, 0, 'Cara Menggunakan Sendok Dan Garpu', 'angular-seo.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate, tempus metus nec, tincidunt metus. Sed at sollicitudin ante. Curabitur at est leo. Donec at pharetra ante. Aliquam posuere mi eu nisi ultrices, vitae ullamcorper libero tristique. Maecenas non dolor ultrices quam ultrices convallis eget eu velit. Vestibulum auctor enim ac sodales rhoncus. Nam nec purus ut tortor gravida aliquam id ut dui. Donec varius ac est sit amet bibendum. Fusce pellentesque a quam sit amet pulvinar. Curabitur varius ex neque, eleifend fermentum metus cursus facilisis. Integer a felis in ante laoreet vehicula vitae in sem. Duis sagittis ac nulla sit amet aliquet. Etiam aliquam, nunc id fringilla ultricies, dolor sem tristique lorem, nec ultrices odio enim id augue. Aenean pharetra ut elit eget porta. Sed et hendrerit eros.\r\n\r\nVivamus malesuada arcu egestas lacus rhoncus fermentum. Proin nibh mi, rhoncus nec lectus eu, congue lacinia sem. Nunc sit amet consequat ex. Integer volutpat, augue non mollis interdum, enim libero tempor libero, non facilisis leo mi ut lorem. Sed et lorem finibus, egestas diam ut, venenatis sem. Praesent hendrerit lacus pharetra interdum lobortis. Ut porttitor id metus in blandit.\r\n\r\nNam nisl felis, suscipit eu tempor quis, sollicitudin in velit. Quisque vestibulum eros tincidunt tempus pellentesque. Donec vulputate lorem rutrum congue mollis. Mauris fringilla, elit ut pretium venenatis, dui augue consectetur risus, at venenatis ligula ante ut odio. Phasellus a risus scelerisque est rutrum viverra nec ut lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis consequat pellentesque sem ut malesuada. Maecenas nec facilisis eros.\r\n\r\nSed congue ipsum nec lacus eleifend sodales. Fusce commodo magna sit amet erat luctus, quis semper ante suscipit. Maecenas id lorem ac magna iaculis egestas at non ante. Suspendisse ut dapibus sapien. Nullam vulputate, leo eget pulvinar gravida, mauris magna finibus dolor, in aliquet justo ligula porttitor sapien. Nullam sem tellus, porttitor a justo eget, interdum lacinia sem. Morbi id ullamcorper diam, vitae varius orci. Curabitur placerat, sapien vitae volutpat vestibulum, velit tellus accumsan libero, semper venenatis augue ligula eu eros. Curabitur euismod vel sem sed scelerisque. Aenean ut leo sed mi tincidunt tincidunt. Integer metus felis, egestas quis ex vel, fermentum euismod elit.\r\n\r\nPellentesque ultricies non orci at ornare. Integer placerat tincidunt nulla eu dictum. Etiam at auctor elit, eu blandit quam. Vestibulum magna risus, lacinia eu ornare ac, auctor congue lacus. Curabitur faucibus tempus libero, eu volutpat tellus viverra condimentum. Sed quis porttitor lectus, pharetra gravida augue. Cras augue tortor, tincidunt euismod ipsum quis, venenatis fermentum metus. Integer malesuada, mauris ac ultrices ornare, tellus sem volutpat odio, non ornare ante dui at turpis. Praesent ex diam, malesuada et imperdiet vitae, molestie vel felis. Cras cursus volutpat erat, ac aliquam augue feugiat et. Maecenas eu scelerisque elit. Nunc et neque ultricies, pulvinar ligula non, commodo neque. Donec ut magna mi. Quisque ac diam vitae odio consectetur vestibulum. Donec quis convallis urna, sit amet interdum velit. Mauris quis convallis felis, sed aliquet sem.', 'Cara Menggunakan Sendok Dan Garpu', 'Cara Menggunakan Sendok Dan Garpu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate', '2018-10-12 17:00:00', '2018-10-12 17:00:00'),
(3, 2, 0, 'Apau Itu Htaccess Di Website', 'bc_wp_logo-840x341.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate, tempus metus nec, tincidunt metus. Sed at sollicitudin ante. Curabitur at est leo. Donec at pharetra ante. Aliquam posuere mi eu nisi ultrices, vitae ullamcorper libero tristique. Maecenas non dolor ultrices quam ultrices convallis eget eu velit. Vestibulum auctor enim ac sodales rhoncus. Nam nec purus ut tortor gravida aliquam id ut dui. Donec varius ac est sit amet bibendum. Fusce pellentesque a quam sit amet pulvinar. Curabitur varius ex neque, eleifend fermentum metus cursus facilisis. Integer a felis in ante laoreet vehicula vitae in sem. Duis sagittis ac nulla sit amet aliquet. Etiam aliquam, nunc id fringilla ultricies, dolor sem tristique lorem, nec ultrices odio enim id augue. Aenean pharetra ut elit eget porta. Sed et hendrerit eros.\r\n\r\nVivamus malesuada arcu egestas lacus rhoncus fermentum. Proin nibh mi, rhoncus nec lectus eu, congue lacinia sem. Nunc sit amet consequat ex. Integer volutpat, augue non mollis interdum, enim libero tempor libero, non facilisis leo mi ut lorem. Sed et lorem finibus, egestas diam ut, venenatis sem. Praesent hendrerit lacus pharetra interdum lobortis. Ut porttitor id metus in blandit.\r\n\r\nNam nisl felis, suscipit eu tempor quis, sollicitudin in velit. Quisque vestibulum eros tincidunt tempus pellentesque. Donec vulputate lorem rutrum congue mollis. Mauris fringilla, elit ut pretium venenatis, dui augue consectetur risus, at venenatis ligula ante ut odio. Phasellus a risus scelerisque est rutrum viverra nec ut lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis consequat pellentesque sem ut malesuada. Maecenas nec facilisis eros.\r\n\r\nSed congue ipsum nec lacus eleifend sodales. Fusce commodo magna sit amet erat luctus, quis semper ante suscipit. Maecenas id lorem ac magna iaculis egestas at non ante. Suspendisse ut dapibus sapien. Nullam vulputate, leo eget pulvinar gravida, mauris magna finibus dolor, in aliquet justo ligula porttitor sapien. Nullam sem tellus, porttitor a justo eget, interdum lacinia sem. Morbi id ullamcorper diam, vitae varius orci. Curabitur placerat, sapien vitae volutpat vestibulum, velit tellus accumsan libero, semper venenatis augue ligula eu eros. Curabitur euismod vel sem sed scelerisque. Aenean ut leo sed mi tincidunt tincidunt. Integer metus felis, egestas quis ex vel, fermentum euismod elit.\r\n\r\nPellentesque ultricies non orci at ornare. Integer placerat tincidunt nulla eu dictum. Etiam at auctor elit, eu blandit quam. Vestibulum magna risus, lacinia eu ornare ac, auctor congue lacus. Curabitur faucibus tempus libero, eu volutpat tellus viverra condimentum. Sed quis porttitor lectus, pharetra gravida augue. Cras augue tortor, tincidunt euismod ipsum quis, venenatis fermentum metus. Integer malesuada, mauris ac ultrices ornare, tellus sem volutpat odio, non ornare ante dui at turpis. Praesent ex diam, malesuada et imperdiet vitae, molestie vel felis. Cras cursus volutpat erat, ac aliquam augue feugiat et. Maecenas eu scelerisque elit. Nunc et neque ultricies, pulvinar ligula non, commodo neque. Donec ut magna mi. Quisque ac diam vitae odio consectetur vestibulum. Donec quis convallis urna, sit amet interdum velit. Mauris quis convallis felis, sed aliquet sem.', 'Apau Itu Htaccess Di Website', 'Apau Itu Htaccess Di Website', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate', '2018-10-12 17:00:00', '2018-10-12 17:00:00'),
(4, 2, 0, 'Tips And Trick Pemprogramman Android ', 'Android-processes.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate, tempus metus nec, tincidunt metus. Sed at sollicitudin ante. Curabitur at est leo. Donec at pharetra ante. Aliquam posuere mi eu nisi ultrices, vitae ullamcorper libero tristique. Maecenas non dolor ultrices quam ultrices convallis eget eu velit. Vestibulum auctor enim ac sodales rhoncus. Nam nec purus ut tortor gravida aliquam id ut dui. Donec varius ac est sit amet bibendum. Fusce pellentesque a quam sit amet pulvinar. Curabitur varius ex neque, eleifend fermentum metus cursus facilisis. Integer a felis in ante laoreet vehicula vitae in sem. Duis sagittis ac nulla sit amet aliquet. Etiam aliquam, nunc id fringilla ultricies, dolor sem tristique lorem, nec ultrices odio enim id augue. Aenean pharetra ut elit eget porta. Sed et hendrerit eros.\r\n\r\nVivamus malesuada arcu egestas lacus rhoncus fermentum. Proin nibh mi, rhoncus nec lectus eu, congue lacinia sem. Nunc sit amet consequat ex. Integer volutpat, augue non mollis interdum, enim libero tempor libero, non facilisis leo mi ut lorem. Sed et lorem finibus, egestas diam ut, venenatis sem. Praesent hendrerit lacus pharetra interdum lobortis. Ut porttitor id metus in blandit.\r\n\r\nNam nisl felis, suscipit eu tempor quis, sollicitudin in velit. Quisque vestibulum eros tincidunt tempus pellentesque. Donec vulputate lorem rutrum congue mollis. Mauris fringilla, elit ut pretium venenatis, dui augue consectetur risus, at venenatis ligula ante ut odio. Phasellus a risus scelerisque est rutrum viverra nec ut lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis consequat pellentesque sem ut malesuada. Maecenas nec facilisis eros.\r\n\r\nSed congue ipsum nec lacus eleifend sodales. Fusce commodo magna sit amet erat luctus, quis semper ante suscipit. Maecenas id lorem ac magna iaculis egestas at non ante. Suspendisse ut dapibus sapien. Nullam vulputate, leo eget pulvinar gravida, mauris magna finibus dolor, in aliquet justo ligula porttitor sapien. Nullam sem tellus, porttitor a justo eget, interdum lacinia sem. Morbi id ullamcorper diam, vitae varius orci. Curabitur placerat, sapien vitae volutpat vestibulum, velit tellus accumsan libero, semper venenatis augue ligula eu eros. Curabitur euismod vel sem sed scelerisque. Aenean ut leo sed mi tincidunt tincidunt. Integer metus felis, egestas quis ex vel, fermentum euismod elit.\r\n\r\nPellentesque ultricies non orci at ornare. Integer placerat tincidunt nulla eu dictum. Etiam at auctor elit, eu blandit quam. Vestibulum magna risus, lacinia eu ornare ac, auctor congue lacus. Curabitur faucibus tempus libero, eu volutpat tellus viverra condimentum. Sed quis porttitor lectus, pharetra gravida augue. Cras augue tortor, tincidunt euismod ipsum quis, venenatis fermentum metus. Integer malesuada, mauris ac ultrices ornare, tellus sem volutpat odio, non ornare ante dui at turpis. Praesent ex diam, malesuada et imperdiet vitae, molestie vel felis. Cras cursus volutpat erat, ac aliquam augue feugiat et. Maecenas eu scelerisque elit. Nunc et neque ultricies, pulvinar ligula non, commodo neque. Donec ut magna mi. Quisque ac diam vitae odio consectetur vestibulum. Donec quis convallis urna, sit amet interdum velit. Mauris quis convallis felis, sed aliquet sem.', 'Tips And Trick Pemprogramman Android ', 'Tips And Trick Pemprogramman Android ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate', '2018-10-12 17:00:00', '2018-10-12 17:00:00'),
(5, 1, 0, 'Cara Menggunakan PHP Bagi Pemula', 'bc_wp_logo-840x341.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate, tempus metus nec, tincidunt metus. Sed at sollicitudin ante. Curabitur at est leo. Donec at pharetra ante. Aliquam posuere mi eu nisi ultrices, vitae ullamcorper libero tristique. Maecenas non dolor ultrices quam ultrices convallis eget eu velit. Vestibulum auctor enim ac sodales rhoncus. Nam nec purus ut tortor gravida aliquam id ut dui. Donec varius ac est sit amet bibendum. Fusce pellentesque a quam sit amet pulvinar. Curabitur varius ex neque, eleifend fermentum metus cursus facilisis. Integer a felis in ante laoreet vehicula vitae in sem. Duis sagittis ac nulla sit amet aliquet. Etiam aliquam, nunc id fringilla ultricies, dolor sem tristique lorem, nec ultrices odio enim id augue. Aenean pharetra ut elit eget porta. Sed et hendrerit eros.\r\n\r\nVivamus malesuada arcu egestas lacus rhoncus fermentum. Proin nibh mi, rhoncus nec lectus eu, congue lacinia sem. Nunc sit amet consequat ex. Integer volutpat, augue non mollis interdum, enim libero tempor libero, non facilisis leo mi ut lorem. Sed et lorem finibus, egestas diam ut, venenatis sem. Praesent hendrerit lacus pharetra interdum lobortis. Ut porttitor id metus in blandit.\r\n\r\nNam nisl felis, suscipit eu tempor quis, sollicitudin in velit. Quisque vestibulum eros tincidunt tempus pellentesque. Donec vulputate lorem rutrum congue mollis. Mauris fringilla, elit ut pretium venenatis, dui augue consectetur risus, at venenatis ligula ante ut odio. Phasellus a risus scelerisque est rutrum viverra nec ut lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis consequat pellentesque sem ut malesuada. Maecenas nec facilisis eros.\r\n\r\nSed congue ipsum nec lacus eleifend sodales. Fusce commodo magna sit amet erat luctus, quis semper ante suscipit. Maecenas id lorem ac magna iaculis egestas at non ante. Suspendisse ut dapibus sapien. Nullam vulputate, leo eget pulvinar gravida, mauris magna finibus dolor, in aliquet justo ligula porttitor sapien. Nullam sem tellus, porttitor a justo eget, interdum lacinia sem. Morbi id ullamcorper diam, vitae varius orci. Curabitur placerat, sapien vitae volutpat vestibulum, velit tellus accumsan libero, semper venenatis augue ligula eu eros. Curabitur euismod vel sem sed scelerisque. Aenean ut leo sed mi tincidunt tincidunt. Integer metus felis, egestas quis ex vel, fermentum euismod elit.\r\n\r\nPellentesque ultricies non orci at ornare. Integer placerat tincidunt nulla eu dictum. Etiam at auctor elit, eu blandit quam. Vestibulum magna risus, lacinia eu ornare ac, auctor congue lacus. Curabitur faucibus tempus libero, eu volutpat tellus viverra condimentum. Sed quis porttitor lectus, pharetra gravida augue. Cras augue tortor, tincidunt euismod ipsum quis, venenatis fermentum metus. Integer malesuada, mauris ac ultrices ornare, tellus sem volutpat odio, non ornare ante dui at turpis. Praesent ex diam, malesuada et imperdiet vitae, molestie vel felis. Cras cursus volutpat erat, ac aliquam augue feugiat et. Maecenas eu scelerisque elit. Nunc et neque ultricies, pulvinar ligula non, commodo neque. Donec ut magna mi. Quisque ac diam vitae odio consectetur vestibulum. Donec quis convallis urna, sit amet interdum velit. Mauris quis convallis felis, sed aliquet sem.', 'Cara Menggunakan PHP Bagi Pemula', 'Cara Menggunakan PHP Bagi Pemula', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate', '2018-10-12 17:00:00', '2018-10-12 17:00:00'),
(6, 1, 0, 'Cara Menggunakan Sendok Dan Garpu', 'angular-seo.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate, tempus metus nec, tincidunt metus. Sed at sollicitudin ante. Curabitur at est leo. Donec at pharetra ante. Aliquam posuere mi eu nisi ultrices, vitae ullamcorper libero tristique. Maecenas non dolor ultrices quam ultrices convallis eget eu velit. Vestibulum auctor enim ac sodales rhoncus. Nam nec purus ut tortor gravida aliquam id ut dui. Donec varius ac est sit amet bibendum. Fusce pellentesque a quam sit amet pulvinar. Curabitur varius ex neque, eleifend fermentum metus cursus facilisis. Integer a felis in ante laoreet vehicula vitae in sem. Duis sagittis ac nulla sit amet aliquet. Etiam aliquam, nunc id fringilla ultricies, dolor sem tristique lorem, nec ultrices odio enim id augue. Aenean pharetra ut elit eget porta. Sed et hendrerit eros.\r\n\r\nVivamus malesuada arcu egestas lacus rhoncus fermentum. Proin nibh mi, rhoncus nec lectus eu, congue lacinia sem. Nunc sit amet consequat ex. Integer volutpat, augue non mollis interdum, enim libero tempor libero, non facilisis leo mi ut lorem. Sed et lorem finibus, egestas diam ut, venenatis sem. Praesent hendrerit lacus pharetra interdum lobortis. Ut porttitor id metus in blandit.\r\n\r\nNam nisl felis, suscipit eu tempor quis, sollicitudin in velit. Quisque vestibulum eros tincidunt tempus pellentesque. Donec vulputate lorem rutrum congue mollis. Mauris fringilla, elit ut pretium venenatis, dui augue consectetur risus, at venenatis ligula ante ut odio. Phasellus a risus scelerisque est rutrum viverra nec ut lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis consequat pellentesque sem ut malesuada. Maecenas nec facilisis eros.\r\n\r\nSed congue ipsum nec lacus eleifend sodales. Fusce commodo magna sit amet erat luctus, quis semper ante suscipit. Maecenas id lorem ac magna iaculis egestas at non ante. Suspendisse ut dapibus sapien. Nullam vulputate, leo eget pulvinar gravida, mauris magna finibus dolor, in aliquet justo ligula porttitor sapien. Nullam sem tellus, porttitor a justo eget, interdum lacinia sem. Morbi id ullamcorper diam, vitae varius orci. Curabitur placerat, sapien vitae volutpat vestibulum, velit tellus accumsan libero, semper venenatis augue ligula eu eros. Curabitur euismod vel sem sed scelerisque. Aenean ut leo sed mi tincidunt tincidunt. Integer metus felis, egestas quis ex vel, fermentum euismod elit.\r\n\r\nPellentesque ultricies non orci at ornare. Integer placerat tincidunt nulla eu dictum. Etiam at auctor elit, eu blandit quam. Vestibulum magna risus, lacinia eu ornare ac, auctor congue lacus. Curabitur faucibus tempus libero, eu volutpat tellus viverra condimentum. Sed quis porttitor lectus, pharetra gravida augue. Cras augue tortor, tincidunt euismod ipsum quis, venenatis fermentum metus. Integer malesuada, mauris ac ultrices ornare, tellus sem volutpat odio, non ornare ante dui at turpis. Praesent ex diam, malesuada et imperdiet vitae, molestie vel felis. Cras cursus volutpat erat, ac aliquam augue feugiat et. Maecenas eu scelerisque elit. Nunc et neque ultricies, pulvinar ligula non, commodo neque. Donec ut magna mi. Quisque ac diam vitae odio consectetur vestibulum. Donec quis convallis urna, sit amet interdum velit. Mauris quis convallis felis, sed aliquet sem.', 'Cara Menggunakan Sendok Dan Garpu', 'Cara Menggunakan Sendok Dan Garpu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate', '2018-10-12 17:00:00', '2018-10-12 17:00:00'),
(7, 2, 0, 'Apau Itu Htaccess Di Website', 'bc_wp_logo-840x341.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate, tempus metus nec, tincidunt metus. Sed at sollicitudin ante. Curabitur at est leo. Donec at pharetra ante. Aliquam posuere mi eu nisi ultrices, vitae ullamcorper libero tristique. Maecenas non dolor ultrices quam ultrices convallis eget eu velit. Vestibulum auctor enim ac sodales rhoncus. Nam nec purus ut tortor gravida aliquam id ut dui. Donec varius ac est sit amet bibendum. Fusce pellentesque a quam sit amet pulvinar. Curabitur varius ex neque, eleifend fermentum metus cursus facilisis. Integer a felis in ante laoreet vehicula vitae in sem. Duis sagittis ac nulla sit amet aliquet. Etiam aliquam, nunc id fringilla ultricies, dolor sem tristique lorem, nec ultrices odio enim id augue. Aenean pharetra ut elit eget porta. Sed et hendrerit eros.\r\n\r\nVivamus malesuada arcu egestas lacus rhoncus fermentum. Proin nibh mi, rhoncus nec lectus eu, congue lacinia sem. Nunc sit amet consequat ex. Integer volutpat, augue non mollis interdum, enim libero tempor libero, non facilisis leo mi ut lorem. Sed et lorem finibus, egestas diam ut, venenatis sem. Praesent hendrerit lacus pharetra interdum lobortis. Ut porttitor id metus in blandit.\r\n\r\nNam nisl felis, suscipit eu tempor quis, sollicitudin in velit. Quisque vestibulum eros tincidunt tempus pellentesque. Donec vulputate lorem rutrum congue mollis. Mauris fringilla, elit ut pretium venenatis, dui augue consectetur risus, at venenatis ligula ante ut odio. Phasellus a risus scelerisque est rutrum viverra nec ut lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis consequat pellentesque sem ut malesuada. Maecenas nec facilisis eros.\r\n\r\nSed congue ipsum nec lacus eleifend sodales. Fusce commodo magna sit amet erat luctus, quis semper ante suscipit. Maecenas id lorem ac magna iaculis egestas at non ante. Suspendisse ut dapibus sapien. Nullam vulputate, leo eget pulvinar gravida, mauris magna finibus dolor, in aliquet justo ligula porttitor sapien. Nullam sem tellus, porttitor a justo eget, interdum lacinia sem. Morbi id ullamcorper diam, vitae varius orci. Curabitur placerat, sapien vitae volutpat vestibulum, velit tellus accumsan libero, semper venenatis augue ligula eu eros. Curabitur euismod vel sem sed scelerisque. Aenean ut leo sed mi tincidunt tincidunt. Integer metus felis, egestas quis ex vel, fermentum euismod elit.\r\n\r\nPellentesque ultricies non orci at ornare. Integer placerat tincidunt nulla eu dictum. Etiam at auctor elit, eu blandit quam. Vestibulum magna risus, lacinia eu ornare ac, auctor congue lacus. Curabitur faucibus tempus libero, eu volutpat tellus viverra condimentum. Sed quis porttitor lectus, pharetra gravida augue. Cras augue tortor, tincidunt euismod ipsum quis, venenatis fermentum metus. Integer malesuada, mauris ac ultrices ornare, tellus sem volutpat odio, non ornare ante dui at turpis. Praesent ex diam, malesuada et imperdiet vitae, molestie vel felis. Cras cursus volutpat erat, ac aliquam augue feugiat et. Maecenas eu scelerisque elit. Nunc et neque ultricies, pulvinar ligula non, commodo neque. Donec ut magna mi. Quisque ac diam vitae odio consectetur vestibulum. Donec quis convallis urna, sit amet interdum velit. Mauris quis convallis felis, sed aliquet sem.', 'Apau Itu Htaccess Di Website', 'Apau Itu Htaccess Di Website', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate', '2018-10-12 17:00:00', '2018-10-12 17:00:00'),
(8, 2, 0, 'Tips And Trick Pemprogramman Android ', 'Android-processes.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate, tempus metus nec, tincidunt metus. Sed at sollicitudin ante. Curabitur at est leo. Donec at pharetra ante. Aliquam posuere mi eu nisi ultrices, vitae ullamcorper libero tristique. Maecenas non dolor ultrices quam ultrices convallis eget eu velit. Vestibulum auctor enim ac sodales rhoncus. Nam nec purus ut tortor gravida aliquam id ut dui. Donec varius ac est sit amet bibendum. Fusce pellentesque a quam sit amet pulvinar. Curabitur varius ex neque, eleifend fermentum metus cursus facilisis. Integer a felis in ante laoreet vehicula vitae in sem. Duis sagittis ac nulla sit amet aliquet. Etiam aliquam, nunc id fringilla ultricies, dolor sem tristique lorem, nec ultrices odio enim id augue. Aenean pharetra ut elit eget porta. Sed et hendrerit eros.\r\n\r\nVivamus malesuada arcu egestas lacus rhoncus fermentum. Proin nibh mi, rhoncus nec lectus eu, congue lacinia sem. Nunc sit amet consequat ex. Integer volutpat, augue non mollis interdum, enim libero tempor libero, non facilisis leo mi ut lorem. Sed et lorem finibus, egestas diam ut, venenatis sem. Praesent hendrerit lacus pharetra interdum lobortis. Ut porttitor id metus in blandit.\r\n\r\nNam nisl felis, suscipit eu tempor quis, sollicitudin in velit. Quisque vestibulum eros tincidunt tempus pellentesque. Donec vulputate lorem rutrum congue mollis. Mauris fringilla, elit ut pretium venenatis, dui augue consectetur risus, at venenatis ligula ante ut odio. Phasellus a risus scelerisque est rutrum viverra nec ut lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis consequat pellentesque sem ut malesuada. Maecenas nec facilisis eros.\r\n\r\nSed congue ipsum nec lacus eleifend sodales. Fusce commodo magna sit amet erat luctus, quis semper ante suscipit. Maecenas id lorem ac magna iaculis egestas at non ante. Suspendisse ut dapibus sapien. Nullam vulputate, leo eget pulvinar gravida, mauris magna finibus dolor, in aliquet justo ligula porttitor sapien. Nullam sem tellus, porttitor a justo eget, interdum lacinia sem. Morbi id ullamcorper diam, vitae varius orci. Curabitur placerat, sapien vitae volutpat vestibulum, velit tellus accumsan libero, semper venenatis augue ligula eu eros. Curabitur euismod vel sem sed scelerisque. Aenean ut leo sed mi tincidunt tincidunt. Integer metus felis, egestas quis ex vel, fermentum euismod elit.\r\n\r\nPellentesque ultricies non orci at ornare. Integer placerat tincidunt nulla eu dictum. Etiam at auctor elit, eu blandit quam. Vestibulum magna risus, lacinia eu ornare ac, auctor congue lacus. Curabitur faucibus tempus libero, eu volutpat tellus viverra condimentum. Sed quis porttitor lectus, pharetra gravida augue. Cras augue tortor, tincidunt euismod ipsum quis, venenatis fermentum metus. Integer malesuada, mauris ac ultrices ornare, tellus sem volutpat odio, non ornare ante dui at turpis. Praesent ex diam, malesuada et imperdiet vitae, molestie vel felis. Cras cursus volutpat erat, ac aliquam augue feugiat et. Maecenas eu scelerisque elit. Nunc et neque ultricies, pulvinar ligula non, commodo neque. Donec ut magna mi. Quisque ac diam vitae odio consectetur vestibulum. Donec quis convallis urna, sit amet interdum velit. Mauris quis convallis felis, sed aliquet sem.', 'Tips And Trick Pemprogramman Android ', 'Tips And Trick Pemprogramman Android ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed quam vulputate', '2018-10-12 17:00:00', '2018-10-12 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `articles_tags`
--

CREATE TABLE `articles_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `articles_id` int(10) UNSIGNED NOT NULL,
  `tags_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles_tags`
--

INSERT INTO `articles_tags` (`id`, `articles_id`, `tags_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-12-21 17:00:00', '2018-12-21 17:00:00'),
(2, 1, 2, '2018-12-21 17:00:00', '2018-12-21 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `icon`) VALUES
(1, 'Web Programming', 'if_php-2048-black_167633.png'),
(2, 'Web Design', 'if_node_js_682682.png');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `articles_id` int(10) UNSIGNED NOT NULL,
  `reply` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2018_10_09_042546_create_categories_table', 1),
(4, '2018_10_09_043744_create_articles_table', 1),
(5, '2018_10_09_044756_create_comments_table', 1),
(6, '2018_10_09_045955_create_articletags_table', 1),
(7, '2018_10_09_090602_create_tags_table', 1),
(8, '2018_10_13_091450_create_relation_tags_articles_tags', 1);

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
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag_name`, `created_at`, `updated_at`) VALUES
(1, 'HTML', '2018-12-14 17:00:00', '2018-12-14 17:00:00'),
(2, 'PHP', '2018-12-14 17:00:00', '2018-12-14 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
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
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_categories_id_foreign` (`categories_id`);

--
-- Indexes for table `articles_tags`
--
ALTER TABLE `articles_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_tags_articles_id_foreign` (`articles_id`),
  ADD KEY `articles_tags_tags_id_foreign` (`tags_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_articles_id_foreign` (`articles_id`);

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
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `articles_tags`
--
ALTER TABLE `articles_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_categories_id_foreign` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `articles_tags`
--
ALTER TABLE `articles_tags`
  ADD CONSTRAINT `articles_tags_articles_id_foreign` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_tags_tags_id_foreign` FOREIGN KEY (`tags_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_articles_id_foreign` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
