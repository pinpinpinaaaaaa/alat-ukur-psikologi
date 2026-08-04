-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2025 at 09:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alat_ukur`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` varchar(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_id` varchar(10) NOT NULL,
  `question_text` text NOT NULL,
  `min_label` varchar(100) DEFAULT 'Sangat Tidak Sesuai',
  `max_label` varchar(100) DEFAULT 'Sangat Sesuai'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_id`, `question_text`, `min_label`, `max_label`) VALUES
('Q001', 'Saya sering membuat komentar atau unggahan yang merendahkan kelompok atau individu lain.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q002', 'Saya tidak menggunakan humor sarkastik untuk menanggapi komentar orang lain.   ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q003', 'Saya tidak pernah membuat komentar yang merendahkan kelompok atau individu lain.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q004', 'Saya tidak pernah mencoba memprovokasi orang lain melalui komentar saya.   ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q005', 'Ketika mengkritik seseorang, saya memilih kata-kata yang tidak menyakiti perasaan orang tersebut.  ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q006', 'Saya sering menulis komentar yang memprovokasi atau membuat orang lain merasa tersinggung.  ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q007', 'Saya jarang menggunakan emoji marah atau menghina dalam reaksi di media sosial.  ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q008', 'Saya tidak ragu menggunakan bahasa yang tajam saat mengkritik orang lain.   ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q009', 'Saat merasa terganggu, saya menyinggung aspek pribadi pengguna lain dalam balasan komentar.  ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q010', 'Saya tidak pernah memberikan ancaman melalui Chat atau Direct Message.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q011', 'Saya berusaha tetap tenang dan tidak mengunggah hal-hal yang penuh emosi.   ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q012', 'Berusaha untuk menyortir re-posting material yang tidak menyuduti individu atau oknum tertentu.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q013', 'Menggunggah postingan dengan memikirkan caption menggunakan bahasa yang baik dan tidak menyinggung.  ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q014', 'Jika tidak suka pada sesuatu, saya menyampaikannya tanpa bahasa yang vulgar.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q015', 'Menggunggah postingan dengan memberikan caption menggunakan sebutan binatang.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q016', 'Saya sering mengungkapkan ketidaksukaan saya dengan bahasa vulgar di media sosial.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q017', 'Saya kadang menuduh pengguna lain secara langsung, meskipun tidak memiliki bukti.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q018', 'Saya tidak pernah melabeli orang lain dengan sebutan negatif.   ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q019', 'Saya tidak pernah menuduh pengguna lain tanpa bukti yang jelas.  ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q020', 'Saya kerap mengancam pengguna lain untuk “blokir” atau “hapus pertemanan” jika tidak sependapat.  ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q021', 'Saya merasa tidak masalah menyebut seseorang dengan kata-kata negatif seperti \"bodoh\" atau \"tidak berguna\".', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q022', 'Saya memilih untuk tidak membicarakan kekurangan orang lain.  ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q023', 'Saya tidak pernah mengancam orang lain dengan “blokir” atau “hapus pertemanan”.  ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q024', 'Saya tidak segan menyebutkan kekurangan seseorang dalam komentar atau unggahan.   ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q025', 'Saya tidak pernah menutup akses komentar dan pesan dari pengguna tertentu yang tidak saya suka.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q026', 'Saya sering menghapus komentar orang lain tanpa pemberitahuan. ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q027', 'Saya selalu berusaha konsisten merespons pesan atau komentar yang masuk.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q028', 'Saya pernah menutup akses komentar dan pesan dari pengguna tertentu yang tidak saya suka.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q029', 'Saya biasanya segera merespons setelah membaca pesan. ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q030', 'Saya membiarkan orang lain berkomentar tentang saya walaupun berbeda pendapat dengan saya. ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q031', 'Saya sengaja membiarkan pesan tidak terbalas dalam waktu lama. ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q032', 'Saya sering tidak memberikan respon meskipun saya ditandai (tag) dalam komentar. ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q033', 'Saya merespons pesan dalam waktu singkat atau memberikan alasan jika terlambat membalas. ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q034', 'Saya selalu merespons ketika seseorang menandai saya dalam komentar. ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q035', 'Saya sering menghindari percakapan dengan orang tertentu atau kelompok dalam kolom komentar. ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q036', 'Saya menghargai permintaan maaf atau penjelasan dengan meresponsnya. ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q037', 'Saya berusaha menjaga komunikasi dengan baik meskipun terjadi perdebatan. ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q038', 'Saya tidak menghindari percakapan dengan siapapun di kolom komentar. ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q039', 'Saya memberikan tanggapan ketika dipanggil dalam grup.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q040', 'Saya selalu berusaha ikut serta dalam diskusi yang penting. ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q041', 'Saya sering memutuskan komunikasi setelah berdebat dengan seseorang. ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q042', 'Saya sering mengabaikan permintaan bantuan atau pertanyaan dalam grup. ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q043', 'Saya sering tidak menanggapi walaupun disebutkan secara langsung (di tag) atau di panggil di grup. ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q044', 'Saya sering menolak berpartisipasi dalam diskusi, bahkan yang penting sekalipun. ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q045', 'Saya sering tidak memberikan umpan balik walaupun diminta.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q046', 'Saya merespons permintaan bantuan atau pertanyaan dalam grup dengan sigap. ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q047', 'Saya sering tidak memberikan reaksi pada komentar yang mendukung. ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q048', 'Ketika diminta saya selalu berusaha memberi umpan balik atau dukungan. ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q049', 'Saya memberikan apresiasi pada komentar yang mendukung dengan memberikan like atau reaksi. ', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q050', 'Tidak pernah membuat fake account untuk mengunggah ujaran kebencian kepada seseorang atau kelompok.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q051', 'Saya tidak pernah memanipulasi informasi untuk menjatuhkan orang lain.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q052', 'Saya tidak pernah menyebarkan tangkapan layar percakapan antara kelompok atau 2 individu yang saya kenal untuk jadi bahan gunjingan di sosial media.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q053', 'Saya sering menyebarkan tangkapan layar percakapan  antara kelompok atau 2 individu yang saya kenal untuk menjadi bahan gunjingan di sosial media.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q054', 'Saya tidak pernah re-post unggahan yang tidak faktual.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q055', 'Saya tidak pernah membuat survei atau poll yang bertujuan mempermalukan orang lain.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q056', 'Saya sering membagikan informasi provokatif tentang seseorang di media sosial.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q057', 'Saya sering membuat survei dengan tujuan mempermalukan seseorang.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q058', 'Saya sering re-post unggahan yang sedang tren tanpa memeriksa fakta datanya.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q059', 'Saya tidak pernah membuat klaim negatif tentang orang lain tanpa bukti.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q060', 'Saya memastikan bahwa informasi yang saya bagikan tidak memprovokasi orang lain', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q061', 'Saya sering membuat klaim negatif tentang seseorang tanpa dasar bukti.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q062', 'Saya kadang membuat komentar yang memprovokasi agar orang lain bertikai.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q063', 'Saya menghindari komentar yang bisa memicu perpecahan di antara pengguna.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q064', 'Saya pernah mengutip seseorang secara keliru untuk mengadu domba orang tersebut dengan orang lain melalui sosial media.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q065', 'Tidak pernah mengutip seseorang tanpa sengaja memperburuk intonasi perkataanya untuk mengadu domba dengan orang lain melalui sosial media.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q066', 'Saya sering mengabaikan unggahan yang di bagikan oleh kolega atau teman melalui chat pribadi', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q067', 'Saya memberikan apresiasi pada pencapaian teman saya di media sosial.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q068', 'Saya selalu memberikan tanggapan saya apabila kolega atau teman membagikan unggahan melalui chat pribadi', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q069', 'Saya ikut berpartisipasi dalam polling atau diskusi online yang dianggap penting.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q070', 'Saya sering tidak memberikan apresiasi pada pencapaian yang dicapai oleh teman saya.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q071', 'Saya suka memberikan komentar dukungan pada unggahan positif teman.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q072', 'Saya sering mengabaikan polling atau diskusi yang dibagikan oleh teman.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q073', 'Saya memberikan “like” atau reaksi pada unggahan yang mendukung komunitas.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q074', 'Saya jarang memberikan komentar dukungan pada postingan positif orang lain.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q075', 'Saya jarang memberikan reaksi pada unggahan komunitas yang membutuhkan dukungan.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q076', 'Saya jarang menyebarkan unggahan yang memerlukan dukungan meskipun itu penting.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q077', 'Saya suka menyebarkan pesan atau unggahan yang membutuhkan dukungan.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q078', 'Saya merespons ajakan kolaborasi atau kerja sama yang diajukan kepada saya.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q079', 'Saya memberikan testimoni atau dukungan pada kolaborator saya.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q080', 'Saya sering mengabaikan orang yang memberi saya ucapan selamat atau dukukungan.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q081', 'Saya sering tidak merespons ajakan kolaborasi dari teman atau kolega.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q082', 'Saya berusaha hadir dan terlibat dalam diskusi atau event virtual yang penting.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q083', 'Saya tidak memberikan testimoni atau dukungan pada kolaborator saya.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q084', 'Saya re-posting dukungan pada unggahan teman atau kenalan secara terbuka.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q085', 'Saya jarang berpartisipasi dalam kegiatan online yang mendukung komunitas saya.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q086', 'Saya berusaha memberikan penilaian atau komentar dalam diskusi proyek yang saya ikuti.', 'Sangat Tidak Sesuai', 'Sangat Sesuai'),
('Q087', 'Saya sering sengaja tidak hadiran di diskusi atau event virtual meskipun penting dan diundang.', 'Sangat Tidak Sesuai', 'Sangat Sesuai');

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `response_id` varchar(10) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `question_id` varchar(10) NOT NULL,
  `answer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`response_id`, `user_id`, `question_id`, `answer`) VALUES
('R000001', 'U005', 'Q001', 1),
('R000002', 'U005', 'Q002', 2),
('R000003', 'U005', 'Q003', 2),
('R000004', 'U005', 'Q004', 2),
('R000005', 'U005', 'Q005', 2),
('R000006', 'U005', 'Q006', 2),
('R000007', 'U005', 'Q007', 2),
('R000008', 'U005', 'Q008', 2),
('R000009', 'U005', 'Q009', 2),
('R000010', 'U005', 'Q010', 2),
('R000011', 'U005', 'Q011', 2),
('R000012', 'U005', 'Q012', 2),
('R000013', 'U005', 'Q013', 2),
('R000014', 'U005', 'Q014', 2),
('R000015', 'U005', 'Q015', 2),
('R000016', 'U005', 'Q016', 2),
('R000017', 'U005', 'Q017', 2),
('R000018', 'U005', 'Q018', 2),
('R000019', 'U005', 'Q019', 2),
('R000020', 'U005', 'Q020', 2),
('R000021', 'U005', 'Q021', 2),
('R000022', 'U005', 'Q022', 2),
('R000023', 'U005', 'Q023', 2),
('R000024', 'U005', 'Q024', 2),
('R000025', 'U005', 'Q025', 2),
('R000026', 'U005', 'Q026', 2),
('R000027', 'U005', 'Q027', 2),
('R000028', 'U005', 'Q028', 2),
('R000029', 'U005', 'Q029', 2),
('R000030', 'U005', 'Q030', 2),
('R000031', 'U005', 'Q031', 2),
('R000032', 'U005', 'Q032', 2),
('R000033', 'U005', 'Q033', 2),
('R000034', 'U005', 'Q034', 2),
('R000035', 'U005', 'Q035', 2),
('R000036', 'U005', 'Q036', 2),
('R000037', 'U005', 'Q037', 2),
('R000038', 'U005', 'Q038', 2),
('R000039', 'U005', 'Q039', 2),
('R000040', 'U005', 'Q040', 2),
('R000041', 'U005', 'Q041', 2),
('R000042', 'U005', 'Q042', 2),
('R000043', 'U005', 'Q043', 2),
('R000044', 'U005', 'Q044', 2),
('R000045', 'U005', 'Q045', 2),
('R000046', 'U005', 'Q046', 2),
('R000047', 'U005', 'Q047', 2),
('R000048', 'U005', 'Q048', 2),
('R000049', 'U005', 'Q049', 2),
('R000050', 'U005', 'Q050', 2),
('R000051', 'U005', 'Q051', 2),
('R000052', 'U005', 'Q052', 2),
('R000053', 'U005', 'Q053', 2),
('R000054', 'U005', 'Q054', 2),
('R000055', 'U005', 'Q055', 2),
('R000056', 'U005', 'Q056', 2),
('R000057', 'U005', 'Q057', 2),
('R000058', 'U005', 'Q058', 2),
('R000059', 'U005', 'Q059', 2),
('R000060', 'U005', 'Q060', 2),
('R000061', 'U005', 'Q061', 2),
('R000062', 'U005', 'Q062', 2),
('R000063', 'U005', 'Q063', 2),
('R000064', 'U005', 'Q064', 2),
('R000065', 'U005', 'Q065', 2),
('R000066', 'U005', 'Q066', 2),
('R000067', 'U005', 'Q067', 2),
('R000068', 'U005', 'Q068', 2),
('R000069', 'U005', 'Q069', 2),
('R000070', 'U005', 'Q070', 2),
('R000071', 'U005', 'Q071', 2),
('R000072', 'U005', 'Q072', 2),
('R000073', 'U005', 'Q073', 2),
('R000074', 'U005', 'Q074', 2),
('R000075', 'U005', 'Q075', 2),
('R000076', 'U005', 'Q076', 2),
('R000077', 'U005', 'Q077', 2),
('R000078', 'U005', 'Q078', 2),
('R000079', 'U005', 'Q079', 2),
('R000080', 'U005', 'Q080', 2),
('R000081', 'U005', 'Q081', 2),
('R000082', 'U005', 'Q082', 2),
('R000083', 'U005', 'Q083', 2),
('R000084', 'U005', 'Q084', 2),
('R000085', 'U005', 'Q085', 2),
('R000086', 'U005', 'Q086', 2),
('R000087', 'U005', 'Q087', 2),
('R000088', 'U006', 'Q001', 1),
('R000089', 'U006', 'Q002', 2),
('R000090', 'U006', 'Q003', 2),
('R000091', 'U006', 'Q004', 2),
('R000092', 'U006', 'Q005', 2),
('R000093', 'U006', 'Q006', 2),
('R000094', 'U006', 'Q007', 2),
('R000095', 'U006', 'Q008', 2),
('R000096', 'U006', 'Q009', 2),
('R000097', 'U006', 'Q010', 2),
('R000098', 'U006', 'Q011', 2),
('R000099', 'U006', 'Q012', 2),
('R000100', 'U006', 'Q013', 2),
('R000101', 'U006', 'Q014', 2),
('R000102', 'U006', 'Q015', 2),
('R000103', 'U006', 'Q016', 2),
('R000104', 'U006', 'Q017', 2),
('R000105', 'U006', 'Q018', 2),
('R000106', 'U006', 'Q019', 2),
('R000107', 'U006', 'Q020', 2),
('R000108', 'U006', 'Q021', 2),
('R000109', 'U006', 'Q022', 2),
('R000110', 'U006', 'Q023', 2),
('R000111', 'U006', 'Q024', 2),
('R000112', 'U006', 'Q025', 2),
('R000113', 'U006', 'Q026', 2),
('R000114', 'U006', 'Q027', 2),
('R000115', 'U006', 'Q028', 2),
('R000116', 'U006', 'Q029', 2),
('R000117', 'U006', 'Q030', 2),
('R000118', 'U006', 'Q031', 2),
('R000119', 'U006', 'Q032', 2),
('R000120', 'U006', 'Q033', 2),
('R000121', 'U006', 'Q034', 2),
('R000122', 'U006', 'Q035', 2),
('R000123', 'U006', 'Q036', 2),
('R000124', 'U006', 'Q037', 2),
('R000125', 'U006', 'Q038', 2),
('R000126', 'U006', 'Q039', 2),
('R000127', 'U006', 'Q040', 2),
('R000128', 'U006', 'Q041', 2),
('R000129', 'U006', 'Q042', 2),
('R000130', 'U006', 'Q043', 2),
('R000131', 'U006', 'Q044', 2),
('R000132', 'U006', 'Q045', 2),
('R000133', 'U006', 'Q046', 2),
('R000134', 'U006', 'Q047', 2),
('R000135', 'U006', 'Q048', 2),
('R000136', 'U006', 'Q049', 2),
('R000137', 'U006', 'Q050', 2),
('R000138', 'U006', 'Q051', 2),
('R000139', 'U006', 'Q052', 2),
('R000140', 'U006', 'Q053', 2),
('R000141', 'U006', 'Q054', 2),
('R000142', 'U006', 'Q055', 2),
('R000143', 'U006', 'Q056', 2),
('R000144', 'U006', 'Q057', 2),
('R000145', 'U006', 'Q058', 2),
('R000146', 'U006', 'Q059', 2),
('R000147', 'U006', 'Q060', 2),
('R000148', 'U006', 'Q061', 2),
('R000149', 'U006', 'Q062', 2),
('R000150', 'U006', 'Q063', 2),
('R000151', 'U006', 'Q064', 2),
('R000152', 'U006', 'Q065', 2),
('R000153', 'U006', 'Q066', 2),
('R000154', 'U006', 'Q067', 2),
('R000155', 'U006', 'Q068', 2),
('R000156', 'U006', 'Q069', 2),
('R000157', 'U006', 'Q070', 2),
('R000158', 'U006', 'Q071', 2),
('R000159', 'U006', 'Q072', 2),
('R000160', 'U006', 'Q073', 2),
('R000161', 'U006', 'Q074', 2),
('R000162', 'U006', 'Q075', 2),
('R000163', 'U006', 'Q076', 2),
('R000164', 'U006', 'Q077', 2),
('R000165', 'U006', 'Q078', 2),
('R000166', 'U006', 'Q079', 2),
('R000167', 'U006', 'Q080', 2),
('R000168', 'U006', 'Q081', 2),
('R000169', 'U006', 'Q082', 2),
('R000170', 'U006', 'Q083', 2),
('R000171', 'U006', 'Q084', 2),
('R000172', 'U006', 'Q085', 2),
('R000173', 'U006', 'Q086', 2),
('R000174', 'U006', 'Q087', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `age` int(11) NOT NULL,
  `gender` enum('L','P') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `age`, `gender`) VALUES
('U001', 'lala', 10, 'P'),
('U002', 'lala', 10, 'P'),
('U003', 'lala', 10, 'P'),
('U004', 'as', 12, 'P'),
('U005', 'as', 12, 'P'),
('U006', 'as', 12, 'P');

-- --------------------------------------------------------

--
-- Table structure for table `user_scores`
--

CREATE TABLE `user_scores` (
  `id_user_scores` varchar(10) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `total_score` int(11) NOT NULL,
  `category` enum('Rendah','Sedang','Tinggi') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_scores`
--

INSERT INTO `user_scores` (`id_user_scores`, `user_id`, `total_score`, `category`, `created_at`) VALUES
('S000004', 'U004', 0, 'Rendah', '2025-02-02 07:44:03'),
('S000005', 'U006', 173, 'Sedang', '2025-02-02 08:28:16'),
('S001', 'U001', 0, 'Rendah', '2025-02-02 05:41:20'),
('S002', 'U002', 0, 'Rendah', '2025-02-02 05:43:12'),
('S003', 'U003', 0, 'Rendah', '2025-02-02 05:43:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`response_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_scores`
--
ALTER TABLE `user_scores`
  ADD PRIMARY KEY (`id_user_scores`),
  ADD KEY `user_id` (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `responses`
--
ALTER TABLE `responses`
  ADD CONSTRAINT `responses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `responses_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`question_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_scores`
--
ALTER TABLE `user_scores`
  ADD CONSTRAINT `user_scores_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
