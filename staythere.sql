-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2023 at 02:29 PM
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
-- Database: `staythere`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `message`, `date`) VALUES
(1, 'John Doe', 'first@gmail.com', '123456789', 'first post', '2023-09-22 14:31:12'),
(11, 'piyush', 'itsme@gmail.com', '1234567891', 'This is a sample message', '2023-10-25 10:27:50'),
(12, 'NAME', 'dlkajsd@gmail.com', '1245789458', 'th is  shfg gnrrt', '2023-11-04 16:31:15');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `slug` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `content`, `img_file`, `date`, `slug`) VALUES
(1, 'Atomic Habits: Tiny Changes, Remarkable Results', 'Master the Little Things, Achieve the Big Ones', 'Atomic Habits is a book by James Clear that introduces a framework for building better habits and breaking bad ones. Clear argues that small, incremental changes can lead to big results over time, and that the key to success is to make small changes that are easy to stick with.\r\n\r\nThe book is divided into three parts:\r\n\r\nPart 1: Fundamentals: This part introduces the basic concepts of habit formation, such as the habit loop, the four laws of behavior change, and the identity equation.\r\nPart 2: Habits of Highly Effective People: This part focuses on specific habits that can help you achieve your goals, such as the two-minute rule, the habit stacking technique, and the temptation bundling technique.\r\nPart 3: Advanced Tactics: This part discusses more advanced techniques for habit formation, such as using habit scorecards and habit contracts.\r\nHere is a summary of some of the key takeaways from the book:\r\n\r\nHabits are the compound interest of self-improvement: Small, incremental changes can lead to big results over time.\r\nThe key to success is to make small changes that are easy to stick with: Don\'t try to change everything at once. Start by making one small change, and then build on that success.\r\nYour identity shapes your habits: The habits you form are shaped by your identity, which is your belief about who you are. To change your habits, you need to change your identity.', 'post-bg.jpg', '2023-11-04 17:58:52', 'first-post'),
(2, 'Rich Dad Poor Dad', 'Your Path to Financial Independence', 'The story begins with the author as a young boy, observing the contrasting financial mindsets and behaviors of his two dads. His poor dad, who held a high position in education, emphasized the importance of academic success, job security, and living within one\'s means. On the other hand, his rich dad, a successful entrepreneur, believed in building assets, investing wisely, and acquiring financial knowledge.\r\n\r\nThroughout the book, Kiyosaki shares anecdotes and conversations that he had with his rich dad.', 'post-bg.jpg', '2023-11-04 18:19:17', 'second-post'),
(3, 'Think Like a Monk', 'Ancient Wisdom for Modern Life', 'Think Like a Monk includes a combination of ancient wisdom and Jay Shetty’s personal experiences. The aim of Think Like a Monk is to help individuals apply a monk mindset to their lives. Think Like a Monk shows you how to clear the roadblocks to your potential by overcoming negative thoughts, accessing stillness, and creating true purpose. It can be challenging to apply the lessons of monks to busy lives. However, Shetty provides advice and exercises to reduce stress, improve self-discipline and focus, and maintain relationships in the modern world. ', 'post-bg.jpg', '2023-09-26 21:21:00', 'third-slug'),
(4, 'The Psychology Of Money', 'The Psychology Of Money', 'A fundamental point of The Philosophy of Money is that money brings about personal freedom. The effect of freedom can be appreciated by considering the evolution of economic obligations. When someone is a slave, their whole person is subject to the master. The peasant has more freedom, but if they are to provide the lord with payments in kind, such as wheat or cattle, they must produce exactly the item required, or barter it at a great loss or inconvenience. But when the obligation takes a monetary form, the peasant is free as to whether to grow wheat, or keep cattle, or engage in other activities, as long as they pay the required tax.', 'post-bg.jpg', '2023-09-26 21:22:25', 'fourth-slug'),
(5, 'THE SILENT PATIENT', 'A Blog for Fans of Psychological Thrillers and Mystery Novels', 'In The Silent Patient, Alicia Berenson is a well-known painter who murdered her husband six years ago and hasn\'t spoken a word since. He was found bound to a chair with gunshot wounds to his face, and she was convicted soon thereafter.\r\n\r\nTheo Faber is a psychotherapist who hopes to treat Alicia and uncover the mystery behind her motives for killing her husband. As they sit in silence, the main clue he has is a painting she completed. She titled it Alcestis, named after a heroine in Greek mythology who sacrifices her life to save her husband.', 'post-bg.jpg', '2023-09-26 21:24:42', 'fifth-slug'),
(6, 'Beloved', 'A Blog of Love, Loss, and Memory', 'Beloved is a novel about the legacy of slavery, motherhood, and memory. It is set in the post-Civil War era and tells the story of Sethe, a former slave who is haunted by the ghost of her dead daughter, Beloved.\r\n\r\nBeloved is a powerful and moving story that has been praised for its insights into the African American experience and its lyrical prose. It is a complex and challenging novel, but it is also a deeply rewarding one.', 'post-bg.jpg', '2023-09-26 21:43:01', 'sixth-slug'),
(7, 'Man\'s Search for Meaning', 'Finding meaning in the darkest of times', 'Man\'s Search for Meaning is a memoir by Viktor Frankl, a Jewish psychiatrist who survived the Holocaust. Frankl\'s book explores the human capacity to find meaning and purpose in life, even in the most difficult of circumstances.\r\nFrankl argues that the search for meaning is the primary motivational force in human life. He writes that even in the concentration camps, where he was deprived of everything else, he was able to find meaning in his relationships with other prisoners, in his work as a therapist, and in his own inner strength.\r\n\r\nFrankl\'s book is a powerful testament to the human spirit and its resilience in the face of adversity. It is a message of hope and inspiration for anyone who has ever faced difficult times in their life.\r\nIn short: Man\'s Search for Meaning is a book about finding meaning and purpose in life, even in the darkest of times.', 'image7.png', '2023-11-04 18:27:14', 'seventh-slug');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
