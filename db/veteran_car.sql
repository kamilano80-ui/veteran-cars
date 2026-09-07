-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Ned 06. zář 2026, 21:17
-- Verze serveru: 10.4.32-MariaDB
-- Verze PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `veteran_car`
--
CREATE DATABASE IF NOT EXISTS `veteran_car` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `veteran_car`;

-- --------------------------------------------------------

--
-- Struktura tabulky `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `date_add` timestamp NOT NULL DEFAULT current_timestamp(),
  `has_picture` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Vypisuji data pro tabulku `article`
--

INSERT INTO `article` (`id`, `date_add`, `has_picture`, `title`, `url`, `short_description`, `description`) VALUES
(1, '2020-03-15 10:54:20', 1, 'Škoda 420 Standard', '1-skoda-420-standard', 'První automobil značky Škoda s inovativní koncepcí páteřového rámu (centrální roury) a výkyvných polonáprav, inspirovanou vozy Tatra.', 'Byla prvním automobilem Škody s novou koncepcí odvozené z tatrovácké koncepce – páteřový rám s výkyvnými polonápravami. Tato koncepce přinesla automobilce úspěch a ze třetího místa na domácím trhu ji po krizových létech vymrštila na první příčku.[1] Možným důkazem o úspěšnosti tohoto řešení může být i to, že se tato konstrukce udržela až do další změny koncepce (Škoda 1000 MB). Škoda 420 byla označována pouze jako přechodný nebo studijní typ. Měla čtyřdobý kapalinou chlazený čtyřválec (ventilový rozvod SV) o objemu 995 cm³ s výkonem jak již název naznačuje 20 k (4 – počet válců, 20 – počet koňských sil), tedy 14,7 kW. Automobil měl třístupňovou převodovku se synchronizací 2. a 3. stupně a neměl diferenciál. Odpružení zajišťovaly listová pera, brzdění mechanické brzdy na všech kolech. Změna směru jízdy se prováděla pomocí šnekového řízení, které bylo na pravé straně vozidla. Vozidlo bylo karosováno většinou jako čtyřsedadlový tudor nebo jako otevřený vojenský automobil s plátěnou střechou o rozměrech (tudor): délka 3 770 mm, šířka 1 360 mm, výška 1 500 mm, rozvor náprav 2 430 mm a rozchod kol 1 150 mm. Vůz jezdil nejvíce 85 km/h při spotřebě 7 l benzínu na 100 km. Vyrobilo se ho 421 kusů (sériově).'),
(2, '2020-03-16 10:05:31', 1, 'Tatra T600 Tatraplan', '2-tatra-t600-tatraplan', 'Tatra 600 neboli Tatraplan byl osobní automobil střední třídy vyráběný v letech 1948 až 1951 firmou Tatra, n. p. a následně do roku 1952 podnikem AZNP Mladá Boleslav. Vůz s proudnicovou karosérií a vzadu umístěným vzduchem chlazeným plochým čtyřválcem nav', '<p>Tatraplan měl původní označení Tatra 107, a šťastnou \"7\" následoval předchozí aerodynamické vozy z Kopřivnice – T 77, T 87 a T 97. Vývoj Tatraplanu začal koncem druhé světové války a vůz měl navázat na úspěchy a tradici do té doby vyráběných aerodynamických vozů. Přitom však měl být jejich novější, menší a lacinější verzí, která by zároveň nahradila i v té době už poněkud zastaralou Tatru 57, jejíž výroba v té době končila. Pozdější označení Tatra 600 vycházelo z nové poválečné koncepce číslování produkce firmy Tatra, která osobním vozům přidělovala číselnou řadu začínající číslem 600. Název Tatraplan si vysloužil srovnáním ladného tvaru s letadlem – aeroplanem i na dobových prospektech (podobná slovní hříčka traktor \"Z\" → Zetor), později to jisté kruhy překroutily do souvislosti s dvouletkou a plánovaným hospodářstvím včetně dlouhého á v názvu.</p>'),
(6, '2026-08-26 19:28:58', 1, 'Historie značky Bugatti', 'historie-znacky-bugatti', 'Automobiles Ettore Bugatti byla francouzská firma, která vyráběla luxusní automobily. Byla založena v alsaském Molsheimu v roce 1909. Toto město tehdy patřilo do Německého císařství a jeho říšské země Alsasko-Lotrinsko. Jejím zakladatelem byl italský auto', '<p>Nejdříve sehnal Ettore kapitál na výrobu pěti letadel a deseti automobilů. Jako první vznikl Bugatti Type 13, který vynikl ve velké ceně Francie 1911, kde porazil mnohem silnější vozy. Nakonec se prodalo přes dva tisíce kusů Type 13. Nejúspěšnějším ze závodních modelů byl Bugatti Type 35. Známé byly také Bugatti Type 41 (Royale), Type 57 (Atlantic) a Type 55. Po Ettore Bugattiho smrti v roce 1947 byznys upadal a výroba automobilů skončila v roce 1952. Značka pak zanikla v roce 1963.</p>\r\n\r\n<p>V roce 1987 značku zakoupil italský podnikatel Romano Artioli a založil společnost Bugatti Automobili S.p.A. se sídlem v italském Campogallianu, kde měla společnost továrnu. V roce 1990 uvedla na trhu model Bugatti EB110, který vyráběla do roku 1995. V roce 1998 ochrannou známku zakoupila společnost Volkswagen a založila současnou společnost Bugatti Automobiles, která také obnovila výrobu luxusních automobilů.</p>'),
(7, '2026-08-28 19:19:14', 1, 'Škoda Octavia (1959)', 'skoda-octavia-1959', 'Škoda Octavia je osobní automobil nižší střední třídy s dvoudveřovou podvozkovou karosérií, který vznikl modernizací vozů Škoda 440 respektive Škoda 445 též známého pod názvem Spartak. Výroba Octavií byla zahájena v roce 1959. Vozy s karosérií tudor byly ', 'Po úspěšném modelu Škoda 440, který zaznamenal ohlas i v zahraničí, se vedení automobilky Škoda rozhodlo pokračovat vozidlem postaveným na jeho základu. Vznikla tak Škoda Octavia. Vůz byl na první pohled velmi podobný svému předchůdci, protože karosérie zůstala až na určité detaily, jako jsou přední maska, zadní světlomety apod., prakticky nezměněna. Uvnitř se však nacházelo hned několik nových prvků.\n\n\nŠkoda Octavia, model 1959\nPrvním novým prvkem je řešení přístrojové desky, která je nyní plošší a přehlednější. Druhým novým prvkem byla zcela přepracovaná přední náprava, která již nebyla odpružena příčným listovým perem, ale vinutými pružinami. To mělo za následek zlepšení jízdních vlastností a současně se zlepšila možnost seřizování geometrie nápravy. Zadní náprava zůstala víceméně původní, odpružená příčným listovým perem (i pro zadní nápravu bylo vyvinuto pružení spirálovými pružinami, ale zůstalo jen u prototypu). Octavia měla všechna kola nezávisle zavěšená, což jí dávalo na tehdejší dobu vynikající jízdní vlastnosti. Posunutí přední nápravy co nejvíce vpřed navíc přivodilo velmi dobré, téměř rovnoměrné rozložení hmotností na nápravy.\n\nV roce 1960 se objevila nová karosářská varianta – kombi. Vyniká svým vnitřním prostorem s plochou podlahou zavazadelníku a rychle si získává srdce uživatelů. V následujícím roce prošla Škoda Octavia vzhledovou modernizací, která je nejvíce patrná na zadní části vozu. Víčko nádrže již není vystaveno na odiv a je elegantně zakapotováno dvířky, otevíranými zevnitř vozu a hlavně vůz dostává na zadní blatníky elegantní „křidélka“ nebo též „ploutvičky“, které jsou zakončeny novými kryty světlometů ve tvaru kapky.\n\nKromě standardní Škody Octavia vznikaly její ostřejší verze. Jsou to Škoda Octavia Super a Škoda Octavia TS (Touring Sport), které jsou charakterizovány zvýšeným výkonem svých motorů.\n\nVozy Škoda Octavia se staly oblíbenými nejen v zemi svého vzniku (nutno dodat, že v Československu se tehdy ještě nové osobní automobily prodávaly pouze držitelům poukazu, tj. na příděl, například úderníkům), ale i v zahraničí. Na svou dobu se jednalo o levný, spolehlivý a dobře ovladatelný vůz. Verze s karosérií typu tudor se přestala vyrábět v roce 1964 a byla nahrazena novým typem Škoda 1000 MB, vozy s karosérií kombi se ve výrobě udržely až do roku 1971, protože Automobilové závody, n.p. za ně neměly adekvátní náhradu – přes několik nerealizovaných prototypových řad se náhradou Octavie Combi stal až dvacet let poté vůz Škoda Forman.'),
(8, '2026-08-28 19:22:43', 1, 'Škoda Felicia (1959)', 'skoda-felicia-1959', 'Škoda Felicia byl poslední roadster vyráběný československou automobilkou AZNP, závod Kvasiny v letech 1959–1964.', 'Škoda Felicia byl poslední roadster vyráběný československou automobilkou AZNP, závod Kvasiny v letech 1959–1964.\n\nVůz byl odvozen od sedanu Octavia. Jeho předchůdcem byla Škoda 450, která se lišila přední nápravou s listovými pružinami. Bylo vyrobeno 14 863 kusů[1] + 1 010 starších Škoda 450. Ve výrobě procházely modely mírnými změnami. Při přechodu ze Škody 450 na Škodu Felicii bylo nejviditelnější změnou pojmenování a modernizace přední nápravy z listového na vinuté odpružení. Změnou prošla i palubní deska.\n\nOd modelu 1961 se řazení přesunulo zpod volantu na podlahu a maska „žralok“ byla nahrazená maskou používanou na modelech Octavia. Nejsilnější verzí byla Škoda Felicia Super, s motorem 1,2 l se dvěma karburátory.'),
(9, '2026-08-28 19:25:58', 1, 'Tatra 97', 'tatra-97', 'Tatrou 97 byl inspirován vůz Volkswagen Brouk, uvedený na trh jen o málo později.', '<p>Tatra 97 nebo Tatra T97 byla československá limuzína vyráběná automobilkou Tatra. Vznikla roku 1937 jako slabší alternativa k Tatře 87. S tou sdílela většinu součástek, byla však menší a méně vybavená (až na výjimky měla jen dva světlomety, základní verze neměla topení, chybělo zde třetí boční okénko a přední okno bylo jednodílné). Rovněž měla slabší motor.</p>\r\n\r\n<p>Tatrou 97 byl inspirován vůz Volkswagen Brouk, uvedený na trh jen o málo později.[1] Brouk měl nápadně podobnou aerodynamickou karoserii a vzadu uložený čtyřválcový vzduchem chlazený motor stejně jako Tatra 97. Konstruktér Brouka Ferdinand Porsche přiznal, že Brouk byl kvůli urychlení a zlevnění vývoje inspirován vozy Tatra, hlavně typem 97. Tatra zahájila soudní proces, který byl roku 1939 kvůli invazi německých vojsk do Československa ukončen. Po válce se případ znovu otevřel a roku 1961 Volkswagen Tatře zaplatil 3 000 000 německých marek.</p>'),
(10, '2026-08-28 19:33:12', 1, 'Bugatti Type 59', 'bugatti-type-59', 'Bugatti Type 59 byl závodní vůz Grand Prix z 30. let 20. století, je považován za poslední vůz Bugatti pro závody na Velkých cenách před druhou světovou válkou a jako vrcholné dílo Ettora Bugattiho.', '<p>Bugatti Type 59 byl závodní vůz Grand Prix z 30. let 20. století, je považován za poslední vůz Bugatti pro závody na Velkých cenách před druhou světovou válkou a jako vrcholné dílo Ettora Bugattiho. Vyznačoval se 3,3litrovým osmiválcovým přeplňovaným motorem s výkonem přibližně 250 koní, nízkou hmotností (748 kg) a maximální rychlostí kolem 260 km/h.</p>\r\n<p>Posledním závodním vozem Bugatti 30. let 20. století byl Typ 59 z roku 1933 pro formuli platnou od roku 1934, tzv. \"formule 750 kg\". První Type 59 s motorem 2,8 l byl představen 24. září 1933 na Grand Prix San Sebastian. Později používal zvětšenou verzi řadového osmiválcového motoru Typu 57 o objemu 3,3 l (vrtání x zdvih 72 x 100 mm), umístěnou v upraveném podvozku Typu 54. Vyrobilo se pouze osm kusů v konfiguraci Grand Prix; některé byly později přestavěny na sportovní vozy.[2] Mezi charakteristické prvky patřily ráfky kol s drátovými paprsky a sofistikované tlumiče, které zajišťovaly vynikající jízdní vlastnosti a vynikal svým výkonem a úspěchy v závodech, včetně vítězství v belgické a alžírské Grand Prix v roce 1934.</p>');

-- --------------------------------------------------------

--
-- Struktura tabulky `article_category`
--

CREATE TABLE `article_category` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `article_category`
--

INSERT INTO `article_category` (`id`, `article_id`, `category_id`) VALUES
(6, 1, 1),
(3, 2, 2),
(8, 6, 3),
(9, 7, 1),
(10, 8, 1),
(11, 9, 2),
(12, 10, 3);

-- --------------------------------------------------------

--
-- Struktura tabulky `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Vypisuji data pro tabulku `category`
--

