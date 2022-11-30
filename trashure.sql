-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 28, 2022 at 05:01 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trashure`
--

-- --------------------------------------------------------

--
-- Table structure for table `anorganiks`
--

CREATE TABLE `anorganiks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `video` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anorganiks`
--

INSERT INTO `anorganiks` (`id`, `name`, `description`, `image`, `video`) VALUES
(3, ' Botol Bekas', 'Cara membuat kerajinan dari botol bekas tidaklah sulit. Kamu cukup menyediakan botol plastik, lem, hingga gunting sebagai peralatannya. Apalagi botol plastik tentunya mudah ditemukan di rumah, bahkan tidak digunakan lagi dan menjadi tumpukan sampah saja.', 'https://photos.app.goo.gl/CZfkasbNsjx9Xits9', 'https://youtu.be/Ab9b9XIhVBk'),
(5, 'Kardus bekas', 'kamu dapat memanfaatkan barang bekas seperti kardus untuk menjadi barang yang berguna dan bermanfaat. dari Kerajinan tersebut juga kita dapat menghasilkan rupiah', 'https://photos.app.goo.gl/Hy9BA4zaaCvuvHcQ7', 'https://youtu.be/68pKWosbjgk'),
(6, 'limbah pecahan kaca ', 'limbah kepingan kaca dapat di buat menjadi hiasan yang anti mainstream. Anda bisa untung banyak dengan mengkreasikan limbah tidak terpakai ini menjadi karya seni bernilai. Caranya juga relatif mudah.', 'https://photos.app.goo.gl/Z3NoHSLagiNXn5ok6', 'https://youtu.be/WkCJbC03qjo'),
(7, 'koran bekas', 'Tumpukan koran bekas yang tidak terpakai di rumah sebaiknya jangan dibuang dulu. Dari limbah ini, masih bisa dimanfaatkan menjadi kreasi kerajinan tangan. Bentuknya yang unik dijamin bisa membuat hunian Anda lebih estetik.', 'https://photos.app.goo.gl/qeZtmYxs3mTJmoWm8', 'https://youtu.be/o51CqWrvuKs'),
(8, 'limbah plastik', 'Akhir-akhir ini berita mengenai limbah plastik semakin mengkhawatirkan. Pasalnya limbah plastik ini bukan hanya ada di daratan saja, melainkan di lautan. Namun tak semua yang berbahan plastik harus berakhir menjadi limbah. Pasalnya ada pula yang menggunakan plastik sebagai bahan kerajinan dan juga meningkatkan kreativitas.', 'https://photos.app.goo.gl/cWWhHm99QSYqgxaYA', 'https://youtu.be/S7T8FGG0AO4');

-- --------------------------------------------------------

--
-- Table structure for table `organiks`
--

CREATE TABLE `organiks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `video` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organiks`
--

INSERT INTO `organiks` (`id`, `name`, `description`, `image`, `video`) VALUES
(3, 'Pupuk organik', 'Pupuk organik adalah pupuk yang tersusun dari materi makhluk hidup, seperti pelapukan sisa -sisa tanaman, hewan, dan manusia. Pupuk organik dapat berbentuk padat atau cair yang digunakan untuk memperbaiki sifat fisik, kimia, dan biologi tanah. Pupuk organik mengandung banyak bahan organik daripada kadar haranya.', 'https://photos.app.goo.gl/8nS9eDb5igXted5b9', 'https://youtu.be/8jC8krdIjus'),
(6, 'energi dari limbah organik', 'energi ini berasal dari berbagai macam limbah organik seperti sampah biomassa, kotoran manusia dan kotoran hewan', 'https://photos.app.goo.gl/dWZ4YgLGKD5yS6z29', 'https://youtu.be/O7hWVck3mqM'),
(7, 'Pupuk Organik Cair ', 'pupuk organik cair (POC) adalah pupuk yang tersedia dalam bentuk cair, POC dapat diartikan sebagai pupuk yang dibuat secara alami melalui proses fementasi sehingga menghasilkan larutan hasil pembusukan dari sisa tanaman, maupun kotoran hewan atau manusia.', 'https://photos.app.goo.gl/Pw5yLfSpGqamL1jT6', 'https://youtu.be/Cm8nn1mnX_Q'),
(8, 'Pakan ternak yang berkualitas', ' Agar hewan ternak tumbuh sehat dan panjang umur, makanan yang diberikan pun harus berkualitas tentunya.Dewasa kini, banyak jenis pakan yang dijual di luar sana.Variasinya beragam, tergantung jenis hewan dan kebutuhan nutrisi yang dibutuhkan untuk ternak.', 'https://photos.app.goo.gl/pSCo97bZF14iZhvt8', 'https://youtu.be/y5elBYh-1oI'),
(9, 'Bahan pembersih lantai atau desinfektan dari bahan organik', 'Tahukah kamu? kita dapat membuat bahan pembersih lantai atau desinfektan yang aman dan ramah lingkungan.', 'https://photos.app.goo.gl/KQJ1Hv7KGX3MA5nB7', 'https://youtu.be/UCCOoIW-E4M');

-- --------------------------------------------------------

--
-- Table structure for table `tips`
--

CREATE TABLE `tips` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc_detail` text NOT NULL,
  `image_detail` varchar(255) DEFAULT NULL,
  `organik_id` int(11) DEFAULT NULL,
  `anorganik_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tips`
