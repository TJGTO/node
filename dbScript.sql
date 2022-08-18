-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.27 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for codebuddy
CREATE DATABASE IF NOT EXISTS `codebuddy` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `codebuddy`;

-- Dumping structure for table codebuddy.post
CREATE TABLE IF NOT EXISTS `post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `userId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1_userId` (`userId`),
  CONSTRAINT `FK1_userId` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table codebuddy.post: ~0 rows (approximately)
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` (`id`, `title`, `description`, `userId`) VALUES
	(1, '1st Post', 'posting', 1),
	(2, '2nd Post', 'posting', 1),
	(3, '3rd ', 'dewfe', 2),
	(4, '4th', 'ewfrwgfe', 2),
	(5, '5th', 'fre3g4eg', 3),
	(6, '6th', 'rwerwr', 3),
	(7, '7th', 'fe3tge4g', 4),
	(8, '8th', 'fewfwf', 4),
	(9, '9th', 'werter', 5),
	(10, '10th', 'fwerferg', 5),
	(13, 'Est esse nesciunt libero sint nihil ex.', 'Cupiditate distinctio nam recusandae est voluptatibus incidunt impedit ratione. At temporibus at suscipit suscipit atque molestiae reprehenderit voluptatem voluptas. Quasi assumenda aut rem mollitia. Maxime reiciendis eum et unde odit vero possimus et vel. Et voluptas fugit omnis dignissimos excepturi nobis rerum commodi ducimus. Eos exercitationem et non voluptatum qui a sapiente. Quae autem eum voluptas. A consequuntur omnis veniam. Saepe vitae quidem. Rerum sed maxime harum ex laborum sit. Dolorem aspernatur quidem dolorem veniam aut laborum. Vero velit accusantium et dolores minima voluptas voluptas.', 10),
	(14, 'Vero et odit iste a necessitatibus minima ullam.', 'Et laboriosam recusandae unde dolores eum. Officiis et aut eaque. Beatae odio qui. Harum libero adipisci id nobis suscipit hic sit. Facilis sint provident distinctio soluta porro. Recusandae mollitia voluptatem aliquid suscipit assumenda occaecati molestiae pariatur. Accusamus aut ea. Pariatur temporibus error voluptatem. Dignissimos dolor dolor similique. Sit ab ut illo at amet. Voluptatum vero autem molestiae est nihil facere. Ut est laborum rerum. Dolore iure quia excepturi.', 10),
	(15, 'Pariatur unde consequatur nihil quos velit corrupti sint non odio.', 'Consequatur asperiores placeat libero ea. Totam sed voluptatem quisquam ab voluptatem enim sunt non. Quia voluptas ab nihil corporis cum magnam dolorem. Et deleniti pariatur. Fuga est dolorum fugiat quod ipsum quia ratione eos. Adipisci qui sed porro laborum et maxime ab. Voluptates deserunt illo. Ipsam iusto laudantium. Laboriosam facilis consequatur. Quia eum non quam. Deleniti vel dolorem aut ipsam quod cumque dolor.', 11),
	(16, 'Ut id illo.', 'Ut voluptas aliquid odit laboriosam libero repudiandae quo itaque. Inventore qui hic et. Officia numquam omnis dolor. Distinctio iste cum ea laborum consequuntur. Sed occaecati assumenda dolorum omnis fugit. Nihil laboriosam consequatur neque saepe. Molestiae voluptatum itaque quae sint aperiam. Et quos accusantium. Nulla debitis laborum. Eos omnis et quo quis voluptatum. Sed in sit architecto est ipsum sunt corporis sit facilis. Molestiae veniam quae est.', 11),
	(17, 'Alias qui quaerat rerum a consequatur numquam.', 'Id mollitia et officia eos veniam voluptas. Aut autem ex nemo delectus consequatur ad qui ad. Quas sed nulla reprehenderit doloremque quasi omnis et et. Id dolor rem. Expedita velit aut. Molestias vel quis nihil quod. Ducimus sint est delectus dolore ut nihil eum dolorum blanditiis. Necessitatibus dolorem dolorem blanditiis aut et. Dolores doloremque eveniet eligendi consequatur iure cumque modi. Voluptate dolor laboriosam adipisci. Et facere suscipit placeat harum. Similique rerum earum quo eum vitae sapiente est ullam minima.', 12),
	(18, 'Vel quo exercitationem non ut aperiam recusandae molestiae excepturi.', 'Consequuntur veritatis laudantium error molestiae aut unde dolor. Vero labore qui pariatur distinctio ut qui et excepturi. Sit at aut facilis facilis consequatur nostrum. Adipisci magnam est ullam eaque neque. Consectetur ea corrupti qui voluptatum pariatur. Sunt culpa eligendi provident consequuntur accusamus et. Blanditiis perspiciatis sit magni qui odio ea atque voluptas. Velit sed aut libero voluptates iste consequatur. Dicta quasi est error inventore esse error quis totam. Quia expedita quisquam iste corporis ut repellendus neque enim.', 12),
	(19, 'Ut eligendi similique qui consequatur voluptas voluptas fugiat veritatis.', 'Iusto nulla labore ipsum ut. Deleniti earum quidem dolorum vitae amet harum rem. Facilis hic aperiam repudiandae qui molestiae quo molestias laudantium. Cupiditate temporibus laborum perferendis ipsum. Officiis inventore et incidunt dolores natus qui commodi harum aut. Voluptatem quidem et culpa. Omnis atque non consequatur. Similique praesentium ut aut asperiores quaerat reiciendis sit et optio. Temporibus alias in dignissimos a sit autem optio amet perferendis. Incidunt voluptatibus modi autem praesentium.', 13),
	(20, 'Quaerat fuga voluptatem et veritatis aut perferendis ea alias.', 'Maxime qui rerum dolore eaque. Dicta dolores et cupiditate inventore. Aperiam nostrum magni ex magni voluptatum. Laudantium vero et. Praesentium quo ad et exercitationem. Eum ratione eos et deleniti soluta eveniet aut. Animi occaecati libero iusto ad sunt omnis. Sed quis similique maiores sed illum tempore repudiandae suscipit totam. Maiores magnam ut animi neque in cupiditate ut quos. Iste voluptas ab impedit iste. Corporis nihil provident culpa alias aut. Soluta explicabo quis deleniti ducimus non rerum atque facere culpa. Excepturi ea harum labore eius voluptas.', 13),
	(21, 'Quas ut sunt deleniti reiciendis.', 'Officiis placeat accusantium quae natus. Quis et aliquid voluptatem laboriosam alias delectus. Odio reiciendis maxime ducimus laudantium voluptatem architecto rerum. Unde et quod quos. Optio maxime sed dolore ut tenetur aut ducimus ab tempore. Possimus inventore occaecati. Perspiciatis qui velit reprehenderit eum. Officia totam ut officia modi id. Occaecati ipsum sapiente enim aut aspernatur veritatis a. Quis commodi qui eveniet sed iste id eaque doloribus molestiae. Dicta reprehenderit in optio molestiae nesciunt id.', 14),
	(22, 'Eaque dolor dolores cumque ut aut suscipit eos qui consectetur.', 'Aut non voluptate qui. Aspernatur blanditiis itaque occaecati hic eaque rerum culpa rerum dolore. Nostrum fugit odit occaecati natus voluptatum esse. Ea qui commodi nulla vero molestiae hic voluptas aut. Ab explicabo consequatur aut quibusdam tenetur nobis iste commodi nesciunt. Excepturi voluptatem exercitationem officiis sed. Accusamus molestiae aut illo neque ut iste. Perferendis fugit accusantium ut eos consequatur. Consectetur veritatis adipisci alias numquam cumque eius culpa. Quod tenetur totam omnis. Omnis minus omnis cupiditate odit qui ut dolore labore quod.', 14),
	(23, 'Harum non excepturi sit facere.', 'Iste consequuntur sed rerum qui saepe quia vel rerum. Possimus eius molestias magni ab nesciunt dolore maiores eaque. Fugit dolorem rerum ut doloremque culpa dicta et quod. Nulla dolorem aperiam beatae. Velit id enim et non aut magni consequatur est ratione. Quia et voluptate atque laboriosam. Similique quidem molestiae. Repellat suscipit nulla et ut qui voluptatem rerum enim recusandae. Aliquid eius deserunt aut recusandae porro et eaque natus qui. Veritatis voluptatem est consequuntur qui at porro in reprehenderit. Quibusdam in id et voluptas.', 15),
	(24, 'Et et in et quidem nobis amet delectus.', 'Earum nihil qui accusamus numquam aut ut. Aut quia repudiandae minima ea perferendis quia dolores. Modi consequuntur culpa nisi cumque quia molestias et tempore. Nesciunt aliquid dignissimos at et. Beatae amet consectetur ea nisi qui ut magnam explicabo. Eos totam numquam soluta non. Et dicta aspernatur eum beatae doloremque similique. Tenetur aspernatur ipsam omnis quos nihil et non et non. Dolor et neque cupiditate doloribus rerum sunt doloribus sit. Illo fugit qui rerum quas animi libero quaerat dolor corporis. Quas magnam odit possimus ex veniam excepturi.', 15),
	(25, 'Et nobis nostrum ab necessitatibus quod.', 'Autem sit corrupti dicta. Consequuntur est quam vel possimus. Non molestias veniam quo accusantium molestias vero tenetur ad consequuntur. Nesciunt ea officia voluptas sed sapiente voluptate quos. Cum fugit nemo aut ut corporis ipsam voluptatum neque corporis. Accusantium possimus ipsa fugit dicta eum alias quod. Tenetur molestias quos voluptatem et ipsum consectetur iusto necessitatibus. Voluptatem aut sit tempora eaque autem illo cupiditate consectetur. Temporibus saepe quis dolor delectus officia eos et. Non placeat odit vero rerum.', 16),
	(26, 'Eligendi incidunt corrupti explicabo architecto dolor.', 'In voluptas id ea vitae non iure quia nesciunt. Iste sapiente placeat numquam accusantium praesentium autem voluptas. Officiis nostrum quas deserunt delectus illo quas est cumque. Delectus quod error. Et tempora at mollitia nemo veritatis soluta ut eaque sit. Saepe deleniti omnis delectus porro expedita illo dolorum officiis qui. Incidunt voluptatem dolores praesentium quas consequatur tenetur vel fugit et. Deserunt minus enim. Quo et ipsum dolor aliquam minima corporis nostrum quod. Unde nihil consequuntur numquam.', 16),
	(27, 'Culpa voluptatem nisi necessitatibus modi.', 'Et omnis eius adipisci distinctio et iure. Quos commodi ad qui et. Maiores dicta molestias consectetur molestias quia. Voluptatibus consequatur non iste in omnis. Est minima esse reprehenderit ab. Magni sint officiis doloremque beatae sunt. Dolor qui minima nostrum ut dolor est enim. Necessitatibus et earum earum similique earum. Aut et voluptas illum facere sequi. Dolorum autem non aliquam voluptas ducimus aspernatur neque et commodi. Animi aut autem iusto. Necessitatibus alias id sunt quo ea.', 17),
	(28, 'Similique quia voluptatum delectus.', 'Quam rerum repellat totam neque cupiditate quo quo sit. Doloribus placeat deleniti rerum. Et sed voluptatem voluptatem necessitatibus est aut delectus laboriosam. Qui deleniti consequatur voluptatem cumque vel et cumque aliquam qui. Ea beatae quasi voluptas doloribus tempore est blanditiis ex distinctio. Rerum inventore ratione rerum. Accusantium ut sed. Rerum vel tenetur. Harum in est aliquam illo fugiat eligendi qui nobis. Fugiat sed quia officia adipisci.', 17),
	(29, 'Totam sint laboriosam maxime sit incidunt quo reiciendis.', 'Et nam aut ab. Optio ab et doloremque quo voluptas omnis voluptatum assumenda illo. Provident deserunt qui aut repellat deleniti totam earum magnam. Minus ea vel. Consequatur commodi possimus voluptatibus assumenda at neque quisquam totam. Omnis dolor ea accusamus occaecati neque. Repudiandae in optio. Autem accusamus quae est labore eum. Provident consequatur tempore sint dolor accusantium aut earum. Ex enim cupiditate. Quia enim ullam voluptas earum et qui occaecati nihil velit.', 18),
	(30, 'Reprehenderit voluptatem veniam non quaerat.', 'Aut adipisci earum qui. Eos rerum ut ut libero qui quia odio rem. Nobis nobis veniam illum tenetur dolores molestias rem quo ipsa. Natus sunt aliquid facilis facere enim. Ex voluptatem amet laboriosam velit et tempora quas. Totam minima in non odio quia delectus amet quia est. Architecto et quos nobis dolorem ut et vero. Error error sed quia. Quisquam ducimus nesciunt ipsa officiis quos. Quis veniam sit rerum. Labore nihil qui voluptas deserunt consequuntur minus. Dolorum aliquam et ea amet velit ut vitae qui. Quo ea ea velit dolorem est.', 18),
	(31, 'Consequatur quia non et minima itaque.', 'Doloremque eaque a dolores incidunt vel provident omnis quisquam pariatur. Animi autem aut. Sunt id molestias. Nesciunt voluptas inventore quae. At sunt neque ratione id repellendus quaerat libero tenetur. Optio deserunt est alias aliquam eos cupiditate. At error placeat quas. Aut quae saepe nihil ea eos voluptatem odit est. Atque fugit aut voluptate corporis. Vero veniam possimus incidunt doloribus.', 19),
	(32, 'Autem sint possimus vel ut corrupti et.', 'Eius ut doloremque. Quae autem eos voluptate aliquid unde exercitationem ea vitae. Modi debitis qui distinctio deserunt ut non voluptatem suscipit. Omnis omnis aut minima mollitia. Eum adipisci debitis placeat. Architecto doloribus quibusdam illo reiciendis quo facere a. Qui distinctio officia. Voluptatum ut deserunt omnis. Est id itaque ipsum. Quaerat cupiditate occaecati minus. Maxime illum quidem eos corrupti eaque officia. Est iste laborum totam veniam ut quos hic ratione nam.', 19),
	(33, 'Aliquid aut sit sequi repellendus repellendus.', 'Et et illo. Quia eligendi ea iste quo dolorum quasi rem molestiae in. Minus beatae doloribus excepturi nisi provident ex eveniet aliquid id. Iste maiores dignissimos et eum error aut velit accusantium. Ratione deserunt eaque laborum. Sit autem debitis et doloremque est est beatae. Excepturi voluptatem id excepturi temporibus eaque et qui. Molestiae illum voluptas culpa at voluptatem. Libero quisquam beatae ea culpa. Similique corrupti id quo dolor. Eum a ipsum quia nesciunt fuga voluptatem dolorum a id.', 20),
	(34, 'Tempore at alias quaerat veritatis in dolorem dolores esse.', 'Non rerum inventore ipsa est consequuntur amet. Id sint aperiam. Et veniam sit fugiat. Quas incidunt in reprehenderit. Iure nesciunt est sit consequatur cum officiis quidem et laboriosam. Aspernatur in sed ut hic distinctio laboriosam consequatur quod assumenda. Vel expedita aut cupiditate aperiam. Dolore voluptatibus numquam fugit nisi doloribus. Veniam vel reprehenderit beatae. Vero et aut neque ut officia similique. In voluptatibus dolor consequuntur non. Ipsam labore deserunt non et magnam non. Omnis veritatis sit eum nulla pariatur.', 20);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;

-- Dumping structure for table codebuddy.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table codebuddy.user: ~0 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `name`) VALUES
	(1, 'Tathagata'),
	(2, 'suman'),
	(3, 'chayan'),
	(4, 'json'),
	(5, 'sourav'),
	(10, 'Facere cumque et cumque dignissimos quia.'),
	(11, 'Numquam et et incidunt tempora aut.'),
	(12, 'Nemo excepturi rerum illo.'),
	(13, 'Non pariatur omnis harum et fugit.'),
	(14, 'Esse non vel.'),
	(15, 'Ut voluptatem aliquam aspernatur doloribus eos ut cum repudiandae.'),
	(16, 'Perspiciatis veniam repellat omnis amet corporis.'),
	(17, 'Nihil minus id quis ea ullam.'),
	(18, 'Accusantium quas ipsa eum.'),
	(19, 'Voluptatem et iure eos dolores provident voluptatem impedit nemo sed.'),
	(20, 'Beatae voluptas cumque et ut voluptatibus repellendus perferendis.');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
