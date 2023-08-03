-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Mar 2023 pada 08.06
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fiber_optik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `caption`
--

CREATE TABLE `caption` (
  `nama` text NOT NULL,
  `npm` text NOT NULL,
  `kelas` text NOT NULL,
  `domisili` text NOT NULL,
  `kategori` text NOT NULL,
  `aspirasi` text NOT NULL,
  `kontak` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `caption`
--

INSERT INTO `caption` (`nama`, `npm`, `kelas`, `domisili`, `kategori`, `aspirasi`, `kontak`) VALUES
('Nama', 'NPM', 'Kelas', 'Domisili', 'Kategori', 'Berikan Aspirasi serta kritik dan saranmu untuk BEM Ug', 'Kontak (whatsapp)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data`
--

CREATE TABLE `data` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `npm` varchar(10) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `domisili` varchar(15) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `aspirasi` mediumtext NOT NULL,
  `kontak` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data`
--

INSERT INTO `data` (`id`, `nama`, `npm`, `kelas`, `domisili`, `kategori`, `aspirasi`, `kontak`) VALUES
(6, 'sesa', '14117907', '4KA06', 'Depok', 'Pelayanan Kampus', 'COK', '08192312321431'),
(8, 'irfanudin', '13119067', '2ka26', 'Kalimalang', 'BEM', 'Kak kira kira filling sekitar bulan apa ya open registerationnya? Dan apakah ada event velonteer lagi?  terima kasih', '081314945180'),
(9, 'Muhammad Fajrin Ar-Ridwan', '10120722', '1KA25', 'Kalimalang', 'Fasilitas', 'Fasilitas', '081908104711'),
(10, 'Aditya Hidayatulloh', '11120267', '1KA07', 'Depok', 'Pembelajaran Kampus', 'Alhamdulillah saya kuliah di universitas Gunadarma membawa saya ke arah yang lebih baik dan bisa mempelajari ilmu ilmu dimasa depan \r\nSaya 2022 sudah bekerja di network administrator dsn bisa membuka usaha sendiri dalam bidang internet', '087881876787'),
(11, 'Alif Raihan Akbar', '10120111', '1KA25', 'Kalimalang', 'Pembelajaran Kampus', 'Saya kecewa dengan Universitas Gunadarma baik jika dilihat dari sistem, dosen, maupun mahasiswa. \r\n\r\nPadahal saya dulu berharap dengan masuk universitas ini, saya bisa menjadi orang yang benar. Akan tetapi, universitas ini memberikan saya hal yang sebalik', 'Alif Raihan Akbar'),
(12, 'Kevin Purnawan', '13118647', '3KA09', 'Depok', 'Pembelajaran Kampus', 'kenapa yah, bayaran digundar tidak dikurangin\r\nDikuranginya hanya sedikit \r\n\r\nPadahal kan kita kuliah online mungkin ada beberapa yang masuk, tapi kan kebanyakan secara online \r\n\r\nKuliah yang online tidak menggunakan kelas + AC + proyektor + WiFi gundar\r\napapun fasilitas yang ada digundar, untuk kuliah online kan tidak menggunakan nya \r\n\r\nKouta bantuan dari pemerintah entah kemana ( habis Tanpa sebab )\r\n\r\nusaha pun kadang naik kadang turun karena pandemi :(\r\n\r\nBayaran tetap segitu :(\r\nSemoga aja bayaran uang kuliah diringankan lagi  ', 'line saja kk ( kvvn1'),
(13, 'irfanudin', '13119067', '2ka26', 'Kalimalang', 'BEM', 'Kak mau nanya filling kira kira open registerationnya bulan apa ya? Dan apakah ada event velonteer lagi? Terima kasih ðŸ™', '081314945180'),
(14, 'Rizal Fadillah', '16118263', '3KA25', 'Kalimalang', 'Pelayanan Kampus', 'Ini aspirasinya gk bisa semua kategori? Pelayanannya bisa dibuat lempar sana lempar sini, sudah dikritik tetep aja begitu. Semoga bisa lebih baik kedepannya atau udah lulus baru bener(?)', '089681514104'),
(15, 'Rafial', '20120917', '1KB05', 'Karawaci', 'Pembelajaran Kampus', 'Sedikit kritik tentang kampus. Sampai sekarang saya belum dapat kuota belajar!! Padahal setiap kampus sdh diberi anggaran oleh kemendikbud', '081296315358'),
(16, 'Dzaki permata budi', '11119956', '2KA26', 'Kalimalang', 'Pelayanan Kampus', 'kenapa pembagian kuota belajar tidak merata ada yg sudah dapat sejak lama dan ada yg belum termasuk saya. Terimakasih', '081210704133'),
(17, 'Dimas Aditya Wardana', '11118940', '3KA20', 'Salemba', 'BEM', 'Bem, sebagai wadah aspirasi, tolong rangkul mahasiswa fikti domisili salemba. Kami sering tertinggal info kampus. Pelayanan & pembelajaran nya pun rendah. ', '085716952847'),
(18, 'Ikhsan Kurnira Prayoga', '12117837', '4KA06', 'Depok', 'Fasilitas', 'Semoga kedepannya fasilitas kampus dapat ditambah untuk yang kurang, diperbaiki untuk yang sudah rusak dan diperbaharui lagi untuk yang sudah usang', '089501522929'),
(19, 'Reza Burhanudin', '15117101', '4KA05', 'Depok', 'Pelayanan Kampus', 'Mayoritas petugas loket kampus D kelakuannya kayak KONTOL, ya kayak KONTOL, orang nanya dengan sopan dan baik serta bahasa yang santun saja masih dijutekin huh sungguh terlalu, padahal saya 1x pun tidak pernah nunggak uang kuliah. TOLONG DONG ITU BUAT CITRA KAMPUS KITA JELEK KARENA OKNUM YANG TIDAK BERTANGGUNG JAWAB', '087773503160 WA'),
(20, 'Muhammad ichsan gustiawan', '14117058', '4Ka26', 'Kalimalang', 'Pelayanan Kampus', 'Tolong untuk pelayanan kampus seperti Baak dsb. dipermudah, diperbaiki, dan pemberian informasi yang jelas. masa saya ingin menanyakan perihal nilai lab untuk syarat skripsi di oper oper, saya nanya ke baak suruh nanya ke lab dari lab suruh nanya ke baak lagi lah gimana? saya tau mahasiswa gunadarma banyak oleh karna itu perlu pemberian informasi yang singkat padat dan jelas.', '08996382667'),
(21, 'Khalifia Mutiara', '13118666', '3KA03', 'Depok', 'Pelayanan Kampus', 'Assalamualaikum Wr. Wb. Saya mahasiswa gunadarma, saya ingin pelayanan kampus di gunadarma jauh lebih baik. Karena menurut saya, pelayanannya kurang memuaskan dan cara penyampainnya saya anggap kurang ramah ke semua mahasiswa. Saya pernah menanyakan sesuatu tentang KIP-K, tapi responnya sangat lama. Sebelumnya, saya terima kasih atas perhatiannya dan mohon maaf apabila kesalahan kata-kata.', '081510193157'),
(22, 'Ramadino', '13117855', '4ka07', 'Depok', 'Fasilitas', 'Gr2 gw kuliah di gundar gw jd galau mulu soalnya gebetan gw sekls udh kgk deket lg hadehh padahal udh dr 2019 tp sayang nya msh samoe 2021 susah move on,masukan ajh buat kamus G ac nya msh ada beberapa yg mati mksh', '082298631469'),
(23, 'Budi Setiawan ', '11117264 ', '4KA10 ', 'Depok', 'Pembelajaran Kampus', 'saya ingin nnya. kenapa untuk matkul teknik pemrograman terstruktur 2 semester 4 tidak tersedia diujian mandiri untuk semester ganjil? ', '082362368536 '),
(24, 'Alif', '10118533', '3KA01', 'Depok', 'Pembelajaran Kampus', 'Ini testing aja', 'Hati'),
(25, 'Ruben Werner', '15119770', '2KA17', 'Depok', 'Pembelajaran Kampus', 'Pembelajaran selama online masih jauh dari kata efektif. Contohnya masih ada dosen yang sampai saat ini belum mengajar tatap muka dan hanya memberikan materi lewat vclass, itupun sampai minggu 11 hanya terdapat 5 materi di vclassnya. Yang herannya beliau dosen wali kelas, saya sudah sarankan ketua kelas untuk beritahu ke jurusan namun sepertinya ribet atau bagaimana. ', '08982215812'),
(26, 'WAHYU DWI NURHALIIM', '1B119855', 'TKA19 ', 'Depok', 'Pembelajaran Kampus', 'Saya memohon kepada bagian yang mengadakan ujian melalui website ujian gunadarma untuk dapat memberikan keringanan untuk ujian susulan/lainnya yang dikarenakan kendala jaringan, human error(kelupaan) dan lain sebagainya.  ', '082214318257'),
(27, 'ASRULLOH', '11118163', '3KA06', 'Depok', 'Pelayanan Kampus', 'Kak mau nanya apakah kouta dari kampus bisa diperpanjang lagi?', '08979396739'),
(28, 'Cut Naila Fadia', '11119518', '2KA31', 'Karawaci', 'Pelayanan Kampus', 'Apa bisa bayaran kuliah selain bank dki di univ gundar?', '089657663901'),
(29, 'Rally Novaranggana ', '15119290', '2KA31', 'Karawaci', 'Pelayanan Kampus', 'Saya ingin bertanya, bagaimana solusi jika blanko hilang? ', '081296152945'),
(30, 'Syauqi Hasyim Aljufrie', '15117853', '4KA15', 'Depok', 'Pembelajaran Kampus', 'Ya semoga kampus bisa blended mode online ofline ', 'Raihan wisesa'),
(31, 'Rahmad Yusuf Setiadi', '10120928', '1KA12', 'Depok', 'Fasilitas', 'Saya gapengen ada pertukaran kelas kak belum bertemu secara offline jadi belom bisa merasakan kebahagiaan', '081314031614'),
(32, 'Muhammad Faris Umar Rahman', '10120605', '1KA12', 'Depok', 'Pembelajaran Kampus', 'Saya punya usul, gimana kalau kelas angkatan 2020 tidak perlu diacak saat tingkat dua. Karena menurut saya cukup sulit untuk bersosialisasi di masa pandemi. Dan setelah hampir 2 semester bersama, walau lambat, akhirnya saya dan teman-teman bisa lumayan dekat.\r\nMenurut saya, jika kelasnya diacak lagi di tingkat 2, akan sulit lagi untuk bersosialisasi, karena sudah pada nyaman dengan kelas sebelumnya. Akan menyebabkan ketidaknyamanan di kelas yang baru.\r\nIni saya rasakan bersama teman-teman saya di 1ka12, kami berharap bisa lebih nyaman di tingkat 2 nanti, untuk mendukung pembelajaran kami juga', '081218947223 / faris'),
(33, 'Hafidzurrohman Saifullah ', '10120486', '1KA12', 'Depok', 'BEM', 'Saya punya usul, gimana kalau kelas angkatan 2020 tidak perlu diacak saat tingkat dua. Karena menurut saya cukup sulit untuk bersosialisasi di masa pandemi. Dan setelah hampir 2 semester bersama, walau lambat, akhirnya saya dan teman-teman bisa lumayan dekat.\r\nMenurut saya, jika kelasnya diacak lagi di tingkat 2, akan sulit lagi untuk bersosialisasi, karena sudah pada nyaman dengan kelas sebelumnya. Akan menyebabkan ketidaknyamanan di kelas yang baru.\r\nIni saya rasakan bersama teman-teman saya di 1ka12, kami berharap bisa lebih nyaman di tingkat 2 nanti, untuk mendukung pembelajaran kami juga', '081383930712'),
(34, 'Muhammad Habiib Fadhillillah', '10120738', '1KA12', 'Depok', 'Pembelajaran Kampus', 'Saya punya usul, gimana kalau kelas angkatan 2020 tidak perlu diacak saat tingkat dua. Karena menurut saya cukup sulit untuk bersosialisasi di masa pandemi. Dan setelah hampir 2 semester bersama, walau lambat, akhirnya saya dan teman-teman bisa lumayan dekat.\r\nMenurut saya, jika kelasnya diacak lagi di tingkat 2, akan sulit lagi untuk bersosialisasi, karena sudah pada nyaman dengan kelas sebelumnya. Akan menyebabkan ketidaknyamanan di kelas yang baru.\r\nIni saya rasakan bersama teman-teman saya di 1ka12, kami berharap bisa lebih nyaman di tingkat 2 nanti, untuk mendukung pembelajaran kami juga', '082281639001/@habiib'),
(35, 'Fadhilah Rizqullah', '10120367', '1KA12', 'Depok', 'BEM', 'Saya punya usul, gimana kalau kelas angkatan 2020 tidak perlu diacak saat tingkat dua. Karena menurut saya cukup sulit untuk bersosialisasi di masa pandemi. Dan setelah hampir 2 semester bersama, walau lambat, akhirnya saya dan teman-teman bisa lumayan dekat.\r\nMenurut saya, jika kelasnya diacak lagi di tingkat 2, akan sulit lagi untuk bersosialisasi, karena sudah pada nyaman dengan kelas sebelumnya. Akan menyebabkan ketidaknyamanan di kelas yang baru. Ini saya rasakan bersama teman-teman saya di 1KA12, kami berharap bisa lebih nyaman di tingkat dua nanti, untuk mendukung pembelajaran kami juga.', '082331504968'),
(36, 'jbsrzqbib', 'http://www', 'jbsrzqbib', '', '', 'Form MUARA\r\njbsrzqbib http://www.g8383f92uzl48hd918hoh2bkoe55n6q2s.org/\r\n[url=http://www.g8383f92uzl48hd918hoh2bkoe55n6q2s.org/]ujbsrzqbib[/url]\r\n<a href=\"http://www.g8383f92uzl48hd918hoh2bkoe55n6q2s.org/\">ajbsrzqbib</a>\r\n', 'jbsrzqbib'),
(37, 'Anisa Silfi Hidayati', '10118891', '4KA19', 'Depok', 'BEM', 'MAAP COBA TEST', '085697939925'),
(38, 'Hans Evan', '12119740', '3KA02', 'Depok', 'Pelayanan Kampus', 'pelayanan psa di kampus E tidak ramah sekali mau sama anak muda atau orang tua sama saja mereka apakah bisa dievaluasi? ', '082298944933'),
(39, 'FAUZ AQIILAH', '10120420', '2KA09', 'Depok', 'BEM', 'test aja ya', '085770156064'),
(40, 'Rika', '21120008', '2KB04', 'Kalimalang', 'Fasilitas', 'Gdndnhsnna', '10864389263'),
(41, 'lilis apriyani ', '10120591', '2ka14', 'Depok', 'Pembelajaran Kampus', 'kenapa tugas aku banyak bgt?', '081288930460 whatsap'),
(42, 'CUT NAILA FADIA FIADHARMA', '11119518', '3KA31', 'Karawaci', 'Pelayanan Kampus', 'Kalau bertanya perihal errorna website dsb suka dioper-oper terus', '089657663901'),
(43, 'robby', '11120048', '2KA04', 'Depok', 'Pelayanan Kampus', 'apabila ada pertanyaan dari setiap pendaftar diharapkan agar dari pihak kampus bisa lebih informatif dalam menyamapaikan informasi,jangan terlalu cuek apabila ada yg nanya mengenai kampus', '08119432021'),
(44, 'Azriel chaerul', '10120216', '2ka10', 'Depok', 'BEM', '.', '.'),
(45, 'Reyhan Bronovan Hanif', '16118033', '4ka31', 'Karawaci', 'BEM', 'Proker apa aja yg ada di bem?', '@reyhanvhnf'),
(46, '', '', '', '', '', '', ''),
(47, '', '', '', '', '', '', ''),
(48, 'ahmad subarjo', '222222222', 'ss', 'Karawaci', 'Fasilitas', 'ahmad subarji', '1234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_aspirasi_mhs`
--

CREATE TABLE `data_aspirasi_mhs` (
  `id` int(11) NOT NULL,
  `nama_mhs` varchar(50) NOT NULL,
  `npm` int(8) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `kelas` varchar(5) NOT NULL,
  `domisili` varchar(20) NOT NULL,
  `kategori_aspirasi` varchar(20) NOT NULL,
  `Pesan` text DEFAULT NULL,
  `status_aspirasi` varchar(20) NOT NULL,
  `kontak` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_aspirasi_mhs`
--

INSERT INTO `data_aspirasi_mhs` (`id`, `nama_mhs`, `npm`, `date`, `kelas`, `domisili`, `kategori_aspirasi`, `Pesan`, `status_aspirasi`, `kontak`) VALUES
(5, 'sylvi', 16119267, '2021-12-15 12:24:30', '3KA06', 'Depok', 'Pelayanan Kampus', 'vclass lemot ni ka', 'Terlaksana', '087788138355'),
(6103, 'fauz aqiilah', 10120420, '2021-12-27 10:59:34', '2ka09', 'Depok', 'Pembelajaran Kampus', 'untuk website pembelajaran seperti vclass suka eror nih jd keganggu bgt pas lg ngerjain tugas / uts gitu, kan jadi serem ', 'Proses', '085770156064'),
(6104, 'robby baarikly', 11120048, '2021-12-27 11:02:32', '2ka04', 'Depok', 'Pelayanan Kampus', 'lebih informatif lagi apabila ada mahasiswa yang baru mendaftar,jangan setengah atau terblit-belit dalam memberi informasi,terkdang malah diperinet gitu', 'Terlaksana', '08119432021'),
(6105, 'Lilis Apriyani ', 10120591, '2021-12-27 11:04:20', '2KA14', 'Depok', 'Fasilitas', 'Apa yang harus dilakukan saat mendekati deadline tugas namun Vclass sedang down', 'Proses', '0812988930460'),
(6107, 'Cut Naila ', 11119518, '2021-12-27 11:41:41', '3KA31', 'Karawaci', 'Pembelajaran Kampus', 'Ada beberapa dosen yang sering re-schedule ga menentu. Ketika ditunggu sesuai jadwal kelas pengganti, dighosting dan kemudian dosennya minta re-schedule lagi.', '', '089657663901'),
(6108, 'Muhammad Asnawi', 14119046, '2021-12-27 13:19:57', '3KA29', 'Karawaci', 'Pelayanan Kampus', 'Selamat malam, sebelumnya terima kasih sudah memberikan kesempatan untuk mewadahi mahasiswa untuk beraspirasi, hehe. Untuk pelayanan kampus, kadang kalo nanya di beberapa live chat, suka ga dibales. Kalo dibales juga kadang ga ngejawab pertanyaan. Ta', '', '081384332507'),
(6110, 'Rika Malia', 21120008, '2021-12-27 16:30:55', '2KB04', 'Kalimalang', 'Pembelajaran Kampus', 'Kenapa web gundar sering error min', '', '0878 31205260'),
(6113, 'Hasbi Rahmatullah', 12119766, '2021-12-27 17:43:48', '3KA30', 'Karawaci', 'BEM', 'Semakin informatif good job.', '', '081514731956'),
(6114, 'Dhiazul fahaq budiaji', 10120304, '2021-12-27 21:35:06', '2KA09', 'Depok', 'Pelayanan Kampus', 'Kurang mantap', '', '081295604871'),
(6115, 'Shidqi Adiatma', 16119038, '2021-12-27 22:19:51', '3KA07', 'Depok', 'Pelayanan Kampus', 'Bagaimana caranya mendapatkan Surat Rekomendasi Universitas untuk pendaftaran program magang kampus merdeka? Apakah kampus kita sudah bisa konversi sks?', '', '081366321356'),
(6116, 'Fazri zaenuri', 10120427, '2021-12-28 00:03:01', '2ka07', 'Depok', 'BEM', 'RESMIKAN ORGANISASI PERJURUSAN, HIMPUNAN JURUSAN SEPERTI HIMSI DAN HMSK', '', '085721219572'),
(6117, 'shidqiii', 16119038, '2021-12-28 08:44:46', '3ka07', 'Depok', 'Pelayanan Kampus', 'Minta approval letter gimanaa? ini mau daftar program bangkit, tapi belom punya approval letter', '', '081366321356'),
(6118, 'Adi Irawan', 10121033, '2021-12-28 13:07:40', '1KA29', 'Karawaci', 'Pembelajaran Kampus', '1. Kenapa Gunadarma pembelajaran akademik berbeda dengan kampus-kampus yg lain, seperti dimulainya tahun ajaran baru yg lebih lambat, libur semester ?\r\n2. Untuk program studi Sistem Informasi di kampus karawaci apakah akreditasi nya sama dengan kampu', '', '089651154576'),
(6124, 'Nabiil', 50420937, '2022-01-05 05:34:32', '2IA14', 'Depok', 'Pembelajaran Kampus', 'jadwal perkuliahan yang beda dari yang lain, apa jadwal nya bisa di ajukan di perbaiki lagi? kenapa ya Gunadarma selalu telat jadwalnya dibanding kampus lain. apalagi soal libur semester, padahal di libur semester itu kesempatan untuk ntah itu cari k', '', '081282755995'),
(6125, 'Rafi', 14119328, '2022-01-05 08:15:34', '3KA12', 'Depok', 'BEM', 'Disuruh farah isi form aja dulu katanya, bikin forum yg lebih inklusif dong yg bisa tektokan langsung ama fungsionarisnya jgn cuma di form (soalnya kyk ga ditanggepin dan gabisa secara langung ngulitin nya). ty!\r\n\r\nwanna questioning polkesma in gener', '', 'dm ig aja rafi'),
(6126, 'Sulthan Bazila Arsyad', 26118870, '2022-01-05 15:28:34', '4KB02', 'Depok', 'Pembelajaran Kampus', 'Mau ikut kampus merdeka aja kudu diliat dari npm , coba donk diliat dari skillnya , gimana mau nambah pengalaman , kalo nyari pengalaman aja dipersulit', '', '082299398628'),
(6128, 'Mazza Fakkar Alam', 81628828, '2022-01-06 10:49:24', '3AB13', 'Depok', 'BEM', 'Hidup Mahasiswa, \r\n\r\nAyo dong Maggie supaya gundar dikelola oleh binus', '', '08128838381'),
(6131, 'Berlin Sugandi', 10120234, '2022-01-29 18:11:52', '2KA10', 'Depok', 'Pembelajaran Kampus', 'apakah disemester selanjut nya nanti web-web seperti vclass, ujian.gunadarma akan mengalami pperubahan?\r\nmisalnya seperti lag, bug, dll.', '', '087781066856'),
(6133, 'Aska', 11119100, '2022-02-24 15:43:09', '3KA01', 'Depok', 'Pembelajaran Kampus', 'kenapa di tingkat 3 SI ada statistika lagi ? padahal dulu di tingkat 2 udh ada statistika 1 dan 2', '', '085732630582'),
(6134, 'Roni Anggara', 11121165, '2022-02-26 01:46:08', '1KA29', 'Karawaci', 'Fasilitas', 'Maaf sebelumnya, Apa kah di Gunadarma karawaci ada semacam eskul? Jika ada kenapa tidak jalan ya, atau saya yang tidak tau info', '', '0882000543353'),
(6135, 'Azra', 10121712, '2022-02-26 03:58:52', 'IKA11', 'Depok', 'Pembelajaran Kampus', 'Umm setelah liat2 komen di ig mahasiswagunadarma, banyak yang bilang kualitas dosen nya menurun, mungkin karna saya baru masuk tahun pertama jadi belum tau juga dengan jelas kualitas sebelumnya seperti apa. Kalau yang saya lihat, saya kira dengan menjadi mahasiswa, khususnya lewat matkul2 yang ada, kita akan diajak untuk berpikir lebih kritis. Tetapi saya sendiri kurang menemukan hal2 tersebut di gundar, terlihat dari jenis soal yang ditanyakan/diujikan dan saat kelas pengajaran. Intinya kurang ', '', '081291739405'),
(6136, 'Antoni Wibisana', 10117874, '2022-02-26 04:20:15', '5KA09', 'Depok', 'Fasilitas', 'Ka,jangan cepet zoomnya', '', '081389053536'),
(6137, 'M.Algian Ananda', 23118913, '2022-02-26 05:17:46', '4KB02', 'Depok', 'Pembelajaran Kampus', 'Assalamualaikum kakak2 BEM FIKTI,\r\nSangat disayangkan pihak kampus memaksakan mahasiswanya untuk mengikuti metode pembelajaran hybrid dalam surat persetujuan ortua, kami mahasiswa luar daerah/rantau yang tidak dapat ijin dari ortua dengan keadaan ekonomi yg sekarang sangat sulit untuk balik ke kampus dan tidak ada keringanan atau solusi bagi kami yg mahasiswa luar daerah/rantau dan saya berharap mhs rantau bisa mengikuti metode online, dengan form ini saya harap kakak2 bem bisa membantu dan meny', '', '081907848515'),
(6138, 'Constantino Ardhanditomo', 11119512, '2022-02-26 06:12:03', '3KA12', 'Depok', 'Pelayanan Kampus', 'Untuk pengajuan keluhan nilai agar bisa membantu para mahasiswa yang memang tidak mendapat keadilan dari dosen', '', '0'),
(6139, 'SatuFikti', 12345678, '2022-02-26 06:30:18', '5KA50', 'Depok', 'BEM', 'Proses Empathizing di Fiber optik yang kalian lakuin hari ini signifikansi nya apa ya ? kalian lakuin atau engga, gaakan ngaruhin apa2 ke proses perjalan nya perkuliahan hybrid yang bakal dateng. so dont make worthless move unless y\'all can resulting situasion based on what students want or need\r\n\r\nBINTANG 0', '', '081389053536'),
(6140, 'ikyy', 11119777, '2022-02-26 08:10:14', '3KA01', 'Depok', 'Pembelajaran Kampus', 'AKU MAU OFFLINE', '', '1100111'),
(6141, 'Virgiawan', 21121278, '2022-02-26 08:55:00', '1KB05', 'Karawaci', 'Pembelajaran Kampus', 'Kenapa karawaci keluar jadwal kuliahnya selalu belakangan? Jadi tolong buat yg mendengar suara ini tolong banget jangan dijadikan kampus karawaci jadi ank tiri tolong disetarakan semua kita satu lambang satu nama Gunadarma, terimakasih', '', '085887027183'),
(6142, 'Dian Tri Wijaya', 10120308, '2022-02-27 13:30:36', '2KA01', 'Depok', 'Pembelajaran Kampus', 'Kuliah offline ujian online. Kira-kira kebijakan begini bakal di up ke kampus gak ya?', '', '087886887560'),
(6143, 'Bas Racquey Biensika', 11118361, '2022-02-28 01:33:19', '4KA04', 'Depok', 'Pembelajaran Kampus', 'selama pembelajaran online ketua kelas harus mencari dan menghubungi dosen secara langsung(kadang sulit mendapatkan kontak dosen yang dicari)\r\ndan saat minggu perkuliahan,perkuliahan sangat bergantung pada dosen tersebut dan ketua kelas/perwakilan kelas(karena tidak semua dosen ingin membagikan kontaknya dan membuat group kelas) yang mungkin bisa mengalami kendala atau sedang tidak bisa mengakses device untuk menghubungi dosen/ketua kelas saat kelas akan dimulai(contoh : smartphone yang digunaka', '', '08973729380'),
(6167, 'Aryn', 10120629, '2022-03-22 08:23:18', '2KA07', 'Depok', 'Pembelajaran Kampus', 'Selama kampus memberlakukan metode hybrid genap ganjil, proses pembelajaran bagi yang online sangat tidak efektif. Jaringan putus-putus, kamera buram dan tidak nampak jelas. Sedangkan beberapa dosen menggunakan media papan tulis di kelas yang tidak dapat dengan jelas dilihat oleh mahasiswa yang kebagian jadwal online di rumah. Tidak ada mic/clip on juga yang mampu memfasilitasi dosen agar suara tetap jelas meskipun sedang menjelaskan ke teman-teman yang offline. Fasilitas pembelajaran yang kami terima dirasa TIDAK SESUAI dengan pembayaran yang kami lakukan. Mohon kebijakannya untuk memperbaiki sistem dan memfasilitasi dosen ketika pembelajaran hybrid berlangsung. Bila dirasa pihak universitas belum mampu untuk siap melaksanakan hybrid, laksanakan saja online demi kenyamanan belajar. Saya mengharapkan solusi dan tindakan yang tepat dari universitas setelah menerima seluruh uang yang kami bayarkan per semesternya. Terimakasih.', '', '085162700860'),
(6169, 'Maulana Muhammad ', 13119601, '2022-04-05 08:18:50', '3KA15', 'Depok', 'Pelayanan Kampus', 'SPP makin mahal ', '', '087877459331'),
(6170, 'Willyawan Maulana', 11120166, '2022-04-06 23:49:37', '2KA27', 'Karawaci', 'Pembelajaran Kampus', 'Pembelajaran hybrid untuk yang online kurang efektif, kameranya hanya menggunakan hape yang akhirnya terlihat buram, \r\ndan juga input suara/microphone tidak ada, jadi suara dosen tidak terdengar jelas (bergema) saat kelas dimulai, mungkin device untuk pembelajaran online bisa diganti yang lebih baik agar yang online bisa mendapat pelayanan yang sama dengan yang tatap muka', '', '085215321818'),
(6171, 'S', 999999, '2022-05-07 18:57:40', 'SI 20', 'Kalimalang', 'BEM', 'Halo kak, terima kasih telah melakukan kerja yang baik di BEM FIKTI. Namun, ada beberapa saran, mungkin kita bisa bangun ekosistem belajar mahasiswa UG (misalnya nggak hanya melalui gdsc, tetapi kita punya organisasi sendiri seperti ristek ui yang memang berkolaborasi dengan baik oleh partner external). Nggak harus sama persis kok, tapi mungkin kita bisa start dari kecil dulu. Dan kalau memang saya nggak tau bahwa di UG sendiri sudah ada organisasi seperti ini, mungkin bisa lebih di exposure lagi nih di twitter bem :D good luck kakak-kakak bem! \r\nTerima kasih~~\r\nAnyway, bem fikti prokernya bagus-bagus, jadi pengen join bem~~ hehe\r\n\r\n- dari aku yang tahun ini (maybe) jadi maba UG ^^\r\n\r\nYou can approach me from line ya kak, maaf aku gabisa share nomorku.\r\nId line: salmazjhr ', '', '000000000'),
(6172, 'hai', 11111, '2022-06-19 15:41:37', '2ka01', 'Depok', 'BEM', 'semoga bem bisa lebih baik lagi', '', '12'),
(6173, 'Ihsanul Alif', 12119901, '2022-07-07 23:49:39', '3KA06', 'Depok', '', 'semoga BEM FIKTI UG lebih baik.', '', '082384367812'),
(6175, 'fauz aqiilah', 10120420, '2022-07-24 12:25:21', '2KA09', 'Depok', '', 'aspirasinya, semoga kedepannya birokrasi baik BEM FIKTInya sendiri/kampusnya bisa lebih jelas dan ga bertele2 lg aja, siapapun ketua bemnya nanti. kritiknya dan sarannya, mungkin gausah adain proker banyak2 biar staffnya bisa fokus dan maksimal aja kinerjanya. trus gausah berharap bakal lgsg terjadi perubahan walaupun visi misi dan tujuannya sekeren apapun dan secanggih apapun metodenya, karna yg perlu dirubah itu terutama SDM nya dulu. dan untuk ubah SDM itu ga segampang dan secepat itu, bahkan cara terbaik ubah SDM itu sendiri pun dr pengalaman gue bukan dr visi misi/tujuan yg kita bawa selama menjabat. tp emang dr cara pendekatan kita dan juga dari orangnya sendiri. pokonya sukses aja terus BEM FIKTI UG. jgn gampang emosian dan kena mental aja ya krn sekarang semuanya serba keras, thanku!!', '', '081389053536'),
(6176, 'TRI UTAMI', 11121261, '2022-07-24 16:17:34', '1KA28', 'Kalimalang', '', 'Semoga kedepannya bem fikti menjadi lebih jaya  sukses selalu dan menciptakan kegiatan-kegiatan yang belum ada di tahun sebelumnya agar lebih seru,, semoga juga di tahun kepemimpinan bem yang baru bisa  diadakannya konserr asekk', '', '082242166697'),
(6177, 'Syifariani Kamil ', 21121247, '2022-07-25 11:57:09', '1KB04', 'Kalimalang', '', 'Semogga BEM fikti menjadi lebih baik lagi kedepannya ', '', '089654440486'),
(6178, 'Vanisa Aulia P', 11120148, '2022-07-30 16:49:27', '2ka01', 'Depok', '', 'Saran untuk kepengurusan BEM FIKTI Universitas Gunadarma semoga bisa memberikan program kerja yang banyak disukai dan digemari oleh warga FIKTI, serta juga semoga informasi informasi mengenai perkuliahan bisa lebih terpusat pada BEM FIKTI sehingga para warga FIKTI sudah tahu nengenai informasi valid ada di BEM FIKTI. ', '', '089606473848'),
(6179, 'Annisa Umulfath ', 11120218, '2022-07-31 04:58:38', '2KA01', 'Depok', '', 'Kinerja BEM FIKTI sudah sangat baik, kita semakin cepat mendapatkan informasi-informasi. Mungkin sarannya untuk informasi-informasinya lebih didalami lagi supaya mencegah adanya miss komunikasi antara kampus, BEM, dan mahasiswa-mahasiswanya. ', '', '08111030949'),
(6180, 'Aprillia intan khairunnisa', 10120172, '2022-07-31 05:04:37', '2ka12', 'Depok', '', 'Saran saya semoga bem fikti selanjutnya memeiliki project2 yg lebih menarik lagi \r\n', '', '082110031462'),
(6181, 'Novia Putri Bahirah', 10120869, '2022-07-31 05:07:16', '2KA01', 'Depok', '', 'Tidak ada, BEM FIKTI periode ini udh mantap bgt. Acara2 yang diadakan selalu sukses dan terstruktur serta banyak ilmu yang disampaikan dari setiap acara yg diadakan, sselain itu lomba2 yang diselenggarakan dari BEM FIKTI juga ga kalah keren. Suksess terusss yaaa kedepannyaa', '', '081384412474'),
(6182, 'Fadiya qistina putri', 10120374, '2022-07-31 05:22:43', '2ka01', 'Depok', '', 'Untuk kepengurusan selanjutnya semoga bisa membuat program progaram kerja yang lebih bermanfaat dan banyak disukai oleh mahasiswa FIKTI sehingga kedepannya ilmu yang diterima dapat diterapkan ', '', '082214087108'),
(6183, 'Adib', 10120027, '2022-07-31 05:45:37', '2KA01', 'Depok', '', 'Sudah bagus mantap', '', '081291301359'),
(6184, 'Vira Rahma', 11121277, '2022-07-31 06:07:07', '1KA11', 'Depok', '', 'Menurut saya mungkin kepedepannya jika ada event atau acara yang diadakan oleh BEM, untuk informasi nya bisa lebih diperluas, soalnya kadang ada suatu event yang di grup angkatan sudah disebar infonya sedangkan di grup kelas belum, dan di grup angkatan kan gasemua mahasiswa masuk grup itu. Itu aja mnrt saya, terima kasih. ', '', '0895341936016'),
(6185, 'Lilis Apriyani ', 10120591, '2022-07-31 06:31:11', '2KA14', 'Depok', '', 'Kurangnya bonding antar atasan dan bawahan sehingga nilai kekeluargaan kurang terbangun juga membuat jarak antar atasan dan bawahan terutama Staff dan BPH', '', '081288930460'),
(6186, 'Zahra Rizki Ramadhanti', 11120187, '2022-07-31 07:49:17', '2KA01', 'Depok', '', 'Lebih memaksimalkan penggunaan dan kualitas reel Instagram untuk memberikan informasi dan kegiatan BEM FIKTI. Salah satu contohnya untuk menginformasikan visi misi atau kampanye dari paslon yang akan mencalonkan diri menjadi Ketua BEM. ', '', '081283159755'),
(6187, 'Early ', 11119963, '2022-07-31 13:09:59', '3ka14', 'Depok', '', 'Sampai saat ini, saya melihat BEM FIKTI sudah memiliki beberapa program yang membantu mahasiswa dalam mengembangkan skill nya masing2, dan kedepannya saya harap dapat terus berinovasi dengan mengadakan program yang lebih besar, meriah, juga mampu menjembatani para mahasiswa dengan kebutuhan industri yang akan datang. ', '', '082111572916'),
(6188, 'Evanie Rizka Amalia', 10120358, '2022-07-31 15:10:03', '2KA12', 'Depok', '', 'Menurut saya apa yang dikerjakan atau dilakukan BEM FIKTI saat ini sudah bagus. Karena BEM FIKTI sangat aktif dan responsif. Beberapa sosmed milik BEM FIKTI sejauh ini sangat aktif dan sangat membantu mahasiswa lainnya dalam memberikan sebuah informasi. Semoga kedepannya BEM FIKTI bisa lebih sukses dan semakin berkembang.', '', '082211573798'),
(6189, 'Khairunnisa Mazaya Raihana', 10120579, '2022-08-01 03:22:12', '2KA01', 'Depok', '', 'Mampu menampung lebih banyak aspirasi mahasiswa, serta melakukan tindak cepat tanggap terhadap problem meliputi kampus, baik itu kepada pimpinan ataupun lainnya. Lebih perbanyak kerja nyata dengan transparansi yang jelas. Lebih telihat gerak-geriknya dalam memperjuangkan hak mahasiswa secara nyata dengan terus menerus. Semangat anggota BEM!', '', '081281183895'),
(6190, 'Cut naila fadia fiadharma', 11119518, '2022-08-01 08:49:04', '3ka31', 'Karawaci', '', 'Lebih mengedepankan kualitas proker dibanding kuantitas proker. Agar setiap prokernya mencapai atau bahkan melebihi target yang diharapkan.\r\n\r\nLebih memperhatikan jumlah sdm dari masing-masing biro/dept agar tidak ada pengurus yang hanya menunggang nama dan pengurus yang overwork.', '', '089657663901'),
(6191, 'Amylia Nurrizky Yudhistiara', 10120135, '2022-08-01 10:13:06', '2KA21', 'Kalimalang', '', 'Saran nya untuk penyebaran informasi itu terkadang tersampaikan tapi ada juga yg tidak tersampaikan. Kedepannya bisa lebih di tingkatkan penggunaan sosial media nya seperti whatsapp karena menurut saya wa itu aplikasi yang pasti digunakan oleh seluruh mahasiswa jd informasi lebih mudah tersampaikan. ', '', '085287277051'),
(6192, 'Laela Isnaeny', 10120587, '2022-08-01 11:12:51', '2KA01', 'Depok', '', 'Kedepannya anggota satu sama lain lebih merangkul dan lebih solid. ', '', '081283647575'),
(6193, 'Abrar Muhammad Aufa', 10120010, '2022-08-03 04:51:57', '2KA12', 'Depok', '', 'Terus berikan yang terbaik untuk lingkungan Gunadarma khususnya Fakultas Ilmu Komputer dan Teknologi Informasi', '', '089644875520'),
(6194, 'Ahmad Mawardi Hakim', 10120073, '2022-08-03 13:14:44', '2KA01', 'Depok', '', 'Sebenarnya secara struktur organisasi, BEM sudah baik. Hanya saja masih banyak kekurangan dalam eksekusinya. Keprofesionalitasan para BPH contohnya. Birokrasi yang dianut BEM sangat panjang dan terstruktur, dalam menjalaninya perlu peran besar bukan hanya oleh para staff sang eksekutor tetapi juga para BPH yang menjadi pengawas atau legislatif. Apalagi kita tahu staff merupakan orang orang baru yang ingin belajar sambil mengenal cara kerja di suatu organisasi. That\'s why gua bilang kunci utama selain sistem nya ya SDM nya terutama BPH. Semua kendala kecil perkara respond lama dan kurang komunikatif menurut gua menjadi poin penting sebagai penyebab masalah yang runtut menjadi besar seperti berjalannya proker yang tidak sesuai ekspektasi (almost semua proker terutama dalam hal pendanaan dan kesekretariatan), sistem menjadi terasa lebih berat bagi para eksekutornya (berdasar pengamatan dari para staff), kurang satu nya rasa kebersamaan yang ada dalam BEM, dan masalah lainnya yang dialami BEM tahun ini. Saran saya ya tiap individu harus merasa punya perannya masing masing, harus tahu apa yang mereka prioritaskan, dan gives their best effort here. ', '', '082110894852'),
(6195, 'Anonim', 12119000, '2022-08-04 07:53:19', 'xxxxx', 'Depok', '', 'Semoga next leader bisa merangkul mahasiswa di bem maupun diluar seperti saat kabinet nawasena.', '', '000000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(40) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', '462565422566a1a997daca260332861a');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_aspirasi_mhs`
--
ALTER TABLE `data_aspirasi_mhs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data`
--
ALTER TABLE `data`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `data_aspirasi_mhs`
--
ALTER TABLE `data_aspirasi_mhs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6196;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