--

INSERT INTO `tips` (`id`, `title`, `desc_detail`, `image_detail`, `organik_id`, `anorganik_id`) VALUES
(16, 'Biogas sederhana dapat digunakan untuk kebutuhan rumah tangga sehari-hari', 'Energi biogas adalah energi yang dihasilkan dari limbah organik seperti kotoran ternak, atau limbah dapur seperti sayuran yang sudah digunakan. Pada umumnya, semua jenis bahan organik yang diproses menghasilkan biogas, tetapi hanya bahan organik yang padat dan cair homogen, seperti kotoran urin hewan ternak yang cocok untuk sistem biogas sederhana.         Diperkirakan ada tiga jenis bahan baku yang prospektif untuk dikembangkan sebagai bahan baku biogas di Indonesia, antara lain kotoran hewan dan manusia, sampah organik, dan limbah cair. Berikut cara sederhana pembuatan biogas rumah tangga:Buat campuran sampah organik dan air dengan perbandingan 1 : 1 (bahan biogas)Masukkan bahan biogas ke dalam reaktor melalui tempat pengisian sebanyak 2.000 liter, selanjutnya akan berlangsung proses produksi biogas di dalam reaktor.Setelah kurang lebih 10 hari reaktor biogas dan penampung biogas akan terlihat mengembung dan mengeras karena adanya biogas yang dihasilkan. Biogas sudah dapat digunakan sebagai bahan bakar dan kompor biogas dapat dioperasikan.Sesekali reaktor biogas digoyangkan supaya terjadi penguraian yang sempurna dan gas yang terbentuk di bagian bawah naik ke atas, lakukan juga pada setiap pengisian reaktor.Pengisian bahan biogas selanjutnya dapat dilakukan setiap hari, yaitu sebanyak + 40 liter setiap pagi dan sore hari. Sisa pengolahan bahan biogas berupa sludge (lumpur) secara otomatis akan keluar dari reaktor setiap kali dilakukan pengisian bahan biogas. Sisa hasil pengolahan bahan biogas tersebut dapat digunakan langsung sebagai pupuk organik, baik dalam keadaan basah maupun kering.', 'https://photos.app.goo.gl/Bbtixf5sbJxYFkA68', 6, NULL),
(17, 'Pupuk organik cair bisa berfungsi sebagai perangsang tumbuh', 'Bahan dan Alat Pembuatan POC, yaitu Drum 200 liter beserta tutupnya. Stop kran diameter 1 – 1,5 inchi. Sock berderat pipa pralon PVC, ukurannya disesuaikan dengan stop kran. Sealent, seal karet ban dalam. Plastik yang telah dilubangi sesuai dengan ukuran drum. Sampah organik seperti sisa sayur dan buah. EM-4. BACA JUGA Penjelasan Tentang Pupuk Organik yang Penting untuk Dipahami Cara Membuat POC Pasang pelat plastik yang telah dilubangi ke dalam drum. Pasang penahan dibawah pelat plastik untuk menahan sampah yang akan dijadikan pupuk organik cair. Buat lubang di samping drum untuk tempat stop kran. Pasang stop kran di lubang tersebut lalu lapisi dengan karet seal pada bagian luar dan dalam. Pada bagian dalam pasang sock pipa plastik dengan stop kran. Lalu kencangkan agar stop kran tidak bocor. Setelah alat pembuatan selesai, lanjutkan dengan memasukan seluruh sampah organik yang sudah dicincang ke dalam wadah tersebut. Masukkan juga EM-4 sebagai starter. Tutup drum dengan rapat. Setelah fermentasi selesai, tampung pupuk cair dalam wadah lalu lakukan aerasi agar aroma fementasi hilang. Terakhir, kemas POC dalam wadah tertutup lalu aplikasikan ke tanaman. Perlu diketahui bahwa proses pembuatan POC membutuhkan waktu kurang lebih 2 minggu. Anda bisa melakukan pengecekan secara berkala. Jika aroma fermentasi sudah harus atau menyerupai aroma tape, maka POC telah selesai dibuat dan proses fermentasi bisa dihentikan.', 'https://photos.app.goo.gl/RCtPEMKQyN5dKt5S6', 7, NULL),
(18, 'Cara membuat kompos sangat mudah dan kandungan haranya juga cukup lengkap sehingga sangat berguna untuk budidaya tanaman.', 'berikut ini langkah-langkah membuat kompos dari sampah organik. Siapkan bahan kompos seperti sampah dari daun-daunan, kotoran ayam, arang sekam, EM4, gula pasir, dan air. Kemudian buat starter dengan cara melarutkan gula dengan air. Selanjutnya tambahkan EM4 dalam starter dengan takaran yang telah ditentukan. Tahap selanjutnya diamkan starter selama 24 jam. Lalu campurkan seluruh bahan untuk membuat kompos seperti daun, kotoran ayam, dan arang sekam. Siram bahan dengan starter yang sudah dibuat kemudian aduk sampai merata. Diamkan kompos tersebut selama kurang lebih 17 hari. Apabila bahan tersebut sudah berwarna kehitaman, maka kompos telah siap digunakan.', 'https://photos.app.goo.gl/32HCfSJbm6qoqBuZ9', 3, NULL),
(19, 'Budidaya maggot bikin untung di ranah peternakan dan pasar luas.', 'Maggot atau sebagian orang mengenal dengan nama belatung adalah larva dari jenis lalat Black Soldier Fly (BSF) atau Hermetia Illucens dalam bahasa Latin. Maggot merupakan larva dari jenis lalat yang awalnya berasal dari telur dan bermetamorfosis menjadi lalat dewasa.Cara Budidaya Maggot untuk Pemula Persiapkan Bahan dan Media Budidaya Berikut adalah beberapa bahan dan alat yang perlu disiapkan diantaranya, yaitu Dedak 5 kg atau sampah organik, limbah sayur atau peternakan,EM4 atau 1 botol yakult, 5 sendok makan gula pasir, 1 liter air, Penyedap rasa,2 ember dengan ukuran yang berbeda, satu besar dan kecil. Apabila tidak ada bisa diganti dengan baskom ukuran besar dan sedang, Tali yang difungsikan untuk mengikat, bisa menggunakan tali rafia atau lainnya, Kantong plastik bening dan Sisa makanan atau daun-daun.Proses Memancing Lalat BSF Berikut adalah beberapa proses memancing lalat yang bisa kamu simak, yaitu Siapkan ember kecil, kemudian isilah dengan 1 liter air. Kemudian, tambahkan juga gula pasir serta EM4 (bisa diganti yakult). Aduk hingga seluruh bahan tercampur rata dan larut.Pada ember yang lebih besar, masukkan bekatul atau dedak yang sudah disiapkan. Tambahkan juga penyedap rasa dan aduk seluruh bahan hingga tercampur rata. Tujuan dari adanya penyedap rasa ini sendiri untuk mengeluarkan bau yang disukai oleh lalat BSF.', 'https://photos.app.goo.gl/86qhPqrKdtz3hjKr6', 8, NULL),
(20, 'Proses pembuatan larutan pembersih alami ini cukup simpel.', 'Pertama, siapkan alat dan bahan berikut:1 botol plastik ukuran 2 liter.Kulit buah atau sayur. Sebaiknya gunakan kulit buah atau sayur yang beraroma wangi seperti kulit jeruk, lemon, sereh, dan pandan.100 gram gula pasir atau gula merah atau air cucian beras.1 liter air bersih.Setelah semua alat dan bahan siap, campurkan terlebih dahulu semua bahan tersebut ke dalam botol, lalu kocok dan diamkan selama tiga bulan untuk proses fermentasi.Dalam beberapa minggu pertama, akan ada banyak gas yang terbentuk. Usahakan membuka tutup botol setiap hari untuk mengeluarkan gas tersebut. Kalau pembentukan gas sudah berkurang, botol bisa kamu buka seminggu sekali. Tanda larutan EE yang sudah siap digunakan adalah warnanya menjadi keruh.', 'https://photos.app.goo.gl/k8dMvYZmyaGbaJxP8', 9, NULL),
(22, 'Cara membuat tempat pensil dari botol bekas tidaklah sulit.', 'Bahan-bahan dan alat yang dibutuhkan:Botol air mineral bekas,Selotip bening,Gunting.Cara membuat tempat pensil dari botol bekas yang sederhana:Bersihkan botol bekas terlebih dahulu,Lepaskan label air mineral yang terdapat pada botol (Namun, jika kamu ingin menggunakannya untuk dekorasi botol, kamu bisa mengaturnya sendiri). Lalu, potong bagian atas botol, tetapi jangan dibuang terlebih dahulu karena bagian atas botol juga akan digunakan. Masukkan semua alat tulis, seperti pensil, bolpen, pensil warna, dan lain-lain ke dalam botol.Selanjutnya, beri selotip di tepi botol untuk menempelkan bagian atas botol yang tadi digunting, nantinya tempat pensil ini akan dapat dibuka dan ditutup dengan mudah.Tempat pensil sederhana siap untuk digunakan atau dipajang di rumah maupun kantor. Karena bagian luar botol bekas masih kosong, kamu juga bisa menambahkan berbagai dekorasi sesuai keinginan. Kamu bisa memberi warna, menambahkan kertas untuk digambar, dan dekorasi-dekorasi lainnya.', 'https://photos.app.goo.gl/8Nu7PcgvEPsBRuCQ7', NULL, 3),
(24, 'Cara Membuat Lampu Tidur dari Kardus, Unik dan Mudah Dipraktikkan', 'Alat dan Bahan yang Diperlukan: Kardus bekas berbentuk kotak, bisa bekas sepatu dan lain-lain, Spidol hitam atau sesuai keinginan, Penggaris, Pulpen, Lem tembak atau lem kertas yang penting memiliki daya rekat yang kuat, Lakban, Gunting, Pisau Cutter, Kertas HVS, Kabel, Lampu LED kecil, Jack/colokan listrik dan Dudukan lampu. Cara Membuat Lamput Tidur dari Kardus: cara membuat lampu tidur dari kardus yang pertama adalah dengan terlebih dahulu memotong kotak kardus. Gunting bagian penutup atas pada kardus bekas. Garis pola potong 1 cm dari pinggir kotak kardus. Cara membuat lampu tidur dari kardus berikutnya adalah dengan membuat alasnya. Lem setiap sudut jepit dengan jepitan baju sampai berbentuk kekotakan, ukur kotak kardus lampu ke kaki kotak dan buat tanda. Selanjutnya buat penahan box lampu agar tidak lepas untuk ditempel di kotak kaki. Ikat pakai lakban penahan boxnya kemudian rekatkan menurut pola yang telah dibuat. Potong kotak kertas HVS putih, sesuaikan agar bisa masuk ke dalam box lampu, jika sudah dipotong gambar HVS sesuai kreasi yang kamu inginkan, segera lem bagian dalam box dan rekatkan HVS pada bagian dalam. Terakhir, potong lingkaran kecil di tengah kemudian warnai kaki lampu dengan spidol berwarna sesuai selera.', 'https://photos.app.goo.gl/RFLorVGVn8STBxZT8', NULL, 5),
(25, 'Hiasan Meja dan Dinding dari limbah kaca', 'Hiasan meja yang terbuat dari limbah kepingan kaca pasti termasuk jenis hiasan yang anti mainstream. Anda bisa untung banyak dengan mengkreasikan limbah tidak terpakai ini menjadi karya seni bernilai. Caranya juga relatif mudah: Siapkan bahan-bahan yang kamu butuhkan terlebih dahulu yaitu limbah pecahan kaca, lem serta cat, Desain model hiasan terlebih dahulu.Padupadankan pecahan-pecahan kaca tersebut dengan lem agar membentuk pola hiasan yang kamu mau. Misalnya, hiasan bunga, dedaunan, dunia satwa dan sebagainya.Lakukan berulang sampai motif atau model yang kamu mau selesai.', 'https://photos.app.goo.gl/Ruhh6SSUERMjLyDT7', NULL, 6),
(26, 'Hiasan Meja dan Dinding dari limbah kaca', 'Bahan: Koran Bekas,Lem,Kardus Bekas.Alat:Pensil,Gunting,Cutter,Kuas untuk lem dan Penggaris.Cara:Buat pola pada kardus bekas untuk ukuran bingkai foto yang diinginkan.Lalu potong kardus sesuai dengan pola menggunakan cutter atau gunting.Gulung koran bekas sampai gulungannya kecil dan padat.Olesi kardus yang telah berpola dengan menggunakan lem.Kemudian potong gulungan koran dengan menggunakan cutter sesuaiakan dengan ukuran bingkai.Lalu tempelkan gulungan koran yang sudah diukur pada semua bingkai kardus.Lalu hiasi bingkai yang setengah jadi dengan menggunakan pita.Siapkan kardus lagi kemudian potong seperti bingkai foto tetapi tengah dari kardus tersebut tidak ikut dipotong, karena untuk tutup bagian belakang foto.Bungkus penutup bingkai dengan koran bekas agar tampak cantik.Kemudian satukan bingkai foto dengan penutupnya dengan menggunakan lem.Setelah menyatu pasang foto yang diinginkan pada bingkai yang sudah jadi.Jangan lupa berikan gantungan pada bingkai agar bisa ditempelkan ditembok.Setelah itu bingkai foto siap untuk digunakan.', 'https://photos.app.goo.gl/7gm6Kunw4ScjurcU8', NULL, 7),
(27, 'Kerajinan Limbah Keras Anorganik Tas Belanja', 'Alat dan Bahan:bungkus kopi instan,kain vuring atau kain polos,gunting,benang dan jarum,penggaris,ritsleting.Berikut adalah langkah-langkah cara membuat tas dari bungkus kopi: Pertama, siapkan bungkus kopi instan merek apa saja dan bersihkan sisa bubuk kopi dengan air lalu dikeringkan atau dijemur atau bisa di lap dengan kain.Gunting bagian bawah bungkus kopi. Bungkus kopi dapat dikombinasikan dengan bungkus kopi yang lain, sesuai dengan selera masing-masing.Gunting bungkus kopi membentuk dua sama rata sehingga terbentuk dua bagian.Lipat bungkus 1 cm ke dalam di ujung tas dan bawahnya, total lebar lipatan sebesar 2 cm.Kemudian, anyam bungkus kopi yang sudah disediakan sehingga berbentuk baling-baling. Jika kamu menyiapkan 100 bungkus untuk tas ukuran kecil, nanti nya akan menjadi 200 lipatan bungkus kopi. Bagian dalam atau luar bungkus kopi dapat digunakan, sesuai dengan selera masing-masing.Jika kerangka tas anyaman sudah jadi, saatnya dirapikan dengan menjahit bagian atas tasnya supaya anyaman tidak mudah lepas.Lalu, tambahkan kain vuring atau kain polos ke dalam tas dan tidak terlalu tipis.Yang terakhir, tambahkan ritsleting untuk pengait tas yang sudah siap untuk dipakai.', 'https://photos.app.goo.gl/g56MBMGQCYoVvmuM6', NULL, 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `nik` int(11) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `number`, `nik`, `alamat`, `createdAt`, `updatedAt`) VALUES
('9537f240-a4e8-4c1b-8442-567ccfc6f49b', 'paisal', 'VNXLLTMtvbSFApPKrkVZzoi2UWPx6l1OSzrEnXct7RQ=', 'qqqq@gmail.com', 123456, 123456, 'bandung', '2022-11-26 12:33:21', '2022-11-26 12:33:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anorganiks`
--
ALTER TABLE `anorganiks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organiks`
--
ALTER TABLE `organiks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tips`
--
ALTER TABLE `tips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organik_id` (`organik_id`),
  ADD KEY `anorganik_id` (`anorganik_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anorganiks`
--
ALTER TABLE `anorganiks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `organiks`
--
ALTER TABLE `organiks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tips`
--
ALTER TABLE `tips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tips`
--
ALTER TABLE `tips`
  ADD CONSTRAINT `tips_ibfk_1` FOREIGN KEY (`organik_id`) REFERENCES `organiks` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tips_ibfk_2` FOREIGN KEY (`anorganik_id`) REFERENCES `anorganiks` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
