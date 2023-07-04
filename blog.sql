-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jul 03, 2023 at 09:09 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `img` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `uid` int(20) NOT NULL,
  `cat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `img`, `date`, `uid`, `cat`) VALUES
(3, 'Serenity in Motion', 'This captivating artwork portrays a serene and ethereal scene of nature in motion. The canvas is adorned with vibrant hues of blues and greens, evoking a sense of tranquility and harmony. The foreground features a meandering river, shimmering under the soft glow of the setting sun. The water gently ripples, reflecting the surrounding landscape like a mirror. Along the riverbanks, tall and graceful willow trees sway gracefully in the gentle breeze, their long branches elegantly cascading downward.', 'https://images.pexels.com/photos/13357691/pexels-photo-13357691.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', '2023-07-05', 17, 'art'),
(10, 'Enchanted Forest', 'Step into a mystical realm with \"Enchanted Forest,\" a whimsical and enchanting artwork. Within a dense forest, sunlight filters through the lush canopy, casting a warm and magical glow. Tall, ancient trees adorned with vibrant foliage create a sense of grandeur and mystique. Delicate wildflowers carpet the forest floor, while elusive woodland creatures peek from behind tree trunks. A gentle stream trickles through the verdant landscape, adding a soothing soundtrack to this enchanted realm. The artwork captures the essence of nature\'s enchantment, inviting viewers to immerse themselves in its charm and find solace in its peaceful embrace.', 'https://images.pexels.com/photos/886051/pexels-photo-886051.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', '2023-07-12', 17, 'art'),
(11, 'Whispers of the Cosmos', 'This mesmerizing artwork transports viewers to the depths of the cosmos. Against a backdrop of inky blackness, vibrant bursts of nebulae and distant galaxies create a breathtaking display of color and light. Swirls of celestial gases intertwine, forming ethereal shapes that seem to whisper secrets of the universe. Stars of various sizes twinkle like distant lanterns, illuminating the cosmic canvas. The artwork invites contemplation of the vastness and wonder of the cosmos, evoking a sense of awe and curiosity.', 'https://images.pexels.com/photos/1257860/pexels-photo-1257860.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', '2023-06-06', 17, 'science'),
(12, 'Creamy Spinach and Artichoke Dip', 'Dive into a bowl of Creamy Spinach and Artichoke Dip, a luscious blend of melted cheeses, tender spinach, and marinated artichoke hearts. This crowd-pleasing appetizer is served warm, with a golden crust on top and a creamy, savory center. Scoop up the dip with crispy tortilla chips or toasted bread for a delightful burst of flavors.', 'https://images.pexels.com/photos/2776939/pexels-photo-2776939.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load', '2023-07-15', 17, 'food'),
(13, 'Tender Beef Stir-Fry', 'Experience the tantalizing flavors of Tender Beef Stir-Fry. Thinly sliced beef seared to perfection, combined with colorful crisp vegetables and tossed in a savory stir-fry sauce. This dish offers a delightful contrast of textures, from the tender beef to the crunchy vegetables, and a harmonious balance of sweet and savory flavors.', 'https://images.pexels.com/photos/1624487/pexels-photo-1624487.jpeg?auto=compress&cs=tinysrgb&w=600', '2023-07-14', 17, 'food'),
(15, 'Fresh Berry Parfait', 'Indulge in the refreshing delight of a Fresh Berry Parfait. Layers of juicy mixed berries, creamy Greek yogurt, and crunchy granola create a symphony of textures and flavors. Each spoonful is a burst of sweetness, tartness, and creaminess, making it a perfect treat for breakfast or dessert.', 'https://images.pexels.com/photos/1633578/pexels-photo-1633578.jpeg?auto=compress&cs=tinysrgb&w=600', '2023-07-15', 17, 'food'),
(16, 'The Journey Begins', 'Embark on an epic adventure in \"The Journey Begins.\" Follow a group of unlikely heroes as they set out on a quest to save their kingdom from an ancient evil. Filled with breathtaking landscapes, thrilling battles, and heartfelt moments, this fantasy tale will captivate audiences of all ages.', 'https://images.pexels.com/photos/14213114/pexels-photo-14213114.jpeg?auto=compress&cs=tinysrgb&w=600', '2023-07-21', 17, 'cinema'),
(17, 'In the Shadow of Love', 'In the Shadow of Love\" is a gripping romantic drama that explores the complexities of relationships and the choices we make in the name of love. Set against a backdrop of a bustling city, this emotional rollercoaster delves into themes of passion, heartbreak, and the power of forgiveness.', 'https://images.pexels.com/photos/2659629/pexels-photo-2659629.jpeg?auto=compress&cs=tinysrgb&w=600', '2023-07-20', 17, 'cinema'),
(18, 'The Mystery of Midnight Manor', ' Prepare to be enthralled by \"The Mystery of Midnight Manor,\" a suspenseful thriller that unravels the dark secrets of an eerie mansion. Follow the protagonist as they navigate through hidden passageways, solve cryptic puzzles, and uncover the truth behind a series of mysterious disappearances.', 'https://images.pexels.com/photos/2220315/pexels-photo-2220315.jpeg?auto=compress&cs=tinysrgb&w=600', '2023-07-19', 17, 'cinema'),
(19, 'Racing Against Time', 'Get ready for an adrenaline-pumping ride in \"Racing Against Time,\" a high-octane action film that follows a skilled racer who finds themselves entangled in a dangerous conspiracy. With heart-stopping car chases, intense showdowns, and unexpected twists, this movie will keep you on the edge of your seat.', 'https://images.pexels.com/photos/3131971/pexels-photo-3131971.jpeg?auto=compress&cs=tinysrgb&w=600', '2023-07-19', 17, 'cinema'),
(20, 'Exploring the Secrets of the Universe', 'oin a team of renowned scientists as they delve into the mysteries of the universe in \"Exploring the Secrets of the Universe.\" This captivating documentary takes you on a journey through the cosmos, unraveling the origins of galaxies, exploring black holes, and investigating the nature of dark matter. Through stunning visuals and cutting-edge research, this film showcases the remarkable discoveries that expand our understanding of the vast and awe-inspiring universe we inhabit.', 'https://images.pexels.com/photos/816608/pexels-photo-816608.jpeg?auto=compress&cs=tinysrgb&w=600', '2023-07-11', 17, 'science'),
(21, 'The Wonders of Genetic Engineering', 'Discover the groundbreaking field of genetic engineering in \"The Wonders of Genetic Engineering.\" This enlightening documentary explores the revolutionary advancements in manipulating the genetic code, from genetically modified organisms (GMOs) to gene editing techniques like CRISPR. Delve into the ethical dilemmas, potential benefits, and the future implications of this rapidly evolving field. Through interviews with scientists and captivating visual explanations, this film provides a comprehensive overview of the power and possibilities of genetic engineering.', 'https://images.pexels.com/photos/3992943/pexels-photo-3992943.jpeg?auto=compress&cs=tinysrgb&w=600', '2023-07-04', 17, 'science'),
(22, 'Nature\'s Symphony', 'Immerse yourself in the enchanting world of \"Nature\'s Symphony,\" a design concept that celebrates the harmonious relationship between nature and aesthetics. Inspired by the beauty and diversity of the natural world, this concept embraces organic shapes, earthy tones, and elements that evoke a sense of tranquility. The design showcases the delicate balance found in the patterns of leaves, the rhythm of waves, and the intricate details of flowers. Each element is thoughtfully incorporated to create a visual symphony that captures the essence of nature\'s wonders. \"Nature\'s Symphony\" invites you to experience the soothing and captivating beauty of the natural world through an artistic lens.', 'https://images.pexels.com/photos/826114/pexels-photo-826114.jpeg?auto=compress&cs=tinysrgb&w=600', '2023-07-28', 17, 'design'),
(23, 'Serenity in Symmetry', 'Immerse yourself in the harmonious world of \"Serenity in Symmetry,\" where design meets tranquility. This captivating concept embraces the beauty of symmetrical patterns and soothing colors. The interplay of balanced shapes and gentle curves creates a sense of calmness and serenity. Each element is meticulously arranged to evoke a feeling of equilibrium and peace. The design embraces simplicity, allowing the eye to effortlessly navigate the graceful composition. \"Serenity in Symmetry\" is a testament to the power of balanced aesthetics, where every line, every form, and every color come together to create a visually captivating and emotionally serene experience.', 'https://images.pexels.com/photos/3758105/pexels-photo-3758105.jpeg?auto=compress&cs=tinysrgb&w=600', '2023-07-30', 17, 'design'),
(24, 'Eclectic Fusion', 'Dive into the world of \"Eclectic Fusion,\" where diverse elements collide in a vibrant celebration of design. This dynamic concept embraces the spirit of fusion, merging contrasting styles, textures, and colors to create a captivating visual tapestry. Bold patterns intertwine with unexpected combinations, creating an eclectic harmony that pushes the boundaries of conventional design. The juxtaposition of vintage and contemporary, organic and geometric, creates a sense of intrigue and energy. \"Eclectic Fusion\" is a testament to the power of creative juxtaposition, where individual elements unite to form a visually stimulating and thought-provoking design experience.', 'https://images.pexels.com/photos/4792509/pexels-photo-4792509.jpeg?auto=compress&cs=tinysrgb&w=600', '2023-07-24', 17, 'design');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `img`) VALUES
(4, 'User1', 'User@gmail.com', '$2a$10$CUrZCTwkfZf3EGrD231NNOOBwaFL4VdcDca6Aof0zaRmHMRpFwpdy', ''),
(5, 'User', 'User@gmai.com', '$2a$10$GSFuyXV.iZbNSyTRhw8xXON3VmNbpSjFdHps7vtS/zEN6AY.HUSMm', ''),
(6, 'guest3', 'gues@gmail.com', '$2a$10$6j8JuunoWudO0dpeYtXeteeM2amlTWEYlYwre7Vq12R.cyJb1cI7a', ''),
(7, 'hehehe', 'Sauravp1236@gmail.com', '$2a$10$FknVwFholG4lSxrfokPR6uJ4zdtMOPh/.mf.TRUYmh1dUEXDf9NKK', ''),
(8, 'Chsaurav', 'sa@gmail.com', '$2a$10$UTEEsggJ6y0wLRc16vjCTugyXEmrgNYypJzkV74JLlIWamczahszy', ''),
(9, 'Abhisehk', 'Abhishek@gmail.com', '$2a$10$Ve0agVmMg9e8frGQr0WWlelPRcD2GmBMqrZXn6HGqH.bVJDGB5V46', ''),
(10, 'gues2', 'saurav@gmail.com', '$2a$10$DauOobnYORNvdF2wej1IDeBu.0fhJ8BcIN8qEm9hu3JwA98mU8rZy', ''),
(11, 'Helloworld', 'Hello@gmail.com', '$2a$10$w.4SP9FFEHTUycLDSSlqwOyg5DrP3n8YjZFKrTY43xkV.q59GwMlG', ''),
(12, 'hhhhhhhhhhhh', 'jjjjjjjjj@', '$2a$10$/6bEzSHMKxlPKfnymVrg.eAgKhBNt3MpRhHYx.Bf8OH61ztUY7rUS', ''),
(17, 'guest1', 'g@gmail.com', '$2a$10$.7oXnV9A7Gx4RqKQKxOfMeqJZBgSg6FN85FC1ZNIxpN3fH.l13DyC', 'https://images.pexels.com/users/avatars/2278756/vlada-karpovich-868.jpeg?auto=compress&fit=crop&h=130&w=130&dpr=1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreign_relation` (`uid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `foreign_relation` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