INSERT INTO `category` (`id`, `name`, `url`) VALUES
(1, 'Škoda', 'skoda'),
(2, 'Tatra', 'tatra'),
(3, 'Bugatti', 'bugatti');

-- --------------------------------------------------------

--
-- Struktura tabulky `cms`
--

CREATE TABLE `cms` (
  `id` int(11) NOT NULL,
  `date_add` timestamp NOT NULL DEFAULT current_timestamp(),
  `on_homepage` int(11) DEFAULT 0,
  `has_picture` int(11) DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Vypisuji data pro tabulku `cms`
--

INSERT INTO `cms` (`id`, `date_add`, `on_homepage`, `has_picture`, `title`, `url`, `description`) VALUES
(1, '2020-03-15 09:54:29', 1, 1, 'Magazín Veteran Cars', 'magazin-veteran-cars', ''),
(3, '2020-03-16 13:25:52', 0, 1, 'Aktuality', 'aktuality', '<h3>Jubilejní Prague Car Festival nabídne ještě víc zážitků</h3>\r\n<h6>Největší automobilový veletrh v Česku představí ve svém 15. ročníku řadu atraktivních novinek.</h6>\r\n\r\n<p>Akce Prague Car Festival otevře ve dnech 31. října a 1. listopadu 2026 brány výstaviště PVA Expo Praha. Návštěvníci se mohou těšit na stovky unikátních automobilů a motocyklů, špičkové tuningové projekty, závodní speciály, historické skvosty i exkluzivní supersporty. Patnáctý ročník navíc nabídne několik významných novinek, které rozšíří program pro celé rodiny, fanoušky motorsportu i automobilové historie.</p>\r\n\r\n<p>Prague Car Festival každoročně nabízí návštěvníkům jedinečnou možnost vidět automobily a motocykly, které se na českých výstavách objevují jen výjimečně. Ani letošní ročník nebude výjimkou. Základem jsou tradiční pilíře – tematické výstavy Eibach Tuning Expo, Liqui Moly Racing Expo, Spies Hecker Classic Expo a nově také Sherlog Automotive Expo. Atraktivními doplňky budou opět oblíbené sekce Pirelli Auto Exclusive a Game Zone, venkovní Arena s dynamickými ukázkami i bohatý doprovodný program.</p>'),
(5, '2020-03-22 08:16:08', 0, 0, 'Autoři', 'autori', '<h4>Kamila Vojtíšková - šéfredaktorka</h4>\r\n<p>Po mnohaletých zkušenostech z médií, ať již tištěných, nebo televizních jsem se rozhodla založit tento magazín o starých vozech. Krása veteránů mě fascinuje už od mala, a proto jsem ráda, že se o tuto vášeň mohu podělit s ostatními.</p>\r\n<h4>Jan Novák - redaktor</h4>\r\n<p>Láska k motorům, motorkám a autům ho provází už od mladých let. Během svého života vyzkoušel řadu vozidel na vlastní kůži. V mládí se dokonce účastnil automobilových závodů. Nyní o autech rád píše články a zajímavosti.</p>\r\n<h4>Lucie Svobodová - editorka</h4>\r\n<p>Markéta propojila svoje pedagogické zkušenosti s tvůrčí aktivitou, vyhledává zajímavosti a stará se o čtivost a správnost našich stránek.</p>\r\n<h4>Martin Dvořák - fotograf</h4>\r\n<p>Po studiu marketingu ho učarovala profese fotografa. Svoji zálibu přeměnil v profesi a nyní nás zásobuje fascinujícími fotografiemi starých krasavců s motorem.</p>\r\n');

-- --------------------------------------------------------

--
-- Struktura tabulky `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `date_add` timestamp NOT NULL DEFAULT current_timestamp(),
  `author_name` varchar(255) NOT NULL,
  `author_email` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `house_number` varchar(255) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Vypisuji data pro tabulku `contact`
--

INSERT INTO `contact` (`id`, `company`, `street`, `house_number`, `zip`, `city`, `state`, `email`, `phone`) VALUES
(1, 'Veteran Cars', 'Ulice', '123', 73101, 'Město', 'Česká republika', 'admin@local.cz', '+420 605 123 456');

-- --------------------------------------------------------

--
-- Struktura tabulky `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `role` enum('member','admin') NOT NULL DEFAULT 'member'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `email`, `password`, `role`) VALUES
(3, 'veteran', 'cars', 'cms@veterancars.cz', '$2y$10$ZxHGDRdlgjDikXe7PF2HZ.bhWQp1YZyqwzQJxndJO8gh10KmyP82u', 'admin'),
(4, 'Tester', 'X', 'tester@veterancars.cz', '$2y$10$tCPdSQlbd.BJvanYR4YCG.u8xoBwwApGcEyD/oKbOP9gQE0XkF0Xe', 'admin');

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `article_category_unique` (`article_id`,`category_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `article_id` (`article_id`);

--
-- Indexy pro tabulku `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`);

--
-- Indexy pro tabulku `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_blog_articles_id_fk` (`article_id`);

--
-- Indexy pro tabulku `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING BTREE;

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pro tabulku `article_category`
--
ALTER TABLE `article_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pro tabulku `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pro tabulku `cms`
--
ALTER TABLE `cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pro tabulku `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `article_category`
--
ALTER TABLE `article_category`
  ADD CONSTRAINT `article_category_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `article_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Omezení pro tabulku `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_blog_posts_id_fk` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
