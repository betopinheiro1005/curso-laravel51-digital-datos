-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 23, 2019 at 12:03 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `slug`, `path`, `tags`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Facere voluptatem quis maxime cum ad aut est.', 'Dolores in aspernatur ipsum in nobis ut numquam laudantium. Molestiae temporibus eos ipsam et. Similique aperiam rerum fugiat aspernatur qui consequatur.', 'facere-voluptatem-quis-maxime-cum-ad-aut-est', '', 'recusandae', 20, 1, '2019-05-22 06:54:21', '2019-05-22 06:54:21'),
(2, 'Ratione molestiae perspiciatis laudantium beatae doloribus nihil eos.', 'Eos ea ratione minus sit facilis modi. Quos et ut voluptatum voluptas facilis veritatis voluptatem. Et iste sit et aut. Est quo voluptas odio.', 'ratione-molestiae-perspiciatis-laudantium-beatae-doloribus-nihil-eos', '', 'vero', 6, 1, '2019-05-22 06:54:21', '2019-05-22 06:54:21'),
(3, 'Tempora id quia quis in.', 'Quia reiciendis voluptas occaecati odio ipsum voluptas. Voluptatem dolore aut reiciendis neque quis voluptatem. Aut voluptas quaerat molestiae impedit dolorem velit sit ab. Pariatur dolorum earum assumenda velit optio itaque harum.', 'tempora-id-quia-quis-in', '', 'possimus', 13, 2, '2019-05-22 06:54:21', '2019-05-22 06:54:21'),
(4, 'Sint aut sit voluptatem nulla qui.', 'Architecto accusantium velit vel rem. Dolores iusto tempora laborum et doloremque est nam. Eum officia eligendi tempore omnis nihil eos exercitationem.', 'sint-aut-sit-voluptatem-nulla-qui', '', 'et', 30, 2, '2019-05-22 06:54:22', '2019-05-22 06:54:22'),
(5, 'Esse excepturi ut deserunt molestiae nostrum aperiam.', 'Assumenda porro quia earum. Consectetur laudantium aliquid placeat nam est quis non. Atque sit exercitationem harum. Repellat doloribus et velit odio fugit similique harum. Dolor nemo quis maxime nisi tenetur dolores et.', 'esse-excepturi-ut-deserunt-molestiae-nostrum-aperiam', '', 'iste', 47, 3, '2019-05-22 06:54:22', '2019-05-22 06:54:22'),
(6, 'Qui et sunt cum reiciendis animi quas officiis aspernatur.', 'Facere aut aut distinctio nesciunt qui enim ut. Saepe dolor ab magnam qui. Quia sed debitis magnam soluta dignissimos earum adipisci. Impedit velit quia sit sit distinctio ut voluptatem blanditiis.', 'qui-et-sunt-cum-reiciendis-animi-quas-officiis-aspernatur', '', 'et', 7, 5, '2019-05-22 06:54:22', '2019-05-22 06:54:22'),
(7, 'Sint facilis dolorem iure consequuntur sint.', 'Enim est explicabo aut asperiores explicabo rem nobis voluptas. Ipsam maiores dolores cum quo at. Itaque ipsum saepe facilis delectus ea voluptatem. Autem sunt recusandae enim aliquam aliquid.', 'sint-facilis-dolorem-iure-consequuntur-sint', '', 'ratione', 21, 2, '2019-05-22 06:54:22', '2019-05-22 06:54:22'),
(8, 'Deserunt eos rerum tempore sit mollitia esse.', 'Exercitationem est modi quam ut illum. Quo magni tenetur eum impedit. Dicta distinctio perferendis voluptate praesentium. Voluptatum est sint sed ex. Tempora et placeat accusamus facilis debitis laborum nulla consectetur.', 'deserunt-eos-rerum-tempore-sit-mollitia-esse', '', 'nobis', 46, 5, '2019-05-22 06:54:22', '2019-05-22 06:54:22'),
(9, 'Accusantium fuga voluptatem sit facere omnis.', 'Qui aut accusamus provident earum. Laborum dolorem odit illo quia reprehenderit. Aut voluptatem tenetur voluptatem beatae voluptatem.', 'accusantium-fuga-voluptatem-sit-facere-omnis', '', 'aut', 26, 2, '2019-05-22 06:54:22', '2019-05-22 06:54:22'),
(10, 'Suscipit saepe facilis saepe quo enim minus.', 'Doloribus ab perferendis ut aut saepe voluptas dicta dicta. Dignissimos quos vero modi quam delectus harum. Quis iusto nisi cumque ad velit ex sint beatae.', 'suscipit-saepe-facilis-saepe-quo-enim-minus', '', 'est', 32, 1, '2019-05-22 06:54:22', '2019-05-22 06:54:22'),
(11, 'Qui fugiat quia earum quaerat quis officiis.', 'Ipsa amet vel sit deserunt. Consequatur voluptatem et adipisci accusamus. Expedita facilis repudiandae facere quos commodi qui laudantium. Iste asperiores sint consequuntur nihil assumenda veritatis ipsa.', 'qui-fugiat-quia-earum-quaerat-quis-officiis', '', 'eius', 16, 3, '2019-05-22 06:54:22', '2019-05-22 06:54:22'),
(12, 'Inventore deleniti rerum omnis dolores est reprehenderit blanditiis sed.', 'Accusamus quia voluptatum a aut. Hic nemo aliquid qui est velit. Accusantium suscipit provident neque non vero.', 'inventore-deleniti-rerum-omnis-dolores-est-reprehenderit-blanditiis-sed', '', 'ducimus', 53, 1, '2019-05-22 06:54:22', '2019-05-22 06:54:22'),
(13, 'Pariatur qui excepturi impedit voluptates itaque corporis.', 'Nam et tempore eum ut praesentium. Voluptas aut quis omnis ipsa sed sunt. Ipsam eum ut et labore cupiditate. Reprehenderit quibusdam nihil qui.', 'pariatur-qui-excepturi-impedit-voluptates-itaque-corporis', '', 'veritatis', 40, 5, '2019-05-22 06:54:22', '2019-05-22 06:54:22'),
(14, 'Odio sint sint et nam.', 'Ab sequi eius in eveniet nemo delectus. Molestias vel ducimus excepturi impedit. Est aut sed qui enim sint iste architecto ducimus.', 'odio-sint-sint-et-nam', '', 'corporis', 27, 1, '2019-05-22 06:54:22', '2019-05-22 06:54:22'),
(15, 'Aut quia nihil tempora.', 'Perspiciatis praesentium quis velit et labore atque ut. Consequatur eos et soluta quam eos. Porro nam quam unde id ullam quas est.', 'aut-quia-nihil-tempora', '', 'magnam', 15, 5, '2019-05-22 06:54:22', '2019-05-22 06:54:22'),
(16, 'Quas recusandae ad cum pariatur pariatur illo.', 'Vel ducimus molestiae veritatis dolore. Consequatur aperiam voluptates in sed iste. Consequatur totam ducimus quisquam ea in iusto.', 'quas-recusandae-ad-cum-pariatur-pariatur-illo', '', 'ea', 46, 3, '2019-05-22 06:54:22', '2019-05-22 06:54:22'),
(18, 'Planetas do sistema solar', 'O Sistema Solar compreende o conjunto constituído pelo Sol e todos os corpos celestes que estão sob seu domínio gravitacional. A estrela central, maior componente do sistema, respondendo por mais de 99,85% da massa total,[5] gera sua energia através da fusão de hidrogênio em hélio, dois de seus principais constituintes. Os quatro planetas mais próximos do Sol (Mercúrio, Vênus, Terra e Marte) possuem em comum uma crosta sólida e rochosa, razão pela qual se classificam no grupo dos planetas telúricos, ou rochosos. Mais afastados, os quatro gigantes gasosos, Júpiter, Saturno, Urano e Netuno, são os componentes de maior massa do sistema logo após o próprio Sol. Dos cinco planetas anões, Ceres é o que se localiza mais próximo do centro do Sistema Solar, enquanto todos os outros, Plutão, Haumea, Makemake e Éris, se encontram além da órbita de Netuno.\r\n\r\nPermeando praticamente toda a extensão do Sistema Solar, existem incontáveis objetos que constituem a classe dos corpos menores. Os asteroides, essencialmente rochosos, concentram-se numa faixa entre as órbitas de Marte e Júpiter que se assemelha a um cinturão. Além da órbita do último planeta, a temperatura é suficientemente baixa para permitir a existência de fragmentos de gelo, que se aglomeram sobretudo nas regiões do Cinturão de Kuiper, Disco disperso e na Nuvem de Oort; esporadicamente são desviados para o interior do sistema onde, pela ação do calor do Sol, se transformam em cometas. Muitos corpos, por sua vez, possuem força gravitacional suficiente para manter orbitando em torno de si objetos menores, os satélites naturais, com as mais variadas formas e dimensões. Os planetas gigantes apresentam, ainda, sistemas de anéis planetários, uma faixa composta por minúsculas partículas de gelo e poeira.\r\n\r\nO Sistema Solar, de acordo com a teoria mais aceita hoje em dia, teve origem a partir de uma nuvem molecular que, por alguma perturbação gravitacional, entrou em colapso e formou a estrela central, enquanto seus remanescentes geraram os demais corpos. Em sua configuração atual, todos os componentes descrevem órbitas praticamente elípticas ao redor do Sol, constituindo um sistema dinâmico onde os corpos estão em mútua interação mediada sobretudo pela força gravitacional. A sua estrutura tem sido objeto de estudos desde a antiguidade, mas somente há cinco séculos a humanidade reconheceu o fato de que o Sol, e não a Terra, constitui o centro do movimento planetário. Desde então, a evolução dos equipamentos de pesquisa, como telescópios, possibilitou uma maior compreensão do sistema. Entretanto, detalhes sem precedentes foram obtidos somente após o envio de sondas espaciais a todos os planetas, que retornam imagens e dados com uma precisão nunca antes alcançada', 'planetas-do-sistema-solar', 'planetas-sistema-solar.png', 'non', 46, 2, '2019-05-22 06:54:22', '2019-05-23 12:16:50'),
(19, 'Paisagens naturais', 'O termo Paisagem é um conceito chave na ciência geográfica. Essa expressão, em resumo, faz referência a tudo aquilo que o indivíduo abstrai do espaço a partir dos seus sentidos (visão, audição, tato, olfato e paladar), o que torna esse termo uma relação entre o ser humano e a sua formação de apropriação material e intelectual sobre o meio.\r\n\r\nA expressão paisagem natural, nesse contexto, insere-se como uma tipificação criada em oposição à paisagem cultural ou geográfica, que é aquela produzida ou transformada pelas atividades antrópicas. Portanto, entende-se por paisagens naturais aqueles espaços que ainda não foram humanizados ou que pouco receberam a interferência das atividades baseadas no emprego das técnicas, principais elementos produtores e transformadores do espaço geográfico.\r\n\r\nA compreensão dos elementos da natureza, bem como a sua localização e distribuição espacial pelos diferentes lugares, é importante no sentido de auxiliar no esclarecimento de seus efeitos sobre a sociedade e suas práticas. Nesse sentido, torna-se importante avaliar não tão somente as paisagens e os lugares em si, mas também as relações e as técnicas necessárias para a sua utilização e preservação.\r\n\r\nVocê poderá conferir, na presente seção, textos relacionados com os diferentes domínios morfoclimáticos e biomas – como a Amazônia, o Cerrado, a Mata Atlântica, o Pantanal, as Savanas, a Tundra, entre outros –, além de inúmeros fenômenos e elementos naturais, como os desertos, mares e outros locais e paisagens naturais existentes em nosso planeta.', 'paisagens-naturais', 'paisagem-natural.jpg', 'dolor', 6, 4, '2019-05-22 06:54:22', '2019-05-23 12:16:37'),
(23, 'Arco íris - Uma linda paisagem', 'A mitologia grega diria que ele aparece sempre que a deusa Íris deixa um rastro colorido no céu, para transmitir aos homens as mensagens de Zeus, o todo-poderoso do Olimpo. A explicação científica é bem menos romântica. O arco-íris surge quando o Sol ilumina a umidade suspensa no ar, após uma chuvarada, por exemplo. Quando um raio bate na borda de uma gotinha de água ou de vapor, a luz branca do Sol é desviada e se decompõe nas sete cores que compõem seu espectro: vermelho, laranja, amarelo, verde, azul, anil e violeta. É o mesmo efeito do prisma, que aprendemos na escola: cada cor é refletida em um ângulo diferente e muda de direção ao retornar para a atmosfera. A cor vermelha é a que se propaga mais rápido, formando a faixa superior do arco-íris. A violeta, a mais lenta, aparece na parte inferior.\r\n\r\nO fenômeno é tão comum que os cientistas acumulam alguns recordes coloridos. “Em laboratório, foram observados mais de 12 arco-íris a partir de uma única gota dágua”, afirma o físico José Pedro Rino, da Universidade Federal de São Carlos (UFSCAR). ', 'arco-iris-uma-linda-paisagem', 'paisagens-com-arco-iris.jpg', '', 41, 4, '2019-05-23 06:18:41', '2019-05-23 12:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'et', '2019-05-22 06:54:21', '2019-05-22 06:54:21'),
(2, 'Astronomia', '2019-05-22 06:54:21', '2019-05-23 07:13:30'),
(3, 'vel', '2019-05-22 06:54:21', '2019-05-22 06:54:21'),
(4, 'Paisagens', '2019-05-22 06:54:21', '2019-05-23 11:29:40'),
(5, 'qui', '2019-05-22 06:54:21', '2019-05-22 06:54:21');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2019_05_21_030926_create_categories_table', 1),
('2019_05_21_030945_create_articles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('member','admin') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'member',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Al Murray', 'tyler97@prohaska.net', '$2y$10$oXWNie.bsYVntIWQLH7IDeeObtpEndNB0mE0deytCmHNLpvvCjjLy', 'admin', 'zkThIvAXm2XV8FhNWUA9IiiCwrhMgaoGXAmaPrJWggtS4By3shLsFFUrxJzB', '2019-05-22 06:54:10', '2019-05-23 12:16:57'),
(2, 'Mafalda Mohr', 'willms.aniya@howell.biz', '$2y$10$kdm7T0XP/wr78HAMJUezvuYe2ncJuFjTkgMeDt/H52VRdSk62G8L2', 'admin', '8X43hlfvXL', '2019-05-22 06:54:10', '2019-05-22 06:54:10'),
(3, 'Marjorie Boehm', 'bergstrom.dorothea@cremin.com', '$2y$10$NhN37UAb0Gex5yZ/DAu5aeknHHSveRZRtVQP4ZGV3kWV.WuQezq6O', 'admin', 'ur7FS3NFnd', '2019-05-22 06:54:10', '2019-05-22 06:54:10'),
(4, 'Prof. Tyshawn Treutel', 'marta09@west.org', '$2y$10$4QATVfnJFQ7BPeeC3V9Tfummrc3mVa3spVU6yptqP3RT2ckLDBAU2', 'member', 'L1F8UToKy2chHr1wKuUaKMUlnbdHx311XGB6N9TWQwWM7v2V60fINDmyFclj', '2019-05-22 06:54:19', '2019-05-23 09:57:38'),
(5, 'Betsy Kihn V', 'wunsch.ottis@hotmail.com', '$2y$10$0aMN9dILqc2pRohfBn17PuKjhDVTsOGfFfVaVM0YvpgO7pj7L3P5q', 'member', 'dKV5YbIht3', '2019-05-22 06:54:19', '2019-05-22 06:54:19'),
(6, 'Tina O\'Conner', 'piper.bechtelar@gmail.com', '$2y$10$6l1vEIz8nLVajZu1GCn6IOh3QMMh9VlxbALPFozysQjFUb2U0GMXC', 'member', 'xe7XRYts18', '2019-05-22 06:54:19', '2019-05-22 06:54:19'),
(7, 'Kali Thompson', 'ogoyette@yahoo.com', '$2y$10$2nrHWFBx/F/wtyF8d36WoOOSHHWW95etHkGg21jVVl2KG5.o2Srcy', 'member', 'TJEM1ElDiq', '2019-05-22 06:54:19', '2019-05-22 06:54:19'),
(8, 'Ms. Bessie Huels', 'virginie.weissnat@hotmail.com', '$2y$10$S.9tcLjhZDsUKgS6JiUI8O8/H2lLDaP17UN5HaYP77ULJdG1U3evm', 'member', '1VjVLJmfhq', '2019-05-22 06:54:19', '2019-05-22 06:54:19'),
(9, 'Wendell Dicki', 'wabshire@pfeffer.biz', '$2y$10$2Z/gyCkS3hfxKYPsDl.uYO2qX84RmUfMqHoGOAwPTZ//BTOuS5Oo6', 'member', '7uKcMLqGZy', '2019-05-22 06:54:19', '2019-05-22 06:54:19'),
(10, 'Brooks Bayer', 'glenda.morar@gmail.com', '$2y$10$5iL79IZUpWiKVIBrMEaq/uJv1tRVaemVvXiSpY6ERLs.uIaJQ78q2', 'member', 'omxncJqJNK', '2019-05-22 06:54:19', '2019-05-22 06:54:19'),
(11, 'Prof. Garrick Schimmel PhD', 'caleb.hayes@glover.com', '$2y$10$CL.NLiVNzTm4rs0JfWa8auH7PZ63tWyp5bSWLE7SeUzU.rH1D5CFu', 'member', 'JnFfsE7fMi', '2019-05-22 06:54:19', '2019-05-22 06:54:19'),
(12, 'Chelsie Marks', 'gjones@mraz.com', '$2y$10$/xMSpRzA1GVkA1Oaf0fEr.gyTEITV2GiXR2Qz5tjEwcHQvkaB0LDK', 'member', 'DdqMX0KugU', '2019-05-22 06:54:19', '2019-05-22 06:54:19'),
(13, 'Oran Aufderhar', 'konopelski.henriette@hotmail.com', '$2y$10$L3UabDKHHtCRIbaZhPYJpu8.MkSjwEztDHQLBVma0RfXXU.nz01q2', 'member', '8PL1q7PND2', '2019-05-22 06:54:19', '2019-05-22 06:54:19'),
(14, 'Brayan Abshire', 'fmitchell@hermiston.com', '$2y$10$1IrY8Ul7K.xAeLe.XBVkau/9uYIlEUNlrtDRXHUd1XEJ34hqnnI7a', 'member', 'BGOayA2XKj', '2019-05-22 06:54:19', '2019-05-22 06:54:19'),
(15, 'Adolph Hansen', 'fcummings@hotmail.com', '$2y$10$BfnEOGdXMj9b.rlPZec5o.O.0NzhRYq7Xp45xf6UePTrjRig1veHS', 'member', 'rbHWAMwCfL', '2019-05-22 06:54:19', '2019-05-22 06:54:19'),
(16, 'Jesse Turcotte', 'reynolds.rogelio@reichel.com', '$2y$10$.6ctfvYwgE4KGimuHLIuYOBh1XR75KwRgB0TxBaUECJ1GibWB5GcK', 'member', 'ay8fSD01Ja', '2019-05-22 06:54:19', '2019-05-22 06:54:19'),
(17, 'Susan Larkin', 'bfriesen@west.com', '$2y$10$k151vtem.gczMtho9bkBlOIt3qXHYy1Oin5pmopbLsGvCCRdOwPMe', 'member', 'XRt9fvEIsq', '2019-05-22 06:54:19', '2019-05-22 06:54:19'),
(18, 'Ayden Walker', 'kstoltenberg@yahoo.com', '$2y$10$l4hIiIJgHlGnNsKV/PorpuMviZ9cPlPgm7UdJ6reHXCXIGa4xL7bu', 'member', 'iQDkLHdKDp', '2019-05-22 06:54:20', '2019-05-22 06:54:20'),
(19, 'Joanie Thompson III', 'ullrich.addie@kiehn.com', '$2y$10$u9FjDhuoXZ9sG3qVIDtzs.9.BcFso3pr8lJZ/0Rh.cX7ZvB3r5.E.', 'member', 'KTc43wDBzp', '2019-05-22 06:54:20', '2019-05-22 06:54:20'),
(20, 'Gregg Parisian', 'funk.nyah@gmail.com', '$2y$10$xy0ZP.iJmluVdO/XGJOqz.mOeaf3pP/eS5ukoIEiymhjF6aiATeRq', 'member', 'f6Rb5E42TK', '2019-05-22 06:54:20', '2019-05-22 06:54:20'),
(21, 'Mrs. Kelly Klocko I', 'homenick.clay@macejkovic.net', '$2y$10$xZk3lfQJXTWOuczOU4ZFXe7B6Kno7RBfe/rFa7LsvvGy.HuBSaN5G', 'member', 'RXgPSPtZaj', '2019-05-22 06:54:20', '2019-05-22 06:54:20'),
(22, 'Merl Lueilwitz', 'timothy88@hotmail.com', '$2y$10$fNb.OffOV.nMEQpPEfGskepEuhx40NWv0v1IFtUe9TC.PF.vLXIai', 'member', '4oRnQn5Pud', '2019-05-22 06:54:20', '2019-05-22 06:54:20'),
(23, 'Cecilia Daniel', 'lynch.lemuel@harvey.com', '$2y$10$y5lOaQn.Nj1EUM5wZQcW6.PtEwPCnkECkRXnVypeng2mWEK5x4WFO', 'member', 'yNTmSnnFhV', '2019-05-22 06:54:20', '2019-05-22 06:54:20'),
(24, 'Alan Monahan', 'boyer.albin@crona.com', '$2y$10$.niEp94xtqzsbaRlLxebr.Pb4EI3l5x9tV2FbUoVjmt4EO//QAPHO', 'member', '2za3bxYhpn', '2019-05-22 06:54:20', '2019-05-22 06:54:20'),
(25, 'Lucious Herzog', 'abdullah36@bergstrom.com', '$2y$10$TFHCnSjEsgcAfoDBmYDJyeAb0C51mNspywdFE4A1qss7NouEiNveC', 'member', 'PaFMYAvxpV', '2019-05-22 06:54:20', '2019-05-22 06:54:20'),
(26, 'Emiliano Corwin', 'deichmann@yahoo.com', '$2y$10$51r6C90iPv7B/WeTOPh/r.UZbheRdZBmoj2jOKhYAzMnye58B/k5y', 'member', 'BxQ90MdJR2', '2019-05-22 06:54:20', '2019-05-22 06:54:20'),
(27, 'Albina Beer', 'idell.hettinger@nader.net', '$2y$10$NgTRmOXJ2yketpjSO/ehO.eWAO2AzGthiowH5os1zK8G5kqpJAqT.', 'member', 'U8vz48rKcR', '2019-05-22 06:54:20', '2019-05-22 06:54:20'),
(28, 'Dr. Hilda Morar', 'myles13@corkery.net', '$2y$10$nQHnPQyQ8QwcYf2VWtQgEeii.0TBQlLzyl.kQZt9l/zWbpvMxwJ3u', 'member', 'bYjG7sl1sK', '2019-05-22 06:54:20', '2019-05-22 06:54:20'),
(29, 'Ari Fisher', 'aditya.lindgren@hotmail.com', '$2y$10$OA2/TTLhvvMnOvBKfuGt7epx2iZ1sLuzWVKhpVUZU0GHsJQMXTk7K', 'member', 'IKxb4Tk8LC', '2019-05-22 06:54:20', '2019-05-22 06:54:20'),
(30, 'Jaeden Crooks', 'keanu.kunde@schumm.com', '$2y$10$8hzgg9U1CMlRdZDydXJLVunxnHa/mi1L9aRaEFQRZqkOVk7gYll4G', 'member', 'Dxtx2bvtiX', '2019-05-22 06:54:20', '2019-05-22 06:54:20'),
(31, 'Stanton Schaden', 'kaci.considine@gmail.com', '$2y$10$KLonDnwFb8vpjHNE5pL7lesoXIbiUAAFtmCFQVoAipm7Io8z5/rL6', 'member', 'vwiOPF00l8', '2019-05-22 06:54:20', '2019-05-22 06:54:20'),
(32, 'Clara Keeling', 'runte.imelda@hotmail.com', '$2y$10$i0BGdBsizdyNb2IkUQHlZuCXrdddY9iEsUw.MAjLVh/F4jdn/wz7O', 'member', 'wmMH8FobFQ', '2019-05-22 06:54:20', '2019-05-22 06:54:20'),
(33, 'Peyton Feest II', 'flossie.turner@gmail.com', '$2y$10$kY52QMVOX0IsJD7kuPQiYebqOIpy56Nl0IC3gDladTSC29U0TLOHG', 'member', 'cYlaefsHar', '2019-05-22 06:54:20', '2019-05-22 06:54:20'),
(34, 'Mrs. Isabella Reinger', 'alexane.nikolaus@kirlin.info', '$2y$10$xT8xyKO88WV3E43kMpEtNu4yvJcmh6ed0sR5mc8961kHeRc50cvBy', 'member', 'tyhbElnjY7', '2019-05-22 06:54:20', '2019-05-22 06:54:20'),
(35, 'Margarita Bode', 'monahan.destinee@oconner.com', '$2y$10$1gpocHHO2Ewl3YqXCttAyuAv.epkP6tiZTHJUVORXveqta.RuDmmO', 'member', 'GPpOuVxPiO', '2019-05-22 06:54:20', '2019-05-22 06:54:20'),
(36, 'Tobin Connelly', 'antwon.gaylord@yahoo.com', '$2y$10$sI41RBPoov0CkZzmGMTSRehfra.HegrmcCIWI8yItVliH7M7NmR4O', 'member', 'mCESkLz3Fs', '2019-05-22 06:54:20', '2019-05-22 06:54:20'),
(37, 'Ari Kuhic', 'davion.deckow@rath.com', '$2y$10$8ego7xkrQwyHxUNy43sZp.ht5ctNZSADdMA/Ash1g1H.4ZGcrnMCK', 'member', 'KgGmCAyswF', '2019-05-22 06:54:20', '2019-05-22 06:54:20'),
(38, 'Rosalia Oberbrunner', 'hayley16@wisozk.org', '$2y$10$zyCdnN6j24O7mtHxTXdJ3eUjs8XngDyKASBokcuVql.oamlDqVzzO', 'member', 'B5SEtIz0k0', '2019-05-22 06:54:20', '2019-05-22 06:54:20'),
(39, 'Fanny Heidenreich', 'laverna.weimann@hotmail.com', '$2y$10$VIUrgeWtBcFUb5fSZVMBxu0YzM6Cg9xoZ2y3oN7RK4bb9dpC/XKdm', 'member', 'CXDqHJvQg5', '2019-05-22 06:54:20', '2019-05-22 06:54:20'),
(40, 'Niko Gerlach', 'brannon58@hotmail.com', '$2y$10$cUymdNLmF7PnIQBXru8ULOLX.XZ5M9ovKfDwIY0fK.8V.uf24vunG', 'member', 'gUCkiHUCck', '2019-05-22 06:54:20', '2019-05-22 06:54:20'),
(41, 'Dean Schroeder', 'janis19@hotmail.com', '$2y$10$QM/Ev5zFhMQKiwNpwXq4ieoxBIpYaQ8brb.86pN6oc4zk4dgj3jcO', 'member', 'Rw8kGEw80jQQZch7LUxoFPuBdIqUEmoeTXZQVgQZbV2CPn7ZRTyYgJvseDKy', '2019-05-22 06:54:20', '2019-05-23 10:59:21'),
(42, 'Ceasar Witting', 'gudrun88@yahoo.com', '$2y$10$5q2Dg7jf0yzNXKWOrBKWbOe8H6DyfG8xnX4vNDVYiZXnrpNbefyv.', 'member', 'Z8psVGMRVD', '2019-05-22 06:54:21', '2019-05-22 06:54:21'),
(43, 'Candido Schimmel', 'zboncak.darrion@gmail.com', '$2y$10$8myRujqVBtewVJMm2rUjkukCicYrf5KJfLowhmQIiSasF0zvqL3gy', 'member', 'wOCUOTYnf5', '2019-05-22 06:54:21', '2019-05-22 06:54:21'),
(44, 'Olen Kuhn', 'hauck.marcelino@pouros.org', '$2y$10$JdKixGMZLOKP2D6OGsO9OesUOca5St3gIamkWhbA1nyV6EeAVYJEm', 'member', 'WvVt103vfS', '2019-05-22 06:54:21', '2019-05-22 06:54:21'),
(45, 'Triston Gerhold', 'sonia17@blanda.com', '$2y$10$3ZgJol3ISCfd6aZG.q/Mfu.CcQ3pImeULyClLHo48B6rbyXf3YnO6', 'member', 'scjlKJfDSt', '2019-05-22 06:54:21', '2019-05-22 06:54:21'),
(46, 'Mr. Granville Collier', 'hfunk@yahoo.com', '$2y$10$irV/hzKA1foxdc8m2N1Wiu.CfItXKCvfRvneGjVj8p.ypg6GZM7gy', 'member', 'uBBI8mwziR', '2019-05-22 06:54:21', '2019-05-22 06:54:21'),
(47, 'Darion Breitenberg II', 'zwilkinson@gmail.com', '$2y$10$AUZsbxdOjkWhuVyomKS8z.rpo1GSTc4aa1u2ZYhmA6R/QPCw30c0m', 'member', 'KeTL9HOSPH', '2019-05-22 06:54:21', '2019-05-22 06:54:21'),
(48, 'Cesar Kuhic', 'lbode@erdman.info', '$2y$10$DMDmztY8oOH7mgolIz0fzujEOIQZiADSA14IT78P2YrwkFfbCrpJS', 'member', 'TzXugkPujG', '2019-05-22 06:54:21', '2019-05-22 06:54:21'),
(49, 'Barrett Schultz', 'oblock@renner.biz', '$2y$10$Horirm3aCMxK.NUukiDN0eXZDXLBzFU44JE0kcwKDZgquyRWG4pia', 'member', 'f1Kti3bslb', '2019-05-22 06:54:21', '2019-05-22 06:54:21'),
(50, 'Dr. Hyman Herman Sr.', 'pstamm@gmail.com', '$2y$10$J9gEPRubH7aMnLuDXB5D/ugM7so7B4SX8VFclN9U0.6Do91U/9I/O', 'member', 'OQPjG0KRkv', '2019-05-22 06:54:21', '2019-05-22 06:54:21'),
(51, 'Gunner Ward II', 'crist.maci@yahoo.com', '$2y$10$9FD1qUHCmd4ZjQOW2EotIOnEMzMhIXatUeH5VZt7IrC.HLgAztW9G', 'member', 'FDmaklNs73', '2019-05-22 06:54:21', '2019-05-22 06:54:21'),
(52, 'Abraham Ebert', 'noe14@oberbrunner.biz', '$2y$10$UNqy4I2/bg06rZAnDf1voeuHFJL34e1wA6Inwnn1LyrvPvG0vNad.', 'member', 'R19LaLh6wI', '2019-05-22 06:54:21', '2019-05-22 06:54:21'),
(53, 'Aletha Schowalter', 'ekassulke@hotmail.com', '$2y$10$KA/qP64AE9iNhV2ryBRVq.95Ceb2N7MWswx2Pij0qXwTHZoEKIPjK', 'member', '4Cp3rXWFLA99JTvWieD60uBgZGRWdoT0h59LMXsImjClJhz04irIKwqA7ZYO', '2019-05-22 06:54:21', '2019-05-23 10:58:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_user_id_foreign` (`user_id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
