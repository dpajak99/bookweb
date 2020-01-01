-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 25 Mar 2019, 15:35
-- Wersja serwera: 10.1.16-MariaDB
-- Wersja PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `bookweb_sql`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `adres`
--

CREATE TABLE `adres` (
  `id_adresu` int(11) NOT NULL,
  `id_klienta` int(11) NOT NULL,
  `miasto` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `ulica` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `numer` varchar(6) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `kod_pocztowy` varchar(6) NOT NULL,
  `kraj` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `wojewodztwo` varchar(30) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `adres`
--

INSERT INTO `adres` (`id_adresu`, `id_klienta`, `miasto`, `ulica`, `numer`, `kod_pocztowy`, `kraj`, `wojewodztwo`) VALUES
(25, 25, 'admin', 'admin', 'admin', 'admin', 'Polska', 'ma?opolskie'),
(26, 26, 'Wola Rz?dzi?ska', 'Jod??wka-Wa?ki', '147b', '33-150', 'Polska', 'ma?opolskie'),
(28, 28, '321', '321', '321', '321', '321', '321');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autor`
--

CREATE TABLE `autor` (
  `id_autora` int(11) NOT NULL,
  `imie` varchar(30) NOT NULL,
  `nazwisko` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `autor`
--

INSERT INTO `autor` (`id_autora`, `imie`, `nazwisko`) VALUES
(1, 'dominik', 'pajonk'),
(2, 'jon', 'zbylut'),
(3, 'J.K.', 'Rowling'),
(4, 'Michael', 'Grant'),
(5, 'Michael', 'Grant'),
(6, 'Walter', 'Lord'),
(7, 'James', 'E L'),
(8, 'Christi', 'Daugherty'),
(9, 'Suzanne', 'Collins'),
(10, 'Adolf', 'Hitler'),
(11, 'Christopher ', 'Macht');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategoria`
--

CREATE TABLE `kategoria` (
  `id_kategorii` int(11) NOT NULL,
  `id_ksiazki` int(11) NOT NULL,
  `nazwa_kategorii` varchar(20) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `kategoria`
--

INSERT INTO `kategoria` (`id_kategorii`, `id_ksiazki`, `nazwa_kategorii`) VALUES
(1, 1, 'Fantastyczne'),
(2, 2, 'Przygodowe'),
(3, 3, 'Romanse'),
(4, 4, 'Kryminały'),
(5, 5, 'Bajki'),
(6, 6, 'Horror'),
(7, 7, 'Fantastyczne'),
(8, 8, 'Przygodowe'),
(9, 9, 'Romanse'),
(10, 1, 'Kryminały'),
(11, 2, 'Bajki'),
(12, 3, 'Horror'),
(13, 4, 'Fantastyczne'),
(14, 5, 'Przygodowe'),
(15, 6, 'Romanse'),
(16, 7, 'Kryminały'),
(17, 8, 'Bajki'),
(18, 9, 'Horror'),
(22, 10, 'Fantasy'),
(23, 10, 'Dla dzieci'),
(24, 0, 'Dla dzieci'),
(25, 11, 'Fantasy'),
(26, 11, 'Przygodowe'),
(27, 11, 'Dla dzieci'),
(28, 12, 'Fantasy'),
(29, 12, 'Przygodowe'),
(30, 12, 'Dla dzieci'),
(31, 13, 'Fantasy'),
(32, 13, 'Przygodowe'),
(33, 13, 'Dla dzieci'),
(34, 14, 'Fantasy'),
(35, 14, 'Przygodowe'),
(36, 14, 'Dla dzieci'),
(37, 15, 'Fantasy'),
(38, 15, 'Przygodowe'),
(39, 15, 'Dla dzieci'),
(40, 16, 'Fantasy'),
(41, 16, 'Przygodowe'),
(42, 16, 'Dla dzieci'),
(43, 17, 'Fantasy'),
(44, 17, 'Przygodowe'),
(45, 17, 'Romanse'),
(49, 18, 'Fantasy'),
(50, 18, 'Przygodowe'),
(51, 18, 'Romanse'),
(55, 19, 'Fantasy'),
(56, 19, 'Przygodowe'),
(57, 19, 'Romanse'),
(64, 20, 'Fantasy'),
(65, 20, 'Przygodowe'),
(66, 20, 'Romanse'),
(67, 21, 'Fantasy'),
(68, 21, 'Przygodowe'),
(69, 21, 'Romanse'),
(70, 22, 'Fantasy'),
(71, 22, 'Przygodowe'),
(72, 22, 'Romanse'),
(73, 23, 'Fantasy'),
(74, 23, 'Przygodowe'),
(75, 23, 'Romanse'),
(76, 24, 'Romanse'),
(77, 24, 'Dramat'),
(78, 24, 'Literatura faktu'),
(79, 25, 'Romanse'),
(80, 25, 'Erotyczne'),
(81, 25, 'Komedia'),
(82, 26, 'Romanse'),
(83, 26, 'Erotyczne'),
(84, 26, 'Komedia'),
(85, 27, 'Romanse'),
(86, 27, 'Erotyczne'),
(87, 27, 'Komedia'),
(88, 28, 'Kryminalne'),
(89, 28, 'Fantasy'),
(90, 28, 'Suspens'),
(91, 29, 'Kryminalne'),
(92, 29, 'Fantasy'),
(93, 29, 'Suspens'),
(94, 30, 'Kryminalne'),
(95, 30, 'Fantasy'),
(96, 30, 'Suspens'),
(97, 31, 'Kryminalne'),
(98, 31, 'Fantasy'),
(99, 31, 'Suspens'),
(100, 32, 'Kryminalne'),
(101, 32, 'Fantasy'),
(102, 32, 'Suspens'),
(103, 33, 'Fantasy'),
(104, 33, 'Przygodowe'),
(105, 33, 'Utopijne'),
(106, 34, 'Fantasy'),
(107, 34, 'Przygodowe'),
(108, 34, 'Utopijne'),
(109, 35, 'Fantasy'),
(110, 35, 'Przygodowe'),
(111, 35, 'Utopijne'),
(112, 36, 'Historyczne'),
(113, 36, 'Autobiografia'),
(114, 36, ''),
(115, 37, 'Historyczne'),
(116, 37, 'Religijne'),
(117, 37, 'Motywacyjne'),
(118, 38, 'Historyczne'),
(119, 38, 'Religijne'),
(120, 38, 'Motywacyjne');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

CREATE TABLE `klient` (
  `id_klienta` int(11) NOT NULL,
  `id_adresu` int(11) NOT NULL,
  `imie` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `pesel` int(11) NOT NULL,
  `numer_telefonu` int(11) NOT NULL,
  `email` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `haslo` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `ranga` varchar(32) COLLATE utf8_polish_ci NOT NULL DEFAULT 'Użytkownik'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `klient`
--

INSERT INTO `klient` (`id_klienta`, `id_adresu`, `imie`, `nazwisko`, `pesel`, `numer_telefonu`, `email`, `haslo`, `ranga`) VALUES
(25, 25, 'Dominik', 'Pająk', 0, 784099089, 'dominik00801@gmail.com', '123', 'Użytkownik'),
(26, 26, 'admin', 'admin', 0, 666528114, 'admin@bookweb.pl', '123', 'Administrator'),
(27, 0, 'imie', 'nazwisko', 0, 123, 'zzz', '123', ''),
(28, 28, '321', '321', 0, 312, '321', '321', 'Użytkownik');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazka`
--

CREATE TABLE `ksiazka` (
  `id_ksiazki` int(11) NOT NULL,
  `tytul` blob,
  `autor` varchar(50) NOT NULL,
  `rok_wydania` int(4) NOT NULL,
  `cena` decimal(10,0) NOT NULL,
  `jezyk_ksiazki` varchar(20) NOT NULL,
  `wydawnictwo` varchar(30) NOT NULL,
  `status` varchar(32) DEFAULT NULL,
  `shortdesc` varchar(2000) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL DEFAULT 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `ksiazka`
--

INSERT INTO `ksiazka` (`id_ksiazki`, `tytul`, `autor`, `rok_wydania`, `cena`, `jezyk_ksiazki`, `wydawnictwo`, `status`, `shortdesc`) VALUES
(1, 0x54657374, '1', 1333, '32', 'pl', 'brak', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(2, 0x7465737432, '2', 1234, '234', 'pl', 'non', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(3, 0x70616a6f6e6b2077206b7261696e696520637a61726f77, '1', 1099, '55', 'pl', 'non', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(4, 0x6b756b756d6261, '1', 1099, '55', 'pl', 'non', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(5, 0x737a6172727a756a656d79, '1', 1099, '432', 'pl', 'non', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(6, 0x50616e205461646575737a, '1', 1099, '666', 'pl', 'non', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(7, 0x536f706c696361, '1', 1099, '784', 'pl', 'non', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(8, 0x486172727920506f74746572, '2', 1099, '14', 'pl', 'non', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(10, 0x486172727920506f74746572206920496e7379676e696120c59a6d6965726369, '3', 2007, '40', '', '', '', 'Harry Potter i Insygnia Śmierci: Część I – amerykańsko-brytyjski film na podstawie powieści autorstwa J.K. Rowling o tym samym tytule. Jest on siódmym obrazem z serii o Harrym Potterze. Ostatni tom powieści został podzielony na dwie odrębne części.'),
(11, 0x486172727920506f747465722069204b6f6d6e6174612054616a656d6e6963, '3', 1998, '38', '', '', '', 'Harry Potter i Komnata Tajemnic – druga część książki z cyklu Harry Potter.'),
(12, 0x486172727920506f747465722069204b616d6965c5842046696c6f7a6f6669637a6e79, '3', 1997, '37', '', '', '', 'Harry Potter i Kamień Filozoficzny – pierwsza książka z siedmiotomowego cyklu autorstwa angielskiej powieściopisarki J.K. Rowling, przedstawiająca początek historii młodego czarodzieja Harry’ego Pottera.'),
(13, 0x486172727920506f74746572206920437a617261204f676e6961, '3', 200, '40', '', '', '', 'Harry Potter i Czara Ognia – czwarta część cyklu powieści J.K. Rowling o przygodach kilkunastoletniego czarodzieja'),
(14, 0x486172727920506f747465722069204b7369c485c5bcc4992050c3b3c5826b727769, '3', 2005, '40', '', '', '', 'Harry Potter i Książę Półkrwi – powieść brytyjskiej pisarki J.K. Rowling, 6. część losów młodego czarodzieja – Harry’ego Pottera. Książka została wydana 16 lipca 2005 i 28 stycznia 2006.'),
(15, 0x486172727920506f747465722069207769c4997a6965c58420417a6b6162616e75, '3', 1999, '38', '', '', '', 'Harry Potter i więzień Azkabanu – powieść brytyjskiej pisarki J.K.Rowling, 3. część losów Harry’ego Pottera.'),
(16, 0x486172727920506f7474657220692070727a656b6cc499746520647a6965636b6f, '3', 2016, '50', '', '', '', 'Harry Potter i przeklęte dziecko – dwuczęściowa westendowa sztuka teatralna napisana przez Jacka Thorne’a na podstawie historii autorstwa J.K. Rowling, reżyserowana przez Johna Tiffany’ego.'),
(17, 0x476f6e653a205a6e696b6ec4996c692e2046617a61207069657277737a613a204e6965706f6bc3b36a, '5', 2008, '27', '', '', '', 'Pierwsza część sześciotomowego cyklu dla młodzieży, inteligentny, trzymający w napięciu thriller rekomendowany przez króla powieści grozy, Stephena Kinga. W niewielkim amerykańskim miasteczku, Perdido Beach, w jednej chwili znikają wszyscy, którzy ukończyli piętnaście lat – nauczyciele, rodzice, sprzedawcy, kierowcy znajdujących się w ruchu samochodów. Wszyscy. Świat bez dorosłych nie jest tak zabawny, jak mogłoby się wydawać – w rozciągającej się wokół miasta strefie zaczyna rządzić prawo pięści. Bez policjantów, opiekunów, lekarzy ci, którzy niedawno byli jeszcze dziećmi, wprowadzają własne porządki. Jednak władza deprawuje, zwłaszcza gdy sięgają po nią nieodpowiednie osoby, takie jak charyzmatyczny i pozbawiony zahamowań Caine. Główny bohater, Sam, stara się wyjaśnić zagadkę i nie dopuścić, by w miasteczku szerzyła się przemoc. Ma jednak niewiele czasu na znalezienie odpowiedzi na dręczące wszystkich pytania. Niedługo skończy piętnaście lat. A wtedy zniknie.'),
(19, 0x476f6e653a205a6e696b6ec4996c692e2046617a612074727a656369613a204bc582616d73747761, '5', 2010, '29', '', '', '', 'Minęło siedem miesięcy od dnia, w którym skończył się świat. Od dnia, w którym wszyscy dorośli zniknęli. Ale Apokalipsa dopiero się rozkręca.\r\n\r\nSam i Astrid już wiedzą – z każdym dniem będzie tylko gorzej. Wszechobecny, niekończący się głód, uderzający do głów alkohol i dostęp do broni stanowią piorunującą mieszankę. Ale to nie wszystko. Jedna noc zmienia wszystko w Perdido Beach.\r\n\r\nUmarli wstają z grobów.\r\n\r\nGdy z zaświatów powraca znienawidzony przez wszystkich Drake, gdy Astrid toczy nierówną walkę z samozwańczą władzą, gdy Perdido Beach płonie, a „normalni” ruszają na „mutantów”, pojawia się ktoś, kto niesie nadzieję.\r\n\r\nProrokini Orsay mówi, że nadzieją na ucieczkę z tego piekła jest śmierć, że tylko ona pozwala przekroczyć granicę ETAPu... Przerażone dzieciaki zrobią wszystko, by uciec z Perdido Beach. Gdy desperacja przybiera na sile, hamulce są coraz mniejsze. Jak wiele czasu upłynie, nim w mieście dojdzie do zbiorowego samobójstwa?'),
(20, 0x476f6e653a205a6e696b6ec4996c692e2046617a612064727567613a2047c582c3b364, '5', 2008, '28', '', '', '', 'Tesrsrsrsrs'),
(21, 0x476f6e653a205a6e696b6ec4996c692e2046617a6120637a77617274613a20506c616761, '5', 2011, '29', '', '', '', 'Nie ma już nadziei w Perdido Beach.\r\n\r\nBrakuje wody, kolejne dzieciaki umierają na grypę, której uleczyć nie potrafi nawet Lana. Na dodatek z ciałami niektórych mieszkańców ETAP-u dzieje się coś strasznego - tak strasznego, że nie mogąc znieść męczarni, błagają o śmierć. To coś rozprzestrzenia się równie szybko, jak śmiercionośny wirus grypy. Rada ogłasza kwarantannę na terenie całego miasta. Drake ucieka z więzienia. Krążcy po ulicach biczoręki budzi powszechną grozę.\r\n\r\nPrawdziwa bitwa toczy się jednak w niewielkim pokoju, w domu na skraju Perdido Beach... Mały Pete, autystyczny brat Astrid, śni w morderczej gorączce. Jednak jego upiorne wizje, to nie majaki szaleńca – gdy rozum śpi, budzą się upiory... \r\n\r\nCoś szuka dostępu do miasta, coś bardzo, bardzo złego, coś, czego nie można zobaczyć ani pokonać na jawie.'),
(22, 0x476f6e653a205a6e696b6ec4996c692e2046617a61207069c48574613a204369656d6e6fc59bc487, '5', 2012, '28', '', '', '', 'Perdido Beach, Kalifornia. Zawieszenie broni. Pokój w ETAPie jest kruchy jak szkło.\r\n\r\nCain rządzi w swojej domenie żelazną ręką. Sam nie może zaznać spokoju. Ustanowili nowe prawa, przetrwali głód, plagę kłamstw, wreszcie zarazę… Ale teraz bariera staje się czarna. ETAP ogarnia nieprzenikniona ciemność.\r\n\r\nAle mrok nie jest jedynym zagrożeniem. Giną zwierzęta i ludzie. Nieznana dotąd moc wywraca ich ciała na drugą stronę.\r\n\r\nIm głębsze cienie, tym bardziej Ciemność rośnie w siłę. Ze swego leża w głębi ziemi Gaiaphage sięga po to, czego najbardziej pragnie. Po ludzkie ciało, w którym mogłoby się odrodzić.'),
(23, 0x476f6e653a205a6e696b6ec4996c692e2046617a6120737ac3b37374613a20c59a77696174c5826f, '5', 2013, '29', '', '', '', 'Od chwili, gdy wszyscy dorośli zniknęli z Perdido Beach, minął już prawie rok. Pozbawieni kontroli i opieki młodzi ludzie przeżyli głód, zarazę, bezpardonową walkę o władzę. Przetrwali. Przynajmniej część z nich. Powrót do normalności był ich marzeniem.Teraz to marzenie może się ziścić i nagle zewnętrzny świat napawa mieszkańców ETAPu lękiem. W obrębie bariery wydarzyło się wiele rzeczy, które nie znajdą usprawiedliwienia w nieświadomym niczego społeczeństwie. Śmierć, okrucieństwo, błędne decyzje, złe wybory... Co czeka na tych, którzy złamali wszystkie prawa rządzące w normalnym społeczeństwie? Może ETAP jest jedynym miejscem, w którym mogą czuć się bezpieczni?'),
(24, 0x546974616e69632e2050616d69c499746e61206e6f63, '6', 2016, '25', '', '', '', 'Najważniejsza książka poświęcona tragedii Titanica, bez której nie byłoby słynnego filmu Jamesa Camerona, po raz pierwszy w polskim wydaniu. \r\n\r\nWalter Lord przenosi nas na pokład tonącego statku, opisując minuta po minucie poruszającą historię walki o przetrwanie ponad dwóch tysięcy pasażerów.\r\n\r\nOpowiada przebieg dramatycznej nocy z 14 na 15 kwietnia 1912 roku z perspektywy mostku kapitańskiego, salonów pierwszej klasy i kajut pasażerów tłoczących się na najniższych pokładach.\r\n\r\nAutor towarzyszy ofiarom katastrofy od chwili zderzenia statku z górą lodową aż do ich śmierci lub szczęśliwego ocalenia w szalupach ratunkowych, pokazuje akty heroicznej odwagi i tchórzostwa. Pełna emocji opowieść pozwala czytelnikowi poczuć się jednym z pasażerów legendarnego transatlantyku, który miał być niezatapialny.'),
(25, 0x5069c499c487647a69657369c4857420747761727a79204772657961, '7', 2012, '40', '', '', '', 'Książka „Pięćdziesiąt twarzy Greya” E. L. James opowiada losy studentki literatury Anastasi Steel i zabójczo przystojnego biznesmena.\r\n\r\nMłoda dziennikarka jedzie w zastępstwie swojej koleżanki przeprowadzić wywiad dla gazety studenckiej z rekinem biznesu, przystojnym i zamożnym Christianem Greyem. Od pierwszych minut spotkania mężczyzna zaczyna fascynować i urzekać Ann. Czuje, że ją onieśmiela, a w powietrzu wisi coś elektryzującego, czego dziewczyna nie potrafi nazwać. Z ulgą kończąc rozmowę postanawia zapomnieć o intrygującym przystojniaku i wrócić do swojego poukładanego życia. Gdy wydaje się, że już nic się nie zmieni w życiu Ann, nazajutrz rano w sklepie, w którym dorywczo pracuje, zjawia się Christian Grey. I proponuje kolejne spotkanie...\r\n\r\nNiedoświadczona i niewinna dziewczyna nie wie jeszcze, że Christian opętany jest potrzebą sprawowania nad wszystkim kontroli i że pragnie jej na własnych, dość niezwykłych warunkach… '),
(26, 0x4369656d6e69656a737a61207374726f6e61204772657961, '7', 2012, '40', '', '', '', 'Trylogia „Pięćdziesiąt odcieni” rozpętała na świecie prawdziwe szaleństwo. Sprzedaż w Stanach Zjednoczonych sięgnęła 15 milionów już w pierwszych trzech miesiącach sprzedaży.\r\n\r\nMłodziutką studentkę Anę Steele i charyzmatycznego miliardera Christiana Greya połączył niecodzienny układ, który z czasem przerodził się w coś znacznie głębszego. Jednak demony Greya zwyciężyły, Ana zerwała uzależniający związek i zajęła się karierą.\r\nRozstanie okazuje się bolesne. Ogarnięci obsesyjną tęsknotą kochankowie nie potrafią bez siebie żyć. Kiedy więc Christian proponuje Anie zupełnie nowy układ, dziewczyna nie potrafi mu odmówić. Wkrótce zaczynają uczyć się siebie nawzajem. Christian walczy z wieczną potrzebą kontroli i stopniowo oswaja drzemiące w nim demony. Ana uczy się życia w luksusie i bronienia własnej niezależności. Kiedy wydaje się, że świat miłości, pasji i nieskończonych możliwości stoi przed nimi otworem, ciemne chmury gromadzą się nad luksusowym wieżowcem, w którym mieszkają…'),
(27, 0x4e6f7765206f626c69637a65204772657961, '7', 2013, '35', '', '', '', '„Nowe oblicze Greya”, trzeci tom bestsellerowej powieści autorstwa E.L. James, ukazuje dalsze losy Ann i Christiana.\r\n\r\nPrzypadkowe spotkanie dało początek fali namiętności i miłości, która z czasem wcale nie osłabła. Wspólna codzienność okazała się dla nich nie lada wyzwaniem, któremu Anastasia i Christian dzielnie stawiają czoła w imię tego, co ich łączy. Głębokie uczucie pary kochanków dryfujących po wzburzonym morzu uczuć, może zniszczyć były szef Any... Jack Hyde, który poprzysiągł zemstę i cierpliwie czeka na swoją szansę, by uderzyć w najmniej spodziewanym momencie. Niepewni tego, co zgotuje im los, razem czekają na to, co sie wydarzy... Czy ich poruszająca historia miłosna zakończy się happy endem? A może piękny sen przerwie były szef Any?\r\n\r\nNajlepiej sprzedająca się trylogia ostatniej dekady!'),
(28, 0x57796272616e69, '8', 2013, '69', '', '', '', 'Gdy wszyscy wokół kłamią, komu zaufasz?\r\n\r\nŚwiat Allie legł w gruzach. Jej ukochany brat zaginął, a ona została aresztowana – kolejny raz. Rodzice podejmują desperacką decyzję o wysłaniu dziewczyny do elitarnej szkoły z internatem. Akademia Cimmeria nie jest jednak zwyczajną szkołą. Panują tu dziwne zasady, a uczniowie to w większości bogate dzieci wpływowych rodziców. Kiedy jedna z uczennic zostaje zamordowana, Allie zaczyna rozumieć, że Akademia Cimmeria skrywa mroczny sekret. Czy w jego odkryciu pomoże dziewczynie przystojny Sylvain? A może outsider Carter?\r\n\r\nJaką tajemnicę kryje historia rodziny dziewczyny? Kim tak naprawdę jest Allie?'),
(29, 0x447a6965647a696374776f, '8', 2013, '25', '', '', '', 'Zimne kalkulacje i porywy serca.\r\nWielka polityka i szkolne troski.\r\n\r\nDrugi tom bestsellerowej sagi Wybrani zabierze Was ponownie do najbardziej ekskluzywnej szkoły w Wielkiej Brytanii i odkryje jej kolejne sekrety.\r\n\r\nCzy Allie pozna wreszcie największą tajemnicę swojego życia i rozwiąże zagadkę Nocnej Szkoły? Kim jest tajemniczy szpieg działający w Akademii Cimmeria? Czy szkoła jest gotowa na kolejny atak Nathaniela?'),
(30, 0x5a6167726fc5bc656e69, '8', 2014, '25', '', '', '', 'Trzeci tom bestsellerowej sagi "Wybrani".\r\n\r\nAkademia Cimmeria stała się dla Allie czymś więcej niż szkołą – była jej schronieniem. Jednak grupa ludzi powiązanych z rodziną dziewczyny próbuje zniszczyć wszystko to, co dla Allie ważne. Co gorsza, ktoś blisko związany z uczniami Cimmerii dopuścił się zdrady i wszystkich opanowuje paranoja. W obawie przed atakiem Nathaniela wybuchają wewnętrzne walki.\r\nJednak to nie uderzenia z zewnątrz należy się obawiać…'),
(31, 0x5a62756e746f77616e69, '8', 2014, '35', '', '', '', 'Po ataku Nathaniela szkoła staje się miejscem paranoicznym – jest w niej więcej strażników niż uczniów. Ceną za bezpieczeństwo podopiecznych jest ich wolność.\r\nZdesperowana Allie zrobi wszystko, by powstrzymać podstępnego wroga. Zgadza się nawet na udział w niebezpiecznych nocnych misjach zorganizowanych przez Lucindę. Carter i Sylvain są gotowi walczyć u jej boku. Obaj ją kochają, lecz dziewczyna musi podjąć jedną z najważniejszych decyzji w swoim życiu. Żaden z nich nie będzie czekać wiecznie.\r\n '),
(32, 0x4e69657ac5826f6d6e69, '8', 2015, '36', '', '', '', 'Książka nominowana w Plebiscycie Książka Roku 2015 lubimyczytać.pl w kategorii Literatura młodzieżowa. \r\n\r\nNathaniel zdobywa przewagę. Uczniowie Akademii Cimmeria podupadają na duchu. Udręczona Allie martwi się nie tylko o szkołę, ale także o los Cartera. Wie jednak, że musi odnaleźć w sobie siły do walki, dlatego namawia Isabelle do wznowienia treningów w Nocnej Szkole. Uważa, że tylko wtedy uczniowie nie utracą wiary w zwycięstwo.\r\nCzy Nathaniela można pokonać? Jak wiele będą gotowi poświęcić bohaterowie i jakie tajemnice jeszcze skrywają?\r\n\r\nDowiedz się, czytając ostatnią część bestsellerowej serii „Wybrani”.'),
(33, 0x4b6f736f67c5826f73, '9', 2008, '10', '', '', '', 'Z okazji listopadowej premiery pierwszej części Kosogłosa ostatnia część trylogii Suzanne Collins ukazuje się w filmowej okładce.\r\n\r\nKatniss po ciężkich przeżyciach na arenie przebywa z matką, Prim i przyjaciółmi w Trzynastce, dystrykcie, który szykuje się do rozprawy z Kapitolem. Katniss, mimo początkowej niechęci, decyduje się zostać Kosogłosem – symbolem rewolucji przeciwko Kapitolowi.'),
(34, 0x4967727a79736b6120c59b6d6965726369, '9', 2008, '60', '', '', '', '"Igrzyska śmierci", pierwszy tom bestsellerowej trylogii Suzanne Collins, trafia do kin! To opowieść o świecie Panem rządzonym przez okrutne władze, w którym co roku dwójka nastolatków z każdego z dwunastu dystryktów wyrusza na Głodowe Igrzyska, by stoczyć walkę na śmierć i życie.\r\n\r\nBohaterką, a jednocześnie narratorką książki jest szesnastoletnia Katniss Everdeen, która mieszka z matką i młodszą siostrą w jednym z najbiedniejszych dystryktów nowego państwa. Katniss po śmierci ojca jest głową rodziny – musi troszczyć się, by zapewnić byt młodszej siostrze i chorej matce, a już to zasługuje na miano prawdziwej walki o przetrwanie...\r\n\r\nTrylogia Suzanne Collins to prawdziwy bestseller: wszystkie trzy tomy utrzymywały się w czołówce listy bestsellerów magazynu „The New York Times” przez wiele tygodni!'),
(35, 0x572070696572c59b6369656e6975206f676e6961, '9', 2009, '58', '', '', '', 'Listopadowa ekranizacja W pierścieniu ognia Suzanne Collins jest pretekstem do publikacji powieści w ognistej okładce\r\nz kosogłosem - odwołującej się do stylistyki filmowej.\r\n\r\nTo drugi tom trylogii o państwie Panem, gdzie co roku odbywają się emitowane przez telewizję krwawe Głodowe Igrzyska. Uczestniczą w nich nastolatki z każdego z dwunastu dystryktów. Zwycięzca igrzysk może być tylko jeden.\r\nW tej części Katniss i Peeta odbywają obowiązkowe Tournée Zwycięzców, kiedy dowiadują się o fali zamieszek, do których przyczynił się ich zuchwały czyn.\r\nW tle trwają przygotowania do rocznicowych, 75. igrzysk, które przyniosą wyjątkowo zaskakujący obrót spraw...\r\nBo Kapitol jest zły. I Kapitol pragnie zemsty!'),
(36, 0x4d65696e204b616d7066, '10 ', 1925, '50', '', '', '', 'Mein Kampf (pol. Moja walka) – książka napisana przez Adolfa Hitlera w stylu diatryby podczas jego pobytu w więzieniu w Landsbergu na początku lat dwudziestych XX wieku i opublikowana w 1925 (I część) i 1927 (II część).\r\n\r\nNa pierwszej stronie oryginalnego wydania umieszczony jest nekrolog szesnastu zabitych uczestników puczu monachijskiego[1].\r\n\r\nPod koniec sierpnia 1938 nakład książki wyniósł 4 mln egzemplarzy[2].\r\n\r\nBadacz książki Hitlera, Hermann Hammer, wykazał, że choć kolejne jej wydania nieco się od siebie różniły to najważniejsze zmiany merytoryczne zostały dokonane do 1930 r., zaś późniejsze korekty miały jedynie charakter stylistyczny. Wśród zmian, najistotniejszą, z punktu widzenia ideologii nazistowskiej, była rezygnacja z pojęcia demokracji germańskiej na rzecz zasady wodzostwa (niem. Führerprinzip)[1].'),
(38, 0x53706f77696564c5ba204869746c657261, '11', 2016, '25', '', '', '', 'Kwiecień, 1945 rok. Do siedziby Adolfa Hitlera na specjalne wezwanie wodza zostaje sprowadzony "Szlachetny Żyd", Eduard Bloch. Ten sam, który przez wiele lat leczył matkę kanclerza Trzeciej Rzeszy, za co Hitler był mu szalenie wdzięczny. Führer oznajmia mu, że ten dostąpi niebywałego zaszczytu spisania z nim ostatniej rozmowy. Wszystko dzieje się kilka dni przed śmiercią Hitlera.\r\n\r\nTak mocna książka nie została opublikowana od lat! Po raz pierwszy na świecie ukazuje się wywiad, którego Adolf Hitler udzielił przed swoją śmiercią "Szlachetnemu Żydowi". Kanclerz Trzeciej Rzeszy, jeden z największych zbrodniarzy na świecie tłumaczy się z tego dlaczego nienawidził Żydów, opowiada o ciemnych stronach dzieciństwa, o tym jak upił się do nieprzytomności, o swoim życiu erotycznym i o najszczęśliwszym dniu w życiu. Mocna, a zarazem szczera rozmowa, która wciąga już od pierwszych stron.\r\n\r\nDzięki tej spowiedzi będziemy mogli bliżej poznać wodza Trzeciej Rzeszy, który zmienił bieg historii na wiele lat.\r\n\r\nWszystko zaczęło się od prostej historii. Christopher Macht, Niemiec z polskimi korzeniami odnalazł zapiski rozmów przeprowadzonych przez wieloletniego lekarza matki Adolfa Hitlera -Eduarda Blocha. Jeżeli chcecie poznać z bliska największego zbrodniarza wojennego, stanąć z nim twarzą w twarz, poczuć na sobie jego wzrok -ta książka jest właśnie dla Was!');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ocena_ksiazki`
--

CREATE TABLE `ocena_ksiazki` (
  `id` int(11) NOT NULL,
  `id_klienta` int(11) NOT NULL,
  `id_ksiazki` int(11) NOT NULL,
  `ocena` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `ocena_ksiazki`
--

INSERT INTO `ocena_ksiazki` (`id`, `id_klienta`, `id_ksiazki`, `ocena`) VALUES
(1, 28, 3, 4),
(2, 26, 1, 3),
(3, 26, 16, 4),
(4, 26, 15, 3),
(5, 26, 14, 5),
(6, 26, 13, 5),
(7, 26, 12, 4),
(8, 26, 11, 5),
(9, 26, 19, 2),
(10, 26, 38, 5),
(11, 26, 5, 4),
(12, 26, 6, 4);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `adres`
--
ALTER TABLE `adres`
  ADD PRIMARY KEY (`id_adresu`);

--
-- Indexes for table `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id_autora`);

--
-- Indexes for table `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`id_kategorii`);

--
-- Indexes for table `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`id_klienta`);

--
-- Indexes for table `ksiazka`
--
ALTER TABLE `ksiazka`
  ADD PRIMARY KEY (`id_ksiazki`),
  ADD KEY `autor` (`autor`);

--
-- Indexes for table `ocena_ksiazki`
--
ALTER TABLE `ocena_ksiazki`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `adres`
--
ALTER TABLE `adres`
  MODIFY `id_adresu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT dla tabeli `autor`
--
ALTER TABLE `autor`
  MODIFY `id_autora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT dla tabeli `kategoria`
--
ALTER TABLE `kategoria`
  MODIFY `id_kategorii` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT dla tabeli `klient`
--
ALTER TABLE `klient`
  MODIFY `id_klienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT dla tabeli `ksiazka`
--
ALTER TABLE `ksiazka`
  MODIFY `id_ksiazki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT dla tabeli `ocena_ksiazki`
--
ALTER TABLE `ocena_ksiazki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
