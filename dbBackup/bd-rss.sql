-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 19-01-2019 a las 20:00:48
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd-rss`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `Titulo` varchar(254) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `Autor` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Fecha` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Descripcion` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`Titulo`, `Autor`, `Fecha`, `Descripcion`) VALUES
('<a href=https://www.nytimes.com/2019/01/17/arts/comedy-in-nyc-this-week.html?partner=rss&amp;emc=rss>5 Comedy Shows to Catch in N.Y.C. This Weekend</a>', 'SEAN L. MCCARTHY', '2019-01-17 23:00:05', 'Our guide to stand-up, improv and variety shows happening this weekend and in the week ahead.'),
('<a href=https://www.nytimes.com/2019/01/17/arts/dance/dance-in-nyc-this-week.html?partner=rss&amp;emc=rss>7 Dance Performances to See in N.Y.C. This Weekend</a>', 'BRIAN SCHAEFER', '2019-01-17 23:00:05', 'Our guide to dance performances happening this weekend and in the week ahead.'),
('<a href=https://www.nytimes.com/2019/01/17/arts/design/art-and-museums-in-nyc-this-week.html?partner=rss&amp;emc=rss>21 Art Exhibitions to View in N.Y.C. This Weekend</a>', '', '2019-01-17 23:00:04', 'Our guide to new art shows and some that will be closing soon.'),
('<a href=https://www.nytimes.com/2019/01/17/arts/design/book-lovers-grolier-club.html?partner=rss&amp;emc=rss>A Book Loverâ€™s Haven Turns 100</a>', 'JENNIFER SCHUESSLER', '2019-01-18 19:27:20', 'The Grolier Club, the nationâ€™s oldest society of bibliophiles, just celebrated the centennial of its grand Manhattan home. Yes, thereâ€™s a secret staircase hidden in a bookshelf. No, do not use gloves in its library.'),
('<a href=https://www.nytimes.com/2019/01/17/arts/design/national-parks-ansel-adams-photography.html?partner=rss&amp;emc=rss>Criticâ€™s Pick: Ansel Adams in a New Light</a>', 'VICKI GOLDBERG', '2019-01-18 19:23:20', 'The National Parks are in partial shutdown. But Americaâ€™s wilderness shines in a show at the Museum of Fine Arts in Boston that reveals how human intervention has changed purple mountainsâ€™ majesty.'),
('<a href=https://www.nytimes.com/2019/01/17/arts/events-for-children-in-nyc-this-week.html?partner=rss&amp;emc=rss>7 Things to Do With Your Kids in N.Y.C. This Weekend</a>', 'LAUREL GRAEBER', '2019-01-18 03:59:24', 'Our guide to cultural events in New York City for children and teenagers happening this weekend and in the week ahead.'),
('<a href=https://www.nytimes.com/2019/01/17/arts/martin-luther-king-day-legacy.html?partner=rss&amp;emc=rss>Martin Luther King Day: 4 Ways to Honor His Legacy</a>', 'PETER LIBBEY', '2019-01-18 00:15:48', 'An art exhibition, a play and more events that will help you commemorate the civil rights leader.'),
('<a href=https://www.nytimes.com/2019/01/17/arts/music/classical-music-in-nyc-this-week.html?partner=rss&amp;emc=rss>5 Classical Music Concerts to See in N.Y.C. This Weekend</a>', 'DAVID ALLEN', '2019-01-17 23:00:05', 'Our guide to the cityâ€™s best classical music and opera happening this weekend and in the week ahead.'),
('<a href=https://www.nytimes.com/2019/01/17/arts/music/maggie-rogers-heard-it-in-a-past-life.html?partner=rss&amp;emc=rss>Maggie Rogers Went Viral. Then She Had to Become Herself Again.</a>', 'ALEX PAPPADEMAS', '2019-01-18 14:59:10', 'She wowed Pharrell in an N.Y.U. class and held her own in a label bidding war. Now the 24-year-old singer and songwriter is making her first major artistic statement.'),
('<a href=https://www.nytimes.com/2019/01/17/arts/music/pop-rock-and-jazz-in-nyc-this-week.html?partner=rss&amp;emc=rss>12 Pop, Rock and Jazz Concerts to Check Out in N.Y.C. This Weekend</a>', '', '2019-01-17 23:00:10', 'Our guide to pop and rock shows and the best of live jazz happening this weekend and in the week ahead.'),
('<a href=https://www.nytimes.com/2019/01/17/arts/music/stradivarius-sound-bank-recording-cremona.html?partner=rss&amp;emc=rss>To Save the Sound of a Stradivarius, a Whole City Must Keep Quiet</a>', 'MAX PARADISO', '2019-01-18 17:17:59', 'A team in Cremona, Italy, wants to preserve every note from the worldâ€™s finest instruments before they become too fragile to play. But perfect recordings need silence. Lots of it.'),
('<a href=https://www.nytimes.com/2019/01/17/arts/television/best-weekend-tv.html?partner=rss&amp;emc=rss>How Much Watching Time Do You Have This Weekend?</a>', 'MARGARET LYONS', '2019-01-18 00:19:23', 'Do you like pop history, paintings or deep feelings? Our critic Margaret Lyons has recommendations.'),
('<a href=https://www.nytimes.com/2019/01/17/arts/television/masked-singer-costume-designer.html?partner=rss&amp;emc=rss>Those Wild â€˜Masked Singerâ€™ Costumes? She Designed Them</a>', 'LARA ZARUM', '2019-01-18 16:28:11', 'Marina Toybina got her big break working on a Britney Spears music video. Now sheâ€™s behind the elaborate animal costumes on Foxâ€™s hit show.'),
('<a href=https://www.nytimes.com/2019/01/17/books/deborah-harkness-discovery-of-witches-all-souls-trilogy.html?partner=rss&amp;emc=rss>Books News: All Souls Trilogy: Harry Potter for Grown-Ups?</a>', 'PETER HALDEMAN', '2019-01-18 17:49:39', 'Deborah Harknessâ€™s best-selling series â€” brimming with magic, time travel and witches â€” has spawned an avid fan base, an annual convention, and now, a splashy TV adaptation.'),
('<a href=https://www.nytimes.com/2019/01/17/books/review/hark-sam-lipsyte.html?partner=rss&amp;emc=rss>Fiction: A Madcap New Novel Bursts With Fake Gurus, Yoga and a Bit of Bone-Marrow Smuggling</a>', 'JOSH TYRANGIEL', '2019-01-18 00:09:41', 'â€œHarkâ€ â€” Sam Lipsyteâ€™s first novel since 2010â€™s â€œThe Askâ€ â€” is a riff-filled skewering of contemporary culture.'),
('<a href=https://www.nytimes.com/2019/01/17/movies/film-series-in-nyc-this-week.html?partner=rss&amp;emc=rss>4 Film Series to Catch in N.Y.C. This Weekend</a>', 'BEN KENIGSBERG', '2019-01-17 23:00:09', 'Our guide to film series and special screenings.'),
('<a href=https://www.nytimes.com/2019/01/17/movies/glass-review.html?partner=rss&amp;emc=rss>â€˜Glassâ€™ Movie Review: A Nutty Ride With M. Night Shyamalan</a>', 'MANOHLA DARGIS', '2019-01-17 17:30:47', 'In his enjoyable, messy sequel to â€œUnbreakableâ€ and â€œSplit,â€ Shyamalan joins together three adversaries in a world of ordinary terrors.'),
('<a href=https://www.nytimes.com/2019/01/17/movies/solo-review.html?partner=rss&amp;emc=rss>Streaming Movie Review: â€˜Soloâ€™ Review: Alone, Like All the Others</a>', 'SEAN T. COLLINS', '2019-01-17 23:53:13', 'With this opulent Spanish survival saga, Netflix enters some curiously well-populated territory.'),
('<a href=https://www.nytimes.com/2019/01/17/movies/yalitza-aparicio-roma.html?partner=rss&amp;emc=rss>Yalitza Aparicio of â€˜Romaâ€™ and the Politics of Stardom in Mexico</a>', 'LAURA TILLMAN', '2019-01-17 10:00:06', 'The filmâ€™s star was on her way to being a teacher when she landed the role. Now sheâ€™s part of a conversation about Indigenous people and inequality.'),
('<a href=https://www.nytimes.com/2019/01/17/theater/behind-the-sheet-review.html?partner=rss&amp;emc=rss>Criticâ€™s Pick: Review: Reckoning With Medical Betrayals â€˜Behind the Sheetâ€™</a>', 'BEN BRANTLEY', '2019-01-18 15:51:56', 'Charly Evon Simpsonâ€™s quietly commanding play chronicles gynecological experimentation on American slave women in the antebellum South.'),
('<a href=https://www.nytimes.com/2019/01/17/theater/christophe-honore-les-idoles-returning-to-reims-french.html?partner=rss&amp;emc=rss>Theater Review: On Paris Stages, Gay Artists Look Back</a>', 'LAURA CAPPELLE', '2019-01-18 05:51:28', 'A new theatrical work by Christophe HonorÃ© and an adaptation of a book by Didier Eribon see prominent French gay artists reclaim their origins with striking honesty.'),
('<a href=https://www.nytimes.com/2019/01/17/theater/intelligence-review.html?partner=rss&amp;emc=rss>â€˜Intelligenceâ€™ Review: A Diplomatic Mission Thatâ€™s All Improv, No Comedy</a>', 'ALEXIS SOLOSKI', '2019-01-18 03:45:04', 'Negotiators try to role-play their way out of global conflict in this gripping play by Helen Banner. It doesnâ€™t always make sense, but can still thrill.'),
('<a href=https://www.nytimes.com/2019/01/17/theater/whats-new-in-nyc-theater.html?partner=rss&amp;emc=rss>12 Plays and Musicals to Go to in N.Y.C. This Weekend</a>', 'ALEXIS SOLOSKI', '2019-01-17 23:00:04', 'Previews, openings and some last-chance picks.'),
('<a href=https://www.nytimes.com/2019/01/18/arts/design/david-opdyke-university-of-michigan-artist-activist.html?partner=rss&amp;emc=rss>To Get This Artistâ€™s Message, You Have to Look Really Closely</a>', 'LAWRENCE WESCHLER', '2019-01-19 01:05:35', 'With â€œThis Land,â€ David Opdyke melds art and environmental activism, hoping to inspire urgent changes in vision, one postcard, and viewer, at a time.'),
('<a href=https://www.nytimes.com/2019/01/18/arts/design/outsider-art-fair.html?partner=rss&amp;emc=rss>Review: Outsider Art of the Moment: 66 Exhibitors, 7 Countries, 1 Fair</a>', 'HOLLAND COTTER', '2019-01-19 00:46:37', 'The show at the Metropolitan Pavilion is a big, expansive display of mostly smallish things but with a good share of stop-and-stare surprises.'),
('<a href=https://www.nytimes.com/2019/01/18/arts/design/pat-steir-barnes-foundation-waterfall-kiki-smith-feminist.html?partner=rss&amp;emc=rss>Studio Visit: Pat Steir Gets Discovered, Again</a>', 'HILARIE M. SHEETS', '2019-01-18 18:32:29', 'Acclaimed (then overlooked) during five decades, the painter hits a new tempo in life and art with a show at the Barnes, a documentary and a seven-figure sale.'),
('<a href=https://www.nytimes.com/2019/01/18/arts/design/robert-indiana-artist-legal-dispute.html?partner=rss&amp;emc=rss>His Art, Their Ideas: Did Robert Indiana Lose Control of His Work?</a>', 'GRAHAM BOWLEY', '2019-01-19 00:28:28', 'Private text messages entered as evidence in a legal dispute raise new questions about whether the artist fully designed his final works.'),
('<a href=https://www.nytimes.com/2019/01/18/arts/design/winter-antiques-armory-park-avenue.html?partner=rss&amp;emc=rss>art Review: Winter, but Whither Antiques?</a>', 'JASON FARAGO', '2019-01-18 19:15:47', 'Itâ€™s official. The 65th anniversary fair of arts, design and antiques at the Park Avenue Armory has a new name â€” and thereâ€™s a lot more to see than brown furniture.'),
('<a href=https://www.nytimes.com/2019/01/18/arts/ionesco-bam-high-maintenance.html?partner=rss&amp;emc=rss>This Week in Arts: Ionesco Gets a Mash-Up, â€˜High Maintenanceâ€™ Returns</a>', 'THE NEW YORK TIMES', '2019-01-18 14:00:06', 'The Paris-based company ThÃ©Ã¢tre de la Ville brings a blend of five Ionesco plays to the Brooklyn Academy of Music.'),
('<a href=https://www.nytimes.com/2019/01/18/arts/music/cleveland-orchestra-review-ariadne-strauss.html?partner=rss&amp;emc=rss>Criticâ€™s Pick: Review: â€˜Ariadne,â€™ the Most Operatic Opera, Bows in Cleveland</a>', 'ZACHARY WOOLFE', '2019-01-18 18:23:44', 'The elegant Cleveland Orchestra staged the Strauss work that reflects most sweetly and profoundly on its strange, irreplaceable art form.'),
('<a href=https://www.nytimes.com/2019/01/18/arts/music/gladys-knight-kaepernick-super-bowl.html?partner=rss&amp;emc=rss>Gladys Knight, Ahead of Super Bowl Anthem Date, Criticizes Colin Kaepernick</a>', 'SOPAN DEB', '2019-01-19 18:25:48', 'The renowned soul singer said in a statement to Variety that it was â€œunfortunate that our national anthem has been dragged into this debate.â€'),
('<a href=https://www.nytimes.com/2019/01/18/arts/music/playlist-maren-morris-cranberries-killers-kanye-west.html?partner=rss&amp;emc=rss>Playlist: The Playlist: Maren Morris Is a Little Bit Country, and 11 More New Songs</a>', 'JON PARELES, JON CARAMANICA and GIOVANNI RUSSONELLO', '2019-01-18 20:12:39', 'Hear tracks by the Cranberries, Tamaryn, Dawn, the Killers and others.'),
('<a href=https://www.nytimes.com/2019/01/18/arts/music/popcast-new-music-2019.html?partner=rss&amp;emc=rss>Popcast: Listening to Pop Musicâ€™s Class of 2019</a>', '', '2019-01-18 21:35:47', 'From British punk-rap to 1970s-influenced country to morbid electronic pop, a guide to new artists to watch.'),
('<a href=https://www.nytimes.com/2019/01/18/arts/music/r-kelly-manager-arrest.html?partner=rss&amp;emc=rss>R. Kellyâ€™s Manager Surrenders on Threat Charge</a>', 'ELIZABETH A. HARRIS', '2019-01-18 22:26:37', 'Henry James Mason was wanted on charges he threatened a father who accuses the R&amp;B singer of holding his daughter captive.'),
('<a href=https://www.nytimes.com/2019/01/18/arts/music/r-kelly-rca-sony.html?partner=rss&amp;emc=rss>R. Kelly Dropped by RCA Records After Documentary Furor</a>', 'BEN SISARIO', '2019-01-19 01:17:22', 'Kelly, once one of the biggest and most influential stars in pop music, has been dogged by accusations of sexual misconduct since the mid 1990s.'),
('<a href=https://www.nytimes.com/2019/01/18/arts/music/sabine-devieilhe-review-carnegie-hall.html?partner=rss&amp;emc=rss>Criticâ€™s Pick: Review: A Rising French Singer Makes a Delicately Brilliant Debut</a>', 'CORINNA da FONSECA-WOLLHEIM', '2019-01-18 18:32:30', 'The soprano Sabine Devieilhe offered an evening of first-rate chamber music for her first performance at Carnegie Hallâ€™s Weill Recital Hall.'),
('<a href=https://www.nytimes.com/2019/01/18/arts/television/brooklyn-nine-nine-stephanie-beatriz-rosa-diaz.html?partner=rss&amp;emc=rss>â€˜Brooklyn Nine-Nineâ€™ Is Back, and Stephanie Beatriz Is Making the Most of It</a>', 'ILANA KAPLAN', '2019-01-18 22:01:43', 'The sitcomâ€™s new life has offered new opportunities for growth for both the actress and her enigmatic character, the no-nonsense detective Rosa Diaz.'),
('<a href=https://www.nytimes.com/2019/01/18/arts/television/trevor-noah-cardi-b-trump-shutdown.html?partner=rss&amp;emc=rss>Best of Late Night: Trevor Noah Wonders if Cardi B Could End the Government Shutdown</a>', 'GIOVANNI RUSSONELLO', '2019-01-18 10:49:05', 'After the rapper posted a video of herself criticizing President Trump, Noah said: â€œHow cool would it be if Cardi B somehow ended the shutdown?â€'),
('<a href=https://www.nytimes.com/2019/01/18/arts/television/whats-on-tv-friday-fyre-and-grace-and-frankie.html?partner=rss&amp;emc=rss>Whatâ€™s on TV Friday: â€˜Fyreâ€™ and â€˜Grace and Frankieâ€™</a>', 'LAUREN MESSMAN', '2019-01-18 07:00:03', 'Stream Netflixâ€™s behind-the-scenes documentary on the unraveling of the Fyre Festival, and the Season 5 premiere of â€œGrace and Frankie.â€'),
('<a href=https://www.nytimes.com/2019/01/18/books/hot-books-cold-days-weather-snowstorm.html?partner=rss&amp;emc=rss>Further reading: Hot Books for Cold Days</a>', 'TINA JORDAN', '2019-01-18 17:17:57', 'Chilled to the bone? Warm up by dipping into one of these books â€” set in blazing hot summers, during heat waves, even in the desert.'),
('<a href=https://www.nytimes.com/2019/01/18/books/review/brenda-woods-unsung-hero-of-birdsong-usa.html?partner=rss&amp;emc=rss>Childrenâ€™s Books: When the Grown-Ups Stumble, These Kids Take Matters Into Their Own Hands</a>', 'KATHERINE MARSH', '2019-01-18 11:00:07', 'In new novels by Brenda Woods, Dan Gemeinhart, Alicia D. Williams and more, young protagonists learn the hard way that adults donâ€™t have all the answers.'),
('<a href=https://www.nytimes.com/2019/01/18/books/review/greer-hendricks-sarah-pekkanen-anonymous-girl.html?partner=rss&amp;emc=rss>Crime: Beware Strange Psychologists: The Latest in Crime Novels</a>', 'MARILYN STASIO', '2019-01-18 11:00:14', 'Marilyn Stasioâ€™s column travels from Manhattan to Australia to England to a forest that has hidden a dead body for 30 years.'),
('<a href=https://www.nytimes.com/2019/01/18/books/review/marie-benedict-only-woman-in-the-room-best-seller.html?partner=rss&amp;emc=rss>Inside the List: A Novelist Whoâ€™s Made a Career Writing About â€˜The Only Woman in the Roomâ€™</a>', 'EMILY EAKIN', '2019-01-18 17:54:49', 'Marie Benedict writes books inspired by women whose achievements have been overlooked by history, including Einsteinâ€™s first wife and the film star and inventor Hedy Lamarr.'),
('<a href=https://www.nytimes.com/2019/01/18/books/review/new-paperbacks.html?partner=rss&amp;emc=rss>New in Paperback: â€˜The Power,â€™ â€˜Fire and Furyâ€™</a>', 'JOUMANA KHATIB', '2019-01-18 11:00:05', 'Six new paperbacks to check out this week.'),
('<a href=https://www.nytimes.com/2019/01/18/books/review/preston-lauterbach-bluff-city.html?partner=rss&amp;emc=rss>Nonfiction: The Civil Rights Movement Photographer Who Was Also an F.B.I. Informant</a>', 'CHRISTOPHER BONANOS', '2019-01-18 11:00:12', 'â€œBluff City,â€ by Preston Lauterbach, delves into the double life of Ernest Withers, one of the eraâ€™s great documentarians.'),
('<a href=https://www.nytimes.com/2019/01/18/books/review/restoration-heights-wil-medearis.html?partner=rss&amp;emc=rss>Fiction: A Novel Thatâ€™s Part Noir Mystery, Part Love Letter to Bedford-Stuyvesant</a>', 'EMILY CULLITON', '2019-01-18 11:00:07', 'In Wil Medearisâ€™s debut, â€œRestoration Heights,â€ a young woman goes missing in a rapidly gentrifying New York neighborhood.'),
('<a href=https://www.nytimes.com/2019/01/18/books/review/shoshana-zuboff-age-of-surveillance-capitalism.html?partner=rss&amp;emc=rss>Nonfiction: How Tech Companies Manipulate Our Personal Data</a>', 'JACOB SILVERMAN', '2019-01-18 11:00:06', 'Shoshana Zuboffâ€™s â€œThe Age of Surveillance Capitalismâ€ looks at the new power of behemoths like Facebook and Google.'),
('<a href=https://www.nytimes.com/2019/01/18/books/review/william-davies-nervous-states.html?partner=rss&amp;emc=rss>The Shortlist: Three Authors Consider Contemporary Politics, Anxiously</a>', 'MARK GREEN', '2019-01-18 11:00:14', 'New books examine disturbing trends in modern American society.'),
('<a href=https://www.nytimes.com/2019/01/18/movies/anne-hathaway-serenity-the-hustle.html?partner=rss&amp;emc=rss>A Word With: Anne Hathaway Dares You Not to Look Away</a>', 'KATHRYN SHATTUCK', '2019-01-18 16:00:08', 'She talks about playing a femme fatale in â€œSerenity,â€ doing â€œThe Hustleâ€ with Rebel Wilson, stealing the show in â€œOceanâ€™s 8â€ and Hollywoodâ€™s echo chamber of men.'),
('<a href=https://www.nytimes.com/2019/01/18/movies/ghostbusters-trailer.html?partner=rss&amp;emc=rss>â€˜Ghostbusters,â€™ â€˜Spider-Man: Far From Homeâ€™: This Weekâ€™s Best Trailers</a>', 'BRUCE FRETTS', '2019-01-18 18:00:35', 'The movies wonâ€™t be coming for a while but clips for those fan favorites along with â€œJohn Wick 3,â€ â€œHigh Flying Birdâ€ and â€œLittle Woodsâ€ were strong too.'),
('<a href=https://www.nytimes.com/2019/01/18/movies/glass-unbreakable-split.html?partner=rss&amp;emc=rss>Ready for â€˜Glassâ€™? Hereâ€™s What to Remember From â€˜Unbreakableâ€™ and â€˜Splitâ€™</a>', 'JASON BAILEY', '2019-01-18 18:50:20', 'M. Night Shyamalanâ€™s â€œGlassâ€ completes an original superhero trilogy that began in 2000 with â€œUnbreakable.â€ Need a refresher? Weâ€™ve broken down the basics.'),
('<a href=https://www.nytimes.com/2019/01/18/movies/tatum-oneal-oscars.html?partner=rss&amp;emc=rss>The Carpetbagger: Oscars Rewind: A Charming Win Filled With Drama and Rancor</a>', 'BRUCE FRETTS', '2019-01-18 16:00:04', 'Tatum Oâ€™Neal, clad in a mini-tuxedo, won over viewers when she was named best supporting actress in 1974, but family woes and a tainted competitor clouded the victory.'),
('<a href=https://www.nytimes.com/2019/01/18/obituaries/walter-chandoha-dead.html?partner=rss&amp;emc=rss>Walter Chandoha, Photographer Whose Specialty Was Cats, Dies at 98</a>', 'RICHARD SANDOMIR', '2019-01-19 02:00:20', 'A stray kitten appropriately named Loco started Mr. Chandoha on an unexpected career. By the time he died, he had taken some 90,000 cat pictures.'),
('<a href=https://www.nytimes.com/2019/01/18/world/europe/spain-smiling-devil-statue.html?partner=rss&amp;emc=rss>Statue of a Friendly, Selfie-Taking Devil Divides a Town</a>', 'PALKO KARASZ', '2019-01-19 06:02:38', 'A Catholic association said that installing the statue in Segovia, Spain, would be â€œglorifying evil.â€ The artist says his work has nothing to do with religion.'),
('<a href=https://www.nytimes.com/2019/01/19/arts/11-of-our-best-weekend-reads.html?partner=rss&amp;emc=rss>11 of Our Best Weekend Reads</a>', 'KALY SOTO', '2019-01-19 11:00:06', 'The N.FL.â€™s obesity scourge. Who is MacKenzie Bezos? Portraits of the women of the 116th Congress. The gay penguins of Australia. And more.'),
('<a href=https://www.nytimes.com/2019/01/19/arts/television/whats-on-tv-saturday-brexit-fahrenheit-11-9.html?partner=rss&amp;emc=rss>Whatâ€™s on TV Saturday: â€˜Brexitâ€™ and â€˜Fahrenheit 11/9â€™</a>', 'MARGARET KRAMER', '2019-01-19 07:00:03', 'Delve into fraught British affairs with â€œBrexitâ€ on HBO. Or stick to domestic politics with the documentary â€œFahrenheit 11/9â€ on Amazon Prime.'),
('<a href=https://www.nytimes.com/2019/01/19/books/richard-gergel-unexampled-courage-j-waties-waring-isaac-woodard-truman-martin-luther-king.html?partner=rss&amp;emc=rss>Profile: A South Carolina Judge Writes a Book About a Predecessor, an Unsung Giant of ', 'RALPH BLUMENTHAL', '2019-01-19 12:00:05', 'When Richard Gergel was assigned to the same courtroom as J. Waties Waring, he vowed to ensure that, as Martin Luther King Jr. said, Waring would â€œlong be remembered.â€'),
('<a href=https://www.nytimes.com/slideshow/2019/01/18/style/martha-stewart-ryan-seacrest-kathy-bates-philanthropy.html?partner=rss&amp;emc=rss>Scene City: Martha Stewart, Ryan Seacrest and Kathy Bates on the Philanthropy Circuit</a>', 'DENNY LEE', '2019-01-18 19:20:33', 'Ceremonies were held by the Fashion Scholarship Fund, WebMD and the Ellis Island Honors Society.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitios`
--

CREATE TABLE `sitios` (
  `rss` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sitios`
--

INSERT INTO `sitios` (`rss`) VALUES
('http://rss.nytimes.com/services/xml/rss/nyt/Arts.xml'),
('http://rss.nytimes.com/services/xml/rss/nyt/Multimedia.xml');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`Titulo`);

--
-- Indices de la tabla `sitios`
--
ALTER TABLE `sitios`
  ADD PRIMARY KEY (`rss`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
